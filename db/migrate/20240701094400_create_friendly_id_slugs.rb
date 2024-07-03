MIGRATION_CLASS =
  if ActiveRecord::VERSION::MAJOR >= 5
    ActiveRecord::Migration["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"]
  else
    ActiveRecord::Migration
  end

class CreateFriendlyIdSlugs < ActiveRecord::Migration[6.1]
  def change
    create_table :new_table_name do |t|
      # описание полей таблицы
      t.string :slug
      t.string :sluggable_type
      t.integer :sluggable_id
      t.string :scope

      t.timestamps
    end

    add_index :new_table_name, :slug, unique: true
    add_index :new_table_name, [:sluggable_type, :sluggable_id], name: 'index_new_table_name_on_sluggable'
  end
end

