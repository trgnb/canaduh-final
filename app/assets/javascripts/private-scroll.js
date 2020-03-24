function scrollLastPrivateMessageIntoView() {
  console.log('Scroll');
  const messages = document.querySelectorAll('.card-message');
  const lastMessage = messages[messages.length - 1];
  lastMessage.scrollIntoView({behavior: "smooth", block: "end", inline: "nearest"});
}
