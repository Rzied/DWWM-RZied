<?php

class EntreprisesManager 
{
	public static function add(Entreprises $obj)
	{
 		$db=DbConnect::getDb();
		$q=$db->prepare("INSERT INTO Entreprises (raisonSociale,statutJuridiqueEnt,adresseEnt,numSiretEnt,indexSiret,telEnt,assureurEnt,numSocietaire,nomRepresentant,prenomRepresentant,fctRepresentant,telRepresentant,mailRepresentant,idVille) VALUES (:raisonSociale,:statutJuridiqueEnt,:adresseEnt,:numSiretEnt,:indexSiret,:telEnt,:assureurEnt,:numSocietaire,:nomRepresentant,:prenomRepresentant,:fctRepresentant,:telRepresentant,:mailRepresentant,:idVille)");
		$q->bindValue(":raisonSociale", $obj->getRaisonSociale());
		$q->bindValue(":statutJuridiqueEnt", $obj->getStatutJuridiqueEnt());
		$q->bindValue(":adresseEnt", $obj->getAdresseEnt());
		$q->bindValue(":numSiretEnt", $obj->getNumSiretEnt());
		$q->bindValue(":indexSiret", $obj->getIndexSiret());
		$q->bindValue(":telEnt", $obj->getTelEnt());
		$q->bindValue(":assureurEnt", $obj->getAssureurEnt());
		$q->bindValue(":numSocietaire", $obj->getNumSocietaire());
		$q->bindValue(":nomRepresentant", $obj->getNomRepresentant());
		$q->bindValue(":prenomRepresentant", $obj->getPrenomRepresentant());
		$q->bindValue(":fctRepresentant", $obj->getFctRepresentant());
		$q->bindValue(":telRepresentant", $obj->getTelRepresentant());
		$q->bindValue(":mailRepresentant", $obj->getMailRepresentant());
		$q->bindValue(":idVille", $obj->getIdVille());
		$q->execute();
	}

	public static function update(Entreprises $obj)
	{
 		$db=DbConnect::getDb();
		$q=$db->prepare("UPDATE Entreprises SET idEntreprise=:idEntreprise,raisonSociale=:raisonSociale,statutJuridiqueEnt=:statutJuridiqueEnt,adresseEnt=:adresseEnt,numSiretEnt=:numSiretEnt,indexSiret=:indexSiret,telEnt=:telEnt,assureurEnt=:assureurEnt,numSocietaire=:numSocietaire,nomRepresentant=:nomRepresentant,prenomRepresentant=:prenomRepresentant,fctRepresentant=:fctRepresentant,telRepresentant=:telRepresentant,mailRepresentant=:mailRepresentant,idVille=:idVille WHERE idEntreprise=:idEntreprise");
		$q->bindValue(":idEntreprise", $obj->getIdEntreprise());
		$q->bindValue(":raisonSociale", $obj->getRaisonSociale());
		$q->bindValue(":statutJuridiqueEnt", $obj->getStatutJuridiqueEnt());
		$q->bindValue(":adresseEnt", $obj->getAdresseEnt());
		$q->bindValue(":numSiretEnt", $obj->getNumSiretEnt());
		$q->bindValue(":indexSiret", $obj->getIndexSiret());
		$q->bindValue(":telEnt", $obj->getTelEnt());
		$q->bindValue(":assureurEnt", $obj->getAssureurEnt());
		$q->bindValue(":numSocietaire", $obj->getNumSocietaire());
		$q->bindValue(":nomRepresentant", $obj->getNomRepresentant());
		$q->bindValue(":prenomRepresentant", $obj->getPrenomRepresentant());
		$q->bindValue(":fctRepresentant", $obj->getFctRepresentant());
		$q->bindValue(":telRepresentant", $obj->getTelRepresentant());
		$q->bindValue(":mailRepresentant", $obj->getMailRepresentant());
		$q->bindValue(":idVille", $obj->getIdVille());
		$q->execute();
	}
	public static function delete(Entreprises $obj)
	{
 		$db=DbConnect::getDb();
		$db->exec("DELETE FROM Entreprises WHERE idEntreprise=" .$obj->getIdEntreprise());
	}
	public static function findById($id)
	{
 		$db=DbConnect::getDb();
		$id = (int) $id;
		$q=$db->query("SELECT * FROM Entreprises WHERE idEntreprise =".$id);
		$results = $q->fetch(PDO::FETCH_ASSOC);
		if($results != false)
		{
			return new Entreprises($results);
		}
		else
		{
			return false;
		}
	}
	public static function getList()
	{
 		$db=DbConnect::getDb();
		$liste = [];
		$q = $db->query("SELECT * FROM Entreprises");
		while($donnees = $q->fetch(PDO::FETCH_ASSOC))
		{
			if($donnees != false)
			{
				$liste[] = new Entreprises($donnees);
			}
		}
		return $liste;
	}
}