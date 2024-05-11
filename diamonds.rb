def build_diamonds(h, l, s)
    h.times do 
        dimension = s * 2
        left = s - 1
        right = s
    
        while true do
            l.times do
                row = "." * dimension
                
                row[left] = "/"
                row[right] = "\\"
                
                print row
            end
            
            print "\n"

            break if left == 0

            left -= 1
            right += 1
        end
        
        while left < right do
            l.times do
                row = "." * dimension
                
                row[left] = "\\"
                row[right] = "/"
                
                print row
            end
            
            print "\n"
            
            left += 1
            right -= 1
        end
    end
end

# build_diamonds(5, 7, 6)
