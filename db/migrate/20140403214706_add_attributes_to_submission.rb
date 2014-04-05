class AddAttributesToSubmission < ActiveRecord::Migration
  def change
    add_reference :submissions, :type
    add_reference :submissions, :transform
  end
end
