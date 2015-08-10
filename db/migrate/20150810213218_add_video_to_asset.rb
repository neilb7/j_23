class AddVideoToAsset < ActiveRecord::Migration
  def change
    add_column :assets, :video_uid,  :string
  end
end
