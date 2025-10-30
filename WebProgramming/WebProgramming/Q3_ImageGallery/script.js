const galleryItems = document.querySelectorAll(".gallery-item");
const modalImage = document.getElementById("modalImage");
const imageModal = new bootstrap.Modal(document.getElementById("imageModal"));

galleryItems.forEach((item) => {
  item.addEventListener("click", () => {
    modalImage.src = item.src; // Set modal image source
    imageModal.show(); // Show modal
  });
});
