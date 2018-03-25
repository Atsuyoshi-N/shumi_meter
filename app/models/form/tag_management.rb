class Form::TagManagement < TagManagement
  REGISTRABLE_ATTRIBUTES = %i(register user_id tag label order datatype)
  attr_accessor :register
end
