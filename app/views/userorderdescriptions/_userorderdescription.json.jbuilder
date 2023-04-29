json.extract! userorderdescription,
              :id,
              :userorder_id,
              :item_id,
              :quantity,
              :created_at,
              :updated_at
json.url userorderdescription_url(userorderdescription, format: :json)
