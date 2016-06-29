class Item < ActiveRecord::Base

	has_one :operation, dependent: :destroy






	#devuelva todas las piezas de inventario del primer operador registrado
		scope :first_worker, -> {where(worker_id: Worker.first.id)}  


	#Crear un scope que nos devuelva todas las piezas de inventario que no hayan sido utilizadas en alguna operación

		scope :no_operation, -> {where(operation_id: nil)} 



#callbacks
after_destroy :write_to_record



#methods
#  "La pieza con serial (especificar Nº de
# serie) ha sido borrada"
protected

def write_to_record
	Record.create(message: "La pieza con serial #{serial} ha sido borrada")
end 



end
