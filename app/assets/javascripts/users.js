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

// $(document).on('click', '.showSpotAlbums', function setArtist(artist) {
//   $('.searchResults').click(function(){
//     $('.searchResults').not(this).hide();
//     $('#' + artist).show();
//   })
// })