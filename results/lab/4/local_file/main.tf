provider "local" {}

## V1
# module "file_generator" {
#   source       = "../../../modules/file_generator"
#   file_name    = "example.txt"
#   file_content = "Hello, Terraform!"
# }

# # V2
# module "file_generator" {
#   source = "../../../modules/file_generator"
#   files = {
#     "Example1.txt" = "Hello from file 1"
#     "EXAMPLE2.txt" = "Hello from file 2"
#     "example3.txt" = "Hello from file 3"
#   }
# }

# # V4
# module "file_generator" {
#   source = "../../../modules/file_generator"
#   files = {
#     "Example1" = {
#         content   = "Hello from file 1"
#         extension = ".txt"
#     }
#     "EXAMPLE2" = {
#         content   = "Hello from file 2"
#         extension = ".txt"
#     }
#     "example3" = {
#         content   = "Hello from file 3"
#         extension = ".txt"
#     }
#   }
# }

# V8
module "file_generator2" {
  source = "../../../modules/file_generator"
  files = {
    "Example1" = {
      content   = "Hello from file 1"
      extension = ".txt"
    }
    "EXAMPLE2" = {
      content   = "Hello from file 2"
      extension = ".txt"
    }
    "example3" = {
      content   = "Hello from file 3"
      extension = ".txt"
    }
  }
}

moved {
  from = module.file_generator.local_file.this["Example1"]
  to   = module.file_generator2.local_file.this["Example1"]
}

moved {
  from = module.file_generator.local_file.this["example3"]
  to   = module.file_generator2.local_file.this["example3"]
}
