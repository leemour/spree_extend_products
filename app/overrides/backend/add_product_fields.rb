Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'extend_admin_product_form_left',
  # insert_bottom: "[data-hook='admin_product_form_additional_fields']",
  insert_after: "[data-hook='admin_product_form_description']",
  partial: 'overrides/backend/products/extend_fields',
  disabled: false,
  # original: '5baa3517a8d46478d404e338ce41a65bd7626c88'
)
