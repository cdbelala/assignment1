#complete
def fib(n)
    fib = Array.new
    fib[0] = 0
    fib[1] = 1
    i = 2
    while i <= n
        fib[i] = fib[i-1] + fib[i-2]
        i += 1
    end
  return fib
end

#complete
def isPalindrome(n)
    reversed = n.to_s
    reversed = reversed.reverse
    if reversed == n.to_s
        return true
    end
end

#complete
def nthmax(n, a)
    n -= 1
    sorted = a.sort { |a, b| b <=> a }
    if sorted.length < n
        return nil
    else
        sorted.reverse()
        return sorted[0+n]
    end
end

#complete
def freq(s)
    chars = Hash.new(0)
    s.chars.each do |c|
        chars[c] += 1
    end
    return chars.max_by{|k,v| v}
end

#complete
def zipHash(arr1, arr2)
    if arr1.length != arr2.length
        return nil
    end
    hash = Hash.new
    for i in 0...arr1.length
        hash[arr1[i]] = arr2[i]
    end
    return hash
end

#complete
def hashToArray(hash)
    a = Array.new
    a = hash.to_a
    return a
end
