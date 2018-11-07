Deface::Override.new(
  virtual_path: 'spree/admin/products/new',
  name: 'extend_admin_products_new',
  insert_after: "[data-hook='new_product_sku']",
  partial: 'overrides/backend/products/add_new_fields',
  disabled: false,
  # original: '5baa3517a8d46478d404e338ce41a65bd7626c88'
)
