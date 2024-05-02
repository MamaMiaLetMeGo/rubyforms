class FileUploader < CarrierWave::Uploader::Base
    # Include CarrierWave storage modules
    storage :file  # Use file storage (you can also use cloud storage options like Amazon S3)
  
    # Override the directory where uploaded files will be stored.
    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  
    # Optionally, you can add processing, such as image resizing or manipulation
    # For example, to resize images to a maximum width of 500 pixels:
    # process resize_to_limit: [500, nil]
  
    # Add a default URL if the uploaded file is missing
    def default_url(*args)
      # For example, "/images/fallback/#{model.class.to_s.underscore}_#{mounted_as}_default.png"
    end
  
    # Add allowed file extensions
    def extension_whitelist
      %w(pdf doc docx)  # Allow only PDF and Word document files
    end
  end