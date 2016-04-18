<div id="appy">  
  <div class="appleResults">
    <div id="apple">
      <strong>Apple Music</strong>
    </div>
  </div><br><br><br>

    <div class="appleResults">
      <% if @itunesAlbums %>
        <% @itunesAlbums.each do |itunesAlbum| %>
          <%# spotAlbum["available_markets","US"] %>
            <ul> 
              <li><%= itunesAlbum["collectionName"] %></li>
              <li><%#= image_tag itunesAlbum["images"][0]["url"], :class => "album_art" %></li>

            </ul>
          <%# end %>
        <% end %>
      <% end %>
    </div>
</div>

<div class="rhapResults">
    <div id="rhapsody">
      <strong>Rhapsody</strong>
    </div>
  </div><br><br><br>
  <div class="rhapResults">
      <% if @rhapAlbums %>
        <% @rhapAlbums.each do |rhapAlbum| %>
        <ul>
          <li id="spotDisplay"><%= rhapAlbum["name"] %></li>
          <li><%#= rhapResult["name"] %> <!-- Artist: --> <%#= rhapResult["artist"]["name"] %></li>
         <!--  <ul>
            <li>Song: "<%#= rhapResult["name"] %>"</li>
            <li>Album: <%#= rhapResult["album"]["name"] %></li> 
            <li>Artist: <%#= rhapResult["artist"]["name"] %></li>
          </ul> -->
        <%# else %>
       <!--    <p>Sorry, we were unable to locate any results</p> -->
        </ul>
        <% end %>
      <% end %>
  </div>
</div>
