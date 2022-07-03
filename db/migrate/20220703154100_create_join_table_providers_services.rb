class CreateJoinTableProvidersServices < ActiveRecord::Migration[7.0]
  def change
    create_join_table :providers, :services do |t|
      # t.index [:provider_id, :service_id]
      # t.index [:service_id, :provider_id]
    end
  end
end
