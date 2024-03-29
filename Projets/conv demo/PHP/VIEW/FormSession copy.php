<?php

$mode = $_GET['mode'];
if (isset($_GET['id'])) // si l'id est renseigné
{
    $idRecu = $_GET['id'];
    if ($idRecu != false) {
        $idChoisi = SessionsFormationsManager::findById($idRecu);
        $idForma = FormationsManager::findById($idChoisi->getIdFormation());
        $listePae = PeriodesStagesManager::getListBySession($idChoisi->getIdSessionFormation());
    }
}
?>
<section class = "colonne">
<?php
switch ($mode) {
    case "ajout":{
            echo '<form   action="index.php?page=ActionSession&mode=ajoutSes" method="POST">';
            break;
        }
    case "modif":{
            echo '<form  action="index.php?page=ActionSession&mode=modif&id=' . $idChoisi->getIdSessionFormation() . '" method="POST">
                    <input name="idSessionFormation"  value="' . $idChoisi->getIdSessionFormation() . '" type="hidden" />';
            break;
        }
    case "detail":{
            echo '
            <form >
                <input name="idSessionFormation"  value="' . $idChoisi->getIdSessionFormation() . '" type="hidden" />';
            break;
        }
}

?>
            <div class="centre info">
                <div><label for="numOffreFormation">Numéro d'offre: </label></div>
               <div class="grande"> <input id="numOffreFormation" name="numOffreFormation" <?php if ($mode != "ajout") { echo 'value="' . $idChoisi->getNumOffreFormation() . '"';}if ($mode == "delete" || $mode == "detail") { echo 'disabled'; } ?> pattern="\d{6}"/></div>
                <div class=" erreur"></div>
            </div>
            
            <div class = "centre info">
                <div><label for="idFormation">Formation: </label></div>
<?php 
$formations = FormationsManager::getList();
if ($mode === "ajout") {
    echo '      <div class="grande">
                    <select id="select" class="relatif" name="idFormation" pattern="\d" >
                        <option selected="selected" value="defaut" >----Choisissez une Formation----</option>';
    foreach ($formations as $uneFormation) 
    {
        echo '          <option value="' . $uneFormation->getIdFormation() . '">' . $uneFormation->getLibelleFormation() . '</option>';
    }
    echo '          </select>
                </div>
                <div class=" erreur"></div>
            </div>';
      echo '      <div class="info">
                    <div class="mini"></div>
                    <div class=" colonne" >
                        <label for="dateDebut">Date de début: </label>
                        <input class="dateDebut" type="date" name="dateDebut" value="" />
                        <div class=" erreur"></div>
                    </div>
                    <div class="mini"></div>
                    <div class=" colonne" >
                        <label for="dateFin">Date de fin : </label>
                        <input class="dateFin" type="date" name="dateFin" value=""  />
                        <div class=" erreur"></div>
                    </div>
                    <div class="mini"></div>
                </div>';
} else {
    if ($mode == "delete" || $mode == "detail") {
        echo '<div class="texteClair grande ">' . $idForma->getLibelleFormation() . '</div><div></div> </div>';
        $disabled = " disabled ";
    } else {/** mode modif */
        echo '<div class="grande"><select id="select" class="relatif" name="idFormation">';
        foreach ($formations as $uneFormation) {
            $sel = "";
            if ($uneFormation->getIdFormation() == $idForma->getIdFormation()) {
                $sel = " selected ";
            }
            echo '<option value="' . $uneFormation->getIdFormation() . '"  ' . $sel . '>' . $uneFormation->getLibelleFormation() . '</option>';
        }
        echo '</select></div>
        <div class=" erreur"></div>
        </div>';
        $disabled = " ";

    }
    $nbPae = count($listePae);
    echo '<input type="hidden" name="nbPae" value="' . $nbPae . '"/>
            <div class="espaceHor"></div>  ';
    for ($i = 0; $i < $nbPae; $i++) {
        echo '<div class="colonne info titreColonne" >
                <div class="info">
                    <div class="mini"></div>
                    <input type="hidden" name="idPeriode' . $i . '" value="' . $listePae[$i]->getIdPeriode() . '"/>
                    <input type="hidden" name="idSessionFormation" value="' . $listePae[$i]->getIdSessionFormation() . '"/>
                    <div class=" colonne" >
                        <label for="dateDebutPAE">Date de début de stage: </label>
                        <input class="dateDebutPAE" type="date" name="dateDebutPAE' . $i . '" value="' . $listePae[$i]->getDateDebutPAE() . '" ' . $disabled . ' />
                        <div class=" erreur"></div>
                    </div>
                    <div class="mini"></div>
                    <div class=" colonne" >
                        <label for="dateFinPAE">Date de fin de stage: </label>
                        <input class="dateFinPAE" type="date" name="dateFinPAE' . $i . '" value="' . $listePae[$i]->getDateFinPAE() . '" ' . $disabled . ' />
                        <div class=" erreur"></div>
                    </div>
                    <div class="mini"></div>
                </div>
                <div class="info" >
                    <div class="mini"></div>
                    <div class="colonne">
                        <label for="dateRapportSuivi">Date Rapport de suivi: </label>
                        <div class="mini"></div>
                        <input class="dateRapportSuivi" type="date" name="dateRapportSuivi' . $i . '" value="' . $listePae[$i]->getDateRapportSuivi() . '" ' . $disabled . ' />
                        <div class=" erreur"></div>
                    </div>
                    <div class="mini"></div>
                    <div></div>
                </div>
                <div class="info colonne" >
                    <div><label for="objectifPAE">Objectif de stage: </label></div>
                    <div class="">  
                        <div class="mini"></div>
                        <input type="textarea" class="grande" name="objectifPAE' . $i . '" value="' . $listePae[$i]->getObjectifPAE() . '" ' . $disabled . ' />
                        <div class="mini"></div>  
                    </div> 
                    <div class=" erreur"></div>
                </div>
            </div>';
    }

}

echo '<div class="espaceHor"></div>';

switch ($mode) {
    case "ajout":
        {
            echo '<div class="info"><div class="mini">
            </div><button id="valide" class="bouton" type="submit" disabled ><i class="fas fa-plus-circle"></i> Ajouter</button>
          ';
            break;
        }
    case "modif":
        {
            echo '<div class="info">
                    <div class="mini"></div>
                    <button id="valide" class="bouton" type="submit"><i class="fas fa-edit"></i> Modifier</button>
                    <div class="mini">
                    <button id="ajout1p" class="bouton" type="submit"><i class="fas fa-edit"></i> Ajout Periode</button>
                </div>';

            break;
        }
        case"detail":
            echo '<div class="info">';
            break;
}

?>

<div class="mini"></div>
<a href="Index.php?page=ListeSessions"><button class="bouton"><i class="far fa-arrow-alt-circle-left"></i>  &nbsp Retour</button></a>
<div class="mini"></div></div>
      </form>
</section>
