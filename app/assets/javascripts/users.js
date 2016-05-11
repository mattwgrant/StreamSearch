// $(document).ready(function(){
//   $(".showSpotAlbums").click(function(){
//     $('html, body').animate({scrollTop : 1000},500);
//       return false;
//   });
// });



$(document).on('click', '.rhapSongDisplay', function setAlbum(album) {
  $('.showRhapAlbum').click(function(){
    $('.showRhapAlbum').not(this).hide();
    $('#' + album).show();
  });
});

$(document).on('click', '.spotSongDisplay', function setAlbum(album) {
  $('.showSpotAlbum').click(function(){
    $('.showSpotAlbum').not(this).hide();
    $('#' + album).show();
  });
});

$(document).on('click', '.appleSongDisplay', function setAlbum(album) {
  $('.showAppleAlbum').click(function(){
    $('.showAppleAlbum').not(this).hide();
    $('#' + album).show();
  });
});

$(document).on('click', '.showSpotAlbums', function setArtist(artist) {
  $('.artistSpotAlbum').click(function(){
    $('.artistSpotAlbum').not(this).hide();
    $('#' + artist).show();
  });
  $('.spotAlbums').click(function(){
    $('.spotAlbums').this.show();
  });
  // $(".showSpotAlbums").click(function(){
  $('html, body').animate({scrollTop : 1000},500);
      return false;
  // });
});

$(document).on('click', '.showAppleAlbums', function setArtist(artist) {
  $('.artistAppleAlbum').click(function(){
    $('.artistAppleAlbum').not(this).hide();
    $('#' + artist).show();
  });
  $('.appleAlbums').click(function(){
    $('.appleAlbums').this.show();
  });
});

$(document).on('click', '.showRhapAlbums', function setArtist(artist) {
  $('.artistRhapAlbum').click(function(){
    $('.artistRhapAlbum').not(this).hide();
    $('#' + artist).show();
  });
  $('.rhapsodyAlbums').click(function(){
    $('.rhapsodyAlbums').this.show();
  });
});

$("a[href='#bottom']").click(function() {
  $("html, body").animate({ scrollTop: $(document).height() }, "slow");
  return false;
})

