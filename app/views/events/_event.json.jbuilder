json.extract! event, :id, :start_date, :Attendance, :stripe_customer_id, :created_at, :updated_at
json.url event_url(event, format: :json)
