<?php
function ChargerClasse($classe)
{
    require $classe . ".Class.php";
}
spl_autoload_register("ChargerClasse");

class LieuDeStockage
{

    /*****************Attributs***************** */
    private $_numEntrepot;
    private $_zone;
    private $_ville;

    /*****************Accesseurs***************** */

    public function getNumEntrepot()
    {
        return $this->_numEntrepot;
    }

    public function setNumEntrepot($numEntrepot)
    {
        $this->_numEntrepot = $numEntrepot;
    }

    public function getZone()
    {
        return $this->_zone;
    }

    public function setZone($zone)
    {
        $this->_zone = $zone;
    }

    public function getVille()
    {
        return $this->_ville;
    }

    public function setVille($ville)
    {
        $this->_ville = $ville;
    }
    /*****************Constructeur***************** */

    public function __construct(array $options = [])
    {
        if (!empty($options)) // empty : renvoi vrai si le tableau est vide
        {
            $this->hydrate($options);
        }
    }
    public function hydrate($data)
    {
        foreach ($data as $key => $value) {
            $methode = "set" . ucfirst($key); //ucfirst met la 1ere lettre en majuscule
            if (is_callable(([$this, $methode]))) // is_callable verifie que la methode existe
            {
                $this->$methode($value);
            }
        }
    }

    /*****************Autres Méthodes***************** */

    /**
     * Transforme l'objet en chaine de caractères
     *
     * @return String
     */
    public function toString()
    {
        return "Num d'entrepot: ".$this->getNumEntrepot()."Zone: ".$this->getZone()."Ville: ".$this->getVille();
    }

    /**
     * Renvoi vrai si l'objet en paramètre est égal à l'objet appelant
     *
     * @param [type] $obj
     * @return bool
     */
    public function equalsTo($obj)
    {
        return true;
    }
    /**
     * Compare 2 objets
     * Renvoi 1 si le 1er est >
     *        0 si ils sont égaux
     *        -1 si le 1er est <
     *
     * @param [type] $obj1
     * @param [type] $obj2
     * @return void
     */
    public static function compareTo($obj1, $obj2)
    {
        return 0;
    }

}