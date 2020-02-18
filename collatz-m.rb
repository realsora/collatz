#finds the integer between min and max that produces the 
# longest collatz sequence

def max_collatz(max, min=1)
  #stores n for lengest chain
  longest_n = 0 
  #stores length of longest chain
  longest_chain = 0
  #caches lengths
  collatz_lengths = {}

  #check each value between min and max
  (min..max).each do |n|
        #counts length of chain
        count = 1
        #copy n, to preserce value of n for storing when longest chain is found
        i = n

        #until collatz sequence has terminated
        until i <= 1
          #if collatz length has already been found for current i 
          if collatz_lengths[i]
          #for remainder of sequence, use the length that was already found
          count += collatz_lengths[i]
          break
            else
          #store next number in sequence
            i = i.even? ? i / 2: 3* i + 1
          #increment chain length count
          count += 1
          end
        end

      #cache sequence length for current n
      collatz_lengths[n] = count
      #if current n created longest chain, store values
      if count > longest_chain
        longest_chain = count
        longest_n = n
      end

  end
    longest_n
end

  p max_collatz(1_000_000, 1)