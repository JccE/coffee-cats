class CreateEvents < ActiveRecord::Migration[5.1]
  def change
  	create_table :events do |t|
      t.string  :meow
      t.string  :motion_detection

  		t.timestamps
  	end
  end
end
