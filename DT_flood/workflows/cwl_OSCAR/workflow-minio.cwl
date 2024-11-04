#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow

requirements:
  InlineJavascriptRequirement: {}

inputs:
  oscarScript:
    type: File?
  endpoint:
    type: string
  user:
    type: string
  password:
    type: string
  service:
    type: string
  filename:
    type: File?
  oscarService:
    type: Directory?
outputs:
    fa_database_out:
        type: Directory
        
steps:
  oscar:
    run: oscar_all/oscar.cwl
    in:
      oscarScript: oscarScript
      endpoint: endpoint
      user: user
      password: password
      service: service
      filename: filename
      oscarService: oscarService
    out: [fa_database_out]