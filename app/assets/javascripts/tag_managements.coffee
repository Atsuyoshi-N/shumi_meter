

$ ->
  $(document).on 'turbolinks:load', ->
    $('#addbtn').on 'click', -> 
      items = $("#add-form-body").children()
      number_of_items = items.length
      item = "<tr class=\"item\">" + items.html().toString() + "</tr>"
      item = item.replace(/\[0\]/g, '['+number_of_items.toString()+']')
      item = item.replace(/_0_/g, '_'+number_of_items.toString()+'_')
      $("#add-form-body").append(item)

  $('#addbtn').on 'click', ->
    tag_value = $("#tag-input-form").val()
    $("[id=hidden-tag-field]").val(tag_value)

  # $('#tag-form-submit').submit -> 
  #   tag_value = $("#tag-input-form").val()
  #   $("[id=hidden-tag-field]").val(tag_value)

  $('#tag-input-form').on 'blur', ->
    tag_value = $("#tag-input-form").val()
    $("[id=hidden-tag-field]").val(tag_value)
    
