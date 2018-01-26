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

ActiveRecord::Schema.define(version: 20180126221658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name"
    t.string "record_gid"
    t.integer "blob_id"
    t.time "created_at"
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_gid", "blob_id"], name: "index_active_storage_attachments_on_record_gid_and_blob_id", unique: true
    t.index ["record_gid", "name"], name: "index_active_storage_attachments_on_record_gid_and_name"
    t.index ["record_gid"], name: "index_active_storage_attachments_on_record_gid"
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key"
    t.string "filename"
    t.string "content_type"
    t.text "metadata"
    t.integer "byte_size"
    t.string "checksum"
    t.time "created_at"
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "environments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.boolean "docker"
    t.boolean "rancher"
    t.string "architecture_file_name"
    t.string "architecture_content_type"
    t.integer "architecture_file_size"
    t.datetime "architecture_updated_at"
    t.string "url"
    t.text "notes"
    t.string "dbhost"
    t.string "dbuser"
    t.string "dbname"
    t.string "dbport"
    t.index ["project_id"], name: "index_environments_on_project_id"
  end

  create_table "load_balancers", force: :cascade do |t|
    t.string "ip"
    t.string "brand"
    t.string "applicability"
    t.bigint "environment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_load_balancers_on_environment_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servers", force: :cascade do |t|
    t.string "hostname"
    t.string "ip"
    t.integer "cpu"
    t.integer "memory"
    t.integer "storage"
    t.text "location"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "operating_system"
    t.bigint "environment_id"
    t.index ["environment_id"], name: "index_servers_on_environment_id"
  end

  add_foreign_key "environments", "projects"
  add_foreign_key "load_balancers", "environments"
  add_foreign_key "servers", "environments"
end
