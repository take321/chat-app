class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string    :content
      t.references  :room, foreign: true
      t.references  :user, foreign: true
      t.timestamps
    end
  end
end
