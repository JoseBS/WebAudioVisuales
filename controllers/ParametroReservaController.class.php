<?php
require_once($_SERVER['DOCUMENT_ROOT'].'/WebAudioVisuales/requires.class.php');
$requires = new Requires();
$requires->importDAOParametroReserva();
$requires -> importParametroReserva();
$requires -> importUsuario();

class ParametroReservaController
{
    private $daoParametroReserva;
    public function __construct()
    {
        $this->daoParametroReserva = new DAOParametroReserva();
    }

    public function getParametroReservaById($parametroReserva)
        {

        	return $this->daoParametroReserva->getParametroReservaById($parametroReserva);
        }

        public function getParametroReservaByEstado($parametroReserva)
            {
            	return$this->daoParametroReserva->getParametroReservaByEstado($parametroReserva);
            }

           public function insertParametroReserva($parametroReserva)
            {
            	return $this->daoParametroReserva->insertParametroReserva($parametroReserva);
            }

            public function deleteParametroReserva($parametroReserva,$usuario)
           {
            return $this->daoParametroReserva->deleteParametroReserva($parametroReserva,$usuario);
           }

           public function updateParametroReserva($parametroReserva,$usuario)
          {
          	$this->daoParametroReserva->updateParametroReserva($parametroReserva,$usuario);
          }

          public function construirParametroReserva($resulset)
          {
          	return $this->daoParametroReserva->construirParametroReserva($resulset);
          }
          public function getAllParametrosReserva()
          {
            return $this->daoParametroReserva->getAllParametrosReserva();

          }
          public function test(){
            echo "test";
          }

}
    /*************************************************************************
    * Manejadores de Eventos desde la vista
    *************************************************************************/

    /** Manejador del evento Eliminar parámetro desde la vista */




?>
