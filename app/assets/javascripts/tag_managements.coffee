
$ ->
  $(document).on 'turbolinks:load', ->
    $('#addbtn').on 'click', ->
      items = $("#add-form-body").children()
      number_of_items = items.length
      item = "<tr class=\"item\">" + items.html().toString() + "</tr>"
      console.log(item)
      console.log(number_of_items)
      console.log(typeof item)
      item = item.replace(/\[0\]/g, '['+number_of_items.toString()+']')
      item = item.replace(/_0_/g, '_'+number_of_items.toString()+'_')
      # item.replace(/"class"/g, "id")
      $("#add-form-body").append(item)
      console.log(item)


