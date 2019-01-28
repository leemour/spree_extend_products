Spree::Product.class_eval do
  alias_method :original_brand, :brand
  remove_method :brand

  belongs_to :brand, class_name: 'Spree::Brand'
  belongs_to :author, -> { where(role: :author) },
    class_name: 'Spree::Author'
  belongs_to :illustrator, -> { where(role: :illustrator) },
    class_name: 'Spree::Author'
  belongs_to :collection, class_name: 'Spree::Collection', counter_cache: true,
    optional: true

  # validates :brand, presence: true

  scope :by_brand, -> brand_id {
    where brand_id: brand_id
  }
  scope :with_enabled_brands, -> {
    joins(:brand).where(spree_brands: { status: :enabled })
  }

  scope :by_any_author, -> author_id {
    where author_id: author_id
  }
  scope :by_author, -> author_id {
    joins(:author)
    .where(
      author_id: author_id,
      spree_authors: { role: :author }
    )
  }
  scope :by_illustrator, -> illustrator_id {
    joins(:author)
    .where(
      author_id: author_id,
      spree_authors: { role: :illustrator }
    )
  }
  scope :with_enabled_authors, -> {
    joins(:author).where(spree_authors: { status: :enabled })
  }

  %i[
    country
    country_id
    parts_count
    material
    language
    gtin
  ].each do |method_name|
    delegate method_name, :"#{method_name}=", to: :find_or_build_master
  end

end
