class ImageUploader < CarrierWave::Uploader::Base
    storage :file  # Use file storage (you can also use cloud storage options like Amazon S3)
  
    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  
    def extension_whitelist
      %w(jpg jpeg gif png)  # Allow only image files with these extensions
    end
  end
  