<?php

/*require_once($_SERVER['DOCUMENT_ROOT'].'/WebAudioVisuales/requires.class.php');
$requires = new Requires();
$requires -> getRequireTipoUsuario();
*/

class Hora{
    private $idHora;
    private $hora;

    public function __construct(){

    }

    public function getIdHora (){
        return $this->idHora;
    }

    public function setIdHora($idHora){
        $this->idHora = $idHora;
    }

    public function getHora(){
        return $this->Hora;
    }

    public function setHora($Hora){
        $this->Hora = $Hora;
    }
}
 ?>
