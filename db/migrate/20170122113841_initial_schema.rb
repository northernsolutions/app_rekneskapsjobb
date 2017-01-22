class InitialSchema < ActiveRecord::Migration[5.0]
  def change

    create_table :jobcategory do |t|
      t.string :name
    end

    create_table :jobtype do |t|
      t.string :name
    end

    create_table :employers do |t|
      t.boolean :employerprofile
      t.string :name
      t.text :about
      t.text :vision
    end

    create_table :jobs do |t|
      t.boolean :exclusive
      t.string :title
      t.text :content
      t.string :location
      t.timestamps
    end

    add_reference :jobs, :jobcategory, index: true
    add_reference :jobs, :jobtype, index: true
    add_reference :jobs, :employer, index: true

  end
end
