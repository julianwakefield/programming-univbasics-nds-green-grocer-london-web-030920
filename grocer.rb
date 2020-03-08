def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  counter = 0
  while counter < collection.length
    if collection[counter][:item] == name
      return collection[counter]
    end
    counter += 1
  end

end

def consolidate_cart(cart)

  new_cart = []
  counter = 0

  while counter < cart.length
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_cart_item != nil
        new_cart_item[:count] += 1
      else
        new_cart_item = {
          :item => cart[counter][:item],
          :price => cart[counter][:price],
          :clearance => cart[counter][:clearance],
          :count => 1
        }
        new_cart << new_cart_item
    end
    counter += 1
  end
  new_cart
end
#return: [{:item => "AVOCADO", :price => 3.00, :clearance => true, counter => 3}]
#item: {:item => "AVOCADO". :price => 3.00, :clearance => true, :counter => 3}

# Consult README for inputs and outputs
#
# REMEMBER: This returns a new Array that represents the cart. Don't merely
# change `cart` (i.e. mutate) it. It's easier to return a new thing.


def apply_coupons(cart, coupons)
    counter = 0
    while counter < coupons.length
      cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
      couponed_item_name = "#{coupons[counter][:item]} W/COUPON"
      cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
      if cart_item && cart_item[:count] >= coupons[counter][:num]
        if cart_item_with_coupon
          cart_item_with_coupon[:count] += coupons[counter][:num]

            end
        end

      counter += 1
    end

end
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
