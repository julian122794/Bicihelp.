function sendMessage() {
    const chatBox = document.getElementById('chat-box');
    const messageInput = document.getElementById('message-input');
    const messageText = messageInput.value.trim();

    if (messageText) {
        const newMessage = document.createElement('div');
        newMessage.classList.add('message', 'user');
        newMessage.textContent = messageText;
        chatBox.appendChild(newMessage);

        // Limpia el input después de enviar el mensaje
        messageInput.value = '';

        // Hace scroll hacia abajo para mostrar el último mensaje
        chatBox.scrollTop = chatBox.scrollHeight;
    }
}