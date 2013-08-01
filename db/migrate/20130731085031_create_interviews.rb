class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :candidate_name
      t.decimal :total_exp
      t.string :inteviewer_name
      t.datetime :interview_date
      t.string :interview_status

      t.timestamps
    end
  end
end
