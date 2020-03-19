function scrollLastMessageIntoView() {
  console.log('Scroll');
  const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];
  lastMessage.scrollIntoView({behavior: "smooth", block: "end", inline: "nearest"});
}
