class Operation < ActiveRecord::Base
  belongs_to :worker
  belongs_to :item




#devuelve las últimas 5 operaciones
scope :last_five, -> {order(id: :desc).limit(5)}  

#Crear un scope que nos devuelva todas las operaciones hechas el último día

scope :last_day, -> {where("Date(created_at) = ?", Date.current)}  
	


#callbacks
after_destroy :write_to_record



#methods
# "La operación con referencia a la pieza
# (especificar Nº de serie) y al usuario (especificar id y nombre del usuario) ha sido borrada
protected

def write_to_record
	Record.create(message: "La operación con referencia a la pieza #{serial} y al usuario #{worker.id.name} ha sido borrada")
end 



end
