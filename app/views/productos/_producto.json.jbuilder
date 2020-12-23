json.extract! producto, :id, :nombre, :minimo, :precio, :estado, :marca_id, :tipo_id, :created_at, :updated_at
json.url producto_url(producto, format: :json)
