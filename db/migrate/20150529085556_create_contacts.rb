class CreateContacts < ActiveRecord::Migration
  def change
  	create_table :contacts do |t|
  		t.string :nom
  		t.string :prenom
  		t.string :email
  		t.string :commentaire
  	end	
  end
end
