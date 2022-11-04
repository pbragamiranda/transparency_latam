# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_13_154547) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_evaluations", force: :cascade do |t|
    t.bigint "evaluation_id", null: false
    t.integer "number_institutions"
    t.decimal "declared_compliance"
    t.decimal "calculated_complicance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluation_id"], name: "index_active_evaluations_on_evaluation_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blazer_audits", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "query_id"
    t.text "statement"
    t.string "data_source"
    t.datetime "created_at"
    t.index ["query_id"], name: "index_blazer_audits_on_query_id"
    t.index ["user_id"], name: "index_blazer_audits_on_user_id"
  end

  create_table "blazer_checks", force: :cascade do |t|
    t.bigint "creator_id"
    t.bigint "query_id"
    t.string "state"
    t.string "schedule"
    t.text "emails"
    t.text "slack_channels"
    t.string "check_type"
    t.text "message"
    t.datetime "last_run_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_checks_on_creator_id"
    t.index ["query_id"], name: "index_blazer_checks_on_query_id"
  end

  create_table "blazer_dashboard_queries", force: :cascade do |t|
    t.bigint "dashboard_id"
    t.bigint "query_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dashboard_id"], name: "index_blazer_dashboard_queries_on_dashboard_id"
    t.index ["query_id"], name: "index_blazer_dashboard_queries_on_query_id"
  end

  create_table "blazer_dashboards", force: :cascade do |t|
    t.bigint "creator_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_dashboards_on_creator_id"
  end

  create_table "blazer_queries", force: :cascade do |t|
    t.bigint "creator_id"
    t.string "name"
    t.text "description"
    t.text "statement"
    t.string "data_source"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_queries_on_creator_id"
  end

  create_table "branches", force: :cascade do |t|
    t.string "name_en"
    t.string "name_es"
    t.string "name_pt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluation_branches", force: :cascade do |t|
    t.bigint "evaluation_id", null: false
    t.bigint "branch_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_evaluation_branches_on_branch_id"
    t.index ["evaluation_id"], name: "index_evaluation_branches_on_evaluation_id"
  end

  create_table "evaluation_countries", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.bigint "evaluation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_evaluation_countries_on_country_id"
    t.index ["evaluation_id"], name: "index_evaluation_countries_on_evaluation_id"
  end

  create_table "evaluations", force: :cascade do |t|
    t.bigint "report_id", null: false
    t.integer "year"
    t.string "level_government"
    t.string "jurisdiction"
    t.string "title_entity"
    t.string "evaluation_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_evaluations_on_report_id"
  end

  create_table "passive_evaluations", force: :cascade do |t|
    t.bigint "evaluation_id", null: false
    t.integer "number_evaluated_entities"
    t.integer "number_responses"
    t.integer "number_requests"
    t.integer "number_responses_on_time"
    t.integer "number_partial_responses"
    t.integer "denials"
    t.integer "denials_mute"
    t.integer "appeals"
    t.integer "n_inst_pt"
    t.decimal "declared_response_rate"
    t.decimal "calculated_response_rate"
    t.integer "number_time_extension_requests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluation_id"], name: "index_passive_evaluations_on_evaluation_id"
  end

  create_table "report_authors", force: :cascade do |t|
    t.bigint "report_id", null: false
    t.bigint "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_report_authors_on_author_id"
    t.index ["report_id"], name: "index_report_authors_on_report_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "original_title"
    t.string "title_en"
    t.string "title_es"
    t.string "title_pt"
    t.integer "year"
    t.string "theme"
    t.string "region", default: "Latin American"
    t.string "original_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_evaluations", "evaluations"
  add_foreign_key "evaluation_branches", "branches"
  add_foreign_key "evaluation_branches", "evaluations"
  add_foreign_key "evaluation_countries", "countries"
  add_foreign_key "evaluation_countries", "evaluations"
  add_foreign_key "evaluations", "reports"
  add_foreign_key "passive_evaluations", "evaluations"
  add_foreign_key "report_authors", "authors"
  add_foreign_key "report_authors", "reports"
end
