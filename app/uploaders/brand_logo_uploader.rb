module Spree
  class BrandLogoUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick
    include CarrierWave::ImageOptimizer
    include CarrierWave::BombShelter

    def store_dir
      if Rails.env.test? || Rails.env.cucumber?
        "uploads/test/#{model.class.to_s.pluralize.underscore}/#{mounted_as}/#{model.id}"
      else
        "uploads/#{model.class.to_s.pluralize.underscore}/#{mounted_as}/#{model.id}"
      end
    end

    version :mini do
      process :resize_to_fill => [70, 70]
      process optimize: [{ quiet: true, level: 2, quality: 80 }]
    end

    version :small do
      process :resize_to_fill => [210, 110]
      process optimize: [{ quiet: true, level: 2, quality: 80 }]
    end

    version :medium do
      process :resize_to_fill => [420, 238]
      process optimize: [{ quiet: true, level: 2, quality: 80 }]
    end

    # Provide a default URL as a default if there hasn't been a file uploaded:
    # def default_url(*args)
    #   # For Rails 3.1+ asset pipeline compatibility:
    #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
    #
    #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
    # end

    # Process files as they are uploaded:
    # process scale: [200, 300]
    #
    # def scale(width, height)
    #   # do something
    # end

    # Create different versions of your uploaded files:
    # version :thumb do
    #   process resize_to_fit: [50, 50]
    # end

    # Add a white list of extensions which are allowed to be uploaded.
    # For images you might use something like this:
    # def extension_whitelist
    #   %w(jpg jpeg gif png)
    # end

    # Override the filename of the uploaded files:
    # Avoid using model.id or version_name here, see uploader/store.rb for details.
    # def filename
    #   "something.jpg" if original_filename
    # end

    def extension_whitelist
      %w(jpg jpeg png)
    end

    def image_type_whitelist
      %i(jpg jpeg png)
    end

    def content_type_whitelist
      /image\//
    end

    def max_pixel_dimensions
      [5_000, 5_000]
    end

    def size_range
      1..2.megabytes
    end
  end
end
