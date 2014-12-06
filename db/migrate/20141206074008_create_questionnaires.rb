class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string  :company
      t.string  :invested
      t.string  :age
      t.string  :visits_desktop
      t.string  :visits_mobile
      t.text    :features_visited_1
      t.text    :features_visited_2
      t.text    :features_visited_3
      t.text    :features_visited_4
      t.text    :features_visited_5
      t.text    :delightful_features_1
      t.text    :delightful_features_2
      t.text    :delightful_features_3
      t.text    :delightful_features_4
      t.text    :delightful_features_5
      t.text    :annoying_features_1
      t.text    :annoying_features_2
      t.text    :annoying_features_3
      t.text    :annoying_features_4
      t.text    :annoying_features_5
      t.text    :feature_requests
      t.text    :open_feedback

      t.timestamps
    end
  end
end
