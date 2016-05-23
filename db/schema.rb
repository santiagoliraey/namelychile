# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "departments", force: :cascade do |t|
    t.text    "name"
    t.integer "division_id"
  end

  add_index "departments", ["division_id"], name: "index_departments_on_division_id"

  create_table "divisions", force: :cascade do |t|
    t.text "name"
  end

  create_table "employees", force: :cascade do |t|
    t.text    "name"
    t.integer "ssn"
    t.date    "birth"
    t.text    "image_url"
  end

  create_table "jobs", force: :cascade do |t|
    t.text    "name"
    t.integer "enroll"
    t.integer "division_id"
    t.integer "department_id"
    t.text    "employee_id"
    t.text    "healthplan"
    t.integer "grosswage"
  end

  add_index "jobs", ["department_id"], name: "index_jobs_on_department_id"
  add_index "jobs", ["division_id"], name: "index_jobs_on_division_id"
  add_index "jobs", ["employee_id"], name: "index_jobs_on_employee_id"

end
