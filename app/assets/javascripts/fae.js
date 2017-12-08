$(document).on("ready turbolinks:load", function(){
    $("select#discount_kind").change(function(){
      change();
    });
    change();
  });
  
  function change(){
    let kind = $("select#discount_kind").val();
    let symbol = (kind == 1) ? "%" : "$";
    $("label.input-symbol--prefix[for='discount_value']").html(symbol);
  }