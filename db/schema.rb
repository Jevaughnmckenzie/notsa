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

ActiveRecord::Schema.define(version: 20171220230320) do

  create_table "invoices", force: :cascade do |t|
    t.float "amount_due"
    t.string "due_date"
    t.boolean "overdue?", default: false
    t.boolean "paid?", default: false
    t.string "payment_method"
    t.integer "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_invoices_on_tenant_id"
  end

  create_table "maintenance_requests", force: :cascade do |t|
    t.string "subject"
    t.text "description"
    t.boolean "completed?"
    t.datetime "completed_at"
    t.integer "tenant_id"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_maintenance_requests_on_property_id"
    t.index ["tenant_id"], name: "index_maintenance_requests_on_tenant_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "subject"
    t.text "description"
    t.string "meeting_time"
    t.integer "property_manager_id"
    t.integer "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_manager_id"], name: "index_meetings_on_property_manager_id"
    t.index ["tenant_id"], name: "index_meetings_on_tenant_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.integer "rooms"
    t.integer "available_rooms"
    t.integer "property_manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_manager_id"], name: "index_properties_on_property_manager_id"
  end

  create_table "property_managers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_tenants_on_property_id"
  end

end
