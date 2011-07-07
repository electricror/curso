class AddToUserValues < ActiveRecord::Migration
  def self.up
    add_column :users, :nome, :string
    add_column :users, :sobrenome, :string
    add_column :users, :cpf, :string
    add_column :users, :tel1, :string
    add_column :users, :tel2, :string
    add_column :users, :cel1, :string
    add_column :users, :cel2, :string
    add_column :users, :datanascimento, :date

  end

  def self.down
    remove_column :users, :nome, :string
    remove_column :users, :sobrenome, :string
    remove_column :users, :cpf, :string
    remove_column :users, :tel1, :string
    remove_column :users, :tel2, :string
    remove_column :users, :cel1, :string
    remove_column :users, :cel2, :string
    remove_column :users, :datanascimento, :date
  end
end

