$.get("https://chitter-backend-api-v2.herokuapp.com/peeps", function(data) {
  let htmlChunks = data.map((data) => { 
    return `<div class='peep-box'>
    <div class='peep-information'>
      <p class='user_handle'>@${data.user.handle}</p>
      <p class='user_handle'>${data.created_at}</p>
    </div>
    <div class='peep'>
      <h3 class='peep-text'>${data.body}</h3>
    </div>
    <div class='buttons'>
      <button class='comment'><img class='comment-button' src='./public/comment_button.png'></button>
      <button class='like' >${data.likes.length}<img class='like-button' src='./public/like_button.png'></button>
    </div>`
  })
  $('.peep-body').html(htmlChunks)
})




