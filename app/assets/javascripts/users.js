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
});

$(document).on('click', '.showAppleAlbums', function setArtist(artist) {
  $('.artistAppleAlbum').click(function(){
    $('.artistAppleAlbum').not(this).hide();
    $('#' + artist).show();
  });
});

$(document).on('click', '.showRhapAlbums', function setArtist(artist) {
  $('.artistRhapAlbum').click(function(){
    $('.artistRhapAlbum').not(this).hide();
    $('#' + artist).show();
  });
});