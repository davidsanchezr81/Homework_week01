def pet_shop_name(name)
  return name[:name]
end


def total_cash(sum)
  return sum[:admin][:total_cash]
end


def add_or_remove_cash(cash, amount)
   return cash[:admin][:total_cash] += amount
end

def add_or_remove_cash(cash, amount)
   return cash[:admin][:total_cash] += amount
end

def pets_sold(sold)
  return sold[:admin][:pets_sold]
end


def increase_pets_sold (sold, amount)
  return sold[:admin][:pets_sold] += amount
end


def stock_count(count)
  return count[:pets].count
end



def pets_by_breed(petshop,breed)
total = []
for dogs in petshop[:pets]
  if dogs[:breed] == breed
    total.push(dogs)
  end
end
return total
end


# ---- Find pet by name ---------------------------------
def find_pet_by_name(petshop, name)
 for pet in petshop[:pets]
   if pet[:name] == name
     return pet
  end
 end
 return nil
end

# # # Another way to do it
#   petshop[:pets].detect{|petshop| petshop[:name]== name}
# end
#-----------------------------------------------------


def remove_pet_by_name(petshop, name)
 for pet in petshop[:pets]
   if pet[:name] == name
      pet.delete(name)
  end
  # return nil
 end
end

def add_pet_to_stock(petshop,newpet)
  petshop[:pets].push(newpet)
  petshop[:pets].count
end



def customer_pet_count(customers)
    return customers[:pets].count
end



def add_pet_to_customer(customers, pet)
      customers[:pets].push(pet)
      customers[:pets].count
end

# ------------   OPTIONAL ---------------


# -------------------------
# CUSTOMER CAN AFFORD PET

# 1) One way to do it (Simple)
def customer_can_afford_pet(customer,new_pet)
  customer[:cash] >= new_pet[:price]
end

# 2) Another way to do it (More elaborated)

# def customer_can_afford_pet(customer,new_pet)
#   if customer[:cash] >= new_pet[:price]
#     true
#   else
#     false
#   end
# end
# ------------------------

# Integration ??????????
def sell_pet_to_customer(petshop,name,customer)
  for pet in petshop[:pets]
    if pet[:name] == name
        customers[:pets].push(pet)
        petshop[:admin][:pets_sold].push(pet)
        sold[:admin][:total_cash] += amount
   end
  end
  return nil
end
