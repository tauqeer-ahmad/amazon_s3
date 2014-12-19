# AmazonS3

Direct upload and download from Amazon S3.

Tested on rails 3.2.13 and ruby version 2.1.0
## Installation

Add this line to your application's Gemfile:

    gem 'amazon_s3'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install amazon_s3

## Usage

    AmazonS3::Handler.new("secret_access_key", "access_key_id", "bucket_name", "bucket_path")

e.g

    bucket name = "development"
    bucket_path = "files/images"

    handler = AmazonS3::Handler.new("secret_access_key", "access_key_id", bucket_name, bucket_path)

This will look into development/files/images folder on s3.  

If you want to upload to bucket only then skip bucket_path parameter   
    bucket name = "development"

    handler = AmazonS3::Handler.new("secret_access_key", "access_key_id", bucket_name) 
    

    handler.upload_file('file_path') 
    => uploaded file name (random hex)

    hander.donwnload_file(file_name)
    => file from s3

file_name is the file name of file on s3 retruned after download_file method.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/amazon_s3/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
