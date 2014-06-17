class CreateMovieActors < ActiveRecord::Migration
  def change
    create_table :movie_actors do |t|
      t.integer :movie_id
      t.integer :actor_id
      t.string :role

      t.timestamps
    end
  end
end
