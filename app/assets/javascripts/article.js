$(function(){
 $('#title').keyup(function(){
    title = $(this).val();
    $('#title-result').html(title)
  });
  $('#editor').keyup(function(){
    editor = $(this).val();
    editor = marked(editor);
    $('#result').html(editor);
  });
});
