moved {
  from = module.file_generator.local_file.this["Example2"]
  to   = module.file_generator2.local_file.this["Example2"]
}

moved {
  from = module.file_generator.local_file.this["example1"]
  to   = module.file_generator2.local_file.this["example1"]
}
