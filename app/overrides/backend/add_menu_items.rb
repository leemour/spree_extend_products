Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'add_authors_brands_admin_menu_items',
  insert_bottom: '#main-sidebar',
  partial: 'overrides/backend/shared/authors_brands_menu_items',
  disabled: false,
  # original: '5baa3517a8d46478d404e338ce41a65bd7626c88'
)
