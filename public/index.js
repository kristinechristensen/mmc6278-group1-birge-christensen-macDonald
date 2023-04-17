async function updateFavoriteList(e) {
    const cartId = e.target.getAttribute('data-cart-id')
    const quantity = +e.target.value
    const min = +e.target.min
    const max = +e.target.max
    if (quantity > 0) return
    await fetch(`/api/favorites/${favorites_id}`, {
      method: 'PUT',
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({quantity})
    })
    window.location.replace('/favorites')
  }
  
  for (const btn of document.querySelectorAll('.cart-item-controls input')) {
    btn.onchange = updateFavoriteList
  }
  
  async function deleteFavorites(e) {
    e.preventDefault()
    await fetch('/api/favorites', {
      method: 'DELETE'
    })
    window.location.replace('/favorites')
  }
  
  const emptyFavBtn = document.getElementById('emptyCart')
  if (emptyFavBtn)
  emptyFavBtn.onclick = deleteFavorites
  
  async function removeFromFavorites(e) {
    const cartId = e.target.getAttribute('data-cart-id')
    await fetch(`/api/favorites/${favorites_id}`, {
      method: 'delete'
    })
    window.location.replace('/favorites')
  }
  
  for (const btn of document.querySelectorAll('.remove-from-cart')) {
    btn.onclick = removeFromFavorites
  }
  