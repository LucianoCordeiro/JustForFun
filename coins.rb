def coin_combinations(value = nil, version = nil)
    hash = {
        25 => [10, 10, 5],
        10 => [5, 5],
        5 => [1, 1, 1, 1, 1]
    }
    
    
    
    version = version || get_coin_set(value)
    ways = [version]

    i = 0
    loop do
        return ways if version[i] == nil || (version[i] == 1 && version[i - 1] == 1)
        if version[i] != 1
            i += 1
            next
        end
        
        not_one_array = version[0..i - 1] 
        one_array = version[i..] || []
        e = not_one_array[i - 1]

        new_array = (not_one_array[0...-1] || []) + hash[e] + one_array

        ways += coin_combinations(nil, new_array)

        i += 1
    end
end



def get_coin_set(value, coins = [25, 10, 5, 1])
    div = value / coins[0]
    remainder = value % coins[0]

    coin_set = []
    coin_set += [coins[0]] * div if div >= 1
    coin_set += get_coin_set(remainder, coins[1..]) unless remainder == 0

    coin_set
end



puts coin_combinations(19).to_s
