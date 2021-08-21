class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :created_at, :updated_at
end

arr = [1, 2, 3, 4, 5, 6]
arr[1..-3]
r = 1..-3
r.first # => 1
r.last # => -3

arr.size # => 6
positive_index = arr.size + r.last # => 3

arr[1..3]
arr.values_at(*(1..3).entries)
# => [2, 3, 4]

arr[1..-3] # => [2, 3, 4]

arr = [*1..10]

# methods that accept block
:count(obj) # Returns a count of specified elements. # With no argument and a block given, calls the block with each element; returns the count of elements for which the block returns a truthy value # With argument obj and a block given, issues a warning, ignores the block, and returns the count of elements eql? to obj.
:all? # Returns true if "all" elements of self meet a given criterion. With a block given and no argument, calls the block with each element in self; returns true only if the block returns only truthy values for every element in self, false otherwise.
:any? # Returns true if "any" element of self meets a given criterion. With a block given and no argument, calls the block with each element in self; returns true if the block returns any truthy value for at least one element in self, false otherwise
:one? # Returns true if "exactly only one" element of self but not more than one element of self meets a given criterion. # With a block given and no argument, calls the block with each element in self; returns true if the block returns a truthy value for exactly "one" element, false otherwise.
:none? # Returns true if "none" of the element of self meet a given criterion, all elements should return only falsy values. # With a block given and no argument, calls the block with each element in self; returns true if the block returns no truthy value for any of the elements of self at all, false otherwise.
:max(n) # When a block is given, the block must return an Integer as return value of the block. # With a block and no argument, method calls the block (self.size-1) times to compare elements; returns the element from self that is having the maximum value per the block # With an argument n and a block, returns a new Array with at most n elements from self, in descending order per the block.
:min(n) # When a block is given, the block must return an Integer for every element in self. # With a block and no argument, calls the block self.size-1 times to compare elements; returns the element having the minimum value per the block. # With an argument n and a block, returns a new Array with at most n elements, in ascending order per the block.
:minmax # Returns a new 2-element Array containing the minimum and maximum values from self. # When a block is given, the block must return an Integer; the block is called self.size-1 times to compare elements; returns a new 2-element Array containing the minimum and maximum values from self, per the block
:fetch(index) # With argument index and a block, returns the element at offset index if index is in range (and the block is not called in this case when index is given and in range); otherwise, if index is out of range, calls the block with index as block argument and returns its return value.
:index(object) # When both argument object and a block are given, does not call the block and behaves like #index without block, in this case, Ruby throws a warning "given block not used" # If no argument is given and block is given, calls the block with each successive element of self; returns the index of the first element for which the block returns a truthy value. Returns nil if the block never returns a truthy value. # When neither an argument nor a block is given, returns a new Enumerator; The index of the element that returns a truthy value first time for a block is the return value of the method.
:find_index # The #find_index is an alias for #index.
:each_index # Iterates only over the array indexes instead of array elements. # When a block given, passes each successive array index to the block; returns self.
:sort! # Returns self with its elements sorted in place. # With a block, calls the block with each element pair; for each element pair a and b, the block should return an integer as return value.
:sort_by! # Sorts the elements of self in place, using an ordering determined by the block; returns self. # Calls the block with each successive element; sorts elements based on the values returned from the block. # Returns a new Enumerator if no block given
:sum # When a block is given, it is called with each element and the block’s return value (instead of the element itself) is used as the addend for the next element, to which the element's block's return value will be added to.
:collect! # #collect! is an alias for #map!.
:map! # Calls the block, if given, with each element; replaces the element with the block’s return value # Returns a new Enumerator if no block given.
:map! # Returns a new Enumerator if no block given.
:select! # Calls the block if given, with each element of self; removes from self those elements for which the block returns false or nil. # Returns self if any elements were removed # Returns nil if no elements were removed.
:filter! # #filter! is an alias for #select!
:reject! # Removes each element for which the block returns a truthy value. # Returns self if any elements removed # Returns nil if no elements removed.
:delete(object) # Removes zero or more elements from self; When a block is given, removes from self each element ele such that ele == obj. If any elements are found to be deleted by ele == obj, then method ignores the block and returns the last deleted element. If no such elements are found, returns the block’s return value, the block element is the argument object.
:uniq! # Removes duplicate elements from self, the first occurrence always being retained; returns self if any elements removed, nil otherwise. If the block has returned a value for an element, and if this value is same returned for another element earlier, then this new element will be returned as the return value of block is duplicate, so the element is considered duplicate and removed from self # Returns self if any elements removed # Returns nil if no elements removed. Every element of array and the return value of the block are internally stored as hash, and if an element has same value as any other element value, this element will be deleted from self.
:select # Calls the block, if given, with each element of self; returns a new Array containing those elements of self for which the block returns a truthy value # Returns a new Enumerator if no block given.
:filter # #filter is an alias for #select.
:take_while # Returns a new Array containing zero or more leading elements of self; does not modify self. This method takes a block and calls the block with each successive element of self until the block returns false or nil; like the while loop which executes the loop until condition returns false # With a block given, calls the block with each successive element of self; stops if the block returns false or nil; returns a new Array containing those elements for which the block returned a truthy value # With no block given, returns a new Enumerator.


# reflection
:include? # :==
:count # :eql?
:empty? # Returns true if the count of elements in self is zero, false otherwise.
:length # Returns the count of elements in self.
:size # Alias for #length # Returns the count of elements in self.
:all? # With no block given and no argument, returns true if self contains only truthy elements, false otherwise # If argument obj is given, returns true if obj.=== every element of self, false otherwise.
:any? # With no block given and no argument, returns true if self has "any" one truthy element, false otherwise # If argument obj is given, returns true if obj.=== any for any one element in self, false otherwise.
:one? # With no block given and no argument, returns true if self has exactly one truthy element, false otherwise # If argument obj is given, returns true if obj.=== exactly one element, false otherwise.
:none? # With no block given and no argument, returns true if self has no truthy elements, false otherwise. # If argument obj is given, returns true if obj.=== no for "none" element in self, false otherwise.
:max # When no block is given, each element in self must respond to method <=> with an Integer as return value of <=> method call when sent to element. # With no argument and no block, returns the element in self having the maximum value per method <=> # With an argument Integer n and no block, returns a new Array with at most n elements, in descending order per method <=>.
:min # When no block is given, each element in self must respond to method <=> with an Integer as return value of <=> method call when sent to element. # With no argument and no block, returns the element in self having the minimum value per method <=> # With Integer argument n and no block, returns a new Array with at most n elements, in ascending order per method <=>.
:minmax # Returns a new 2-element Array containing the minimum and maximum values from self. When no block is given, each element in self must respond to method <=> with an Integer as return value when <=> is sent to element in self; returns a new 2-element Array containing the minimum and maximum values from self, per method <=>.
:hash # Returns the integer hash value for self. Two arrays with the same content will have the same hash code (and will compare using eql?).

# read
:at(index) # Returns the element at Integer offset index, or returns nil; does not modify self.
:fetch(index, default_value) # With the single Integer argument index, returns the element at offset index, if index is out of range, raises "IndexError" # With arguments index and default_value, returns the element at offset index if index is in range, otherwise returns default_value.
:last(n) # Returns not more than n elements from self in an array, even if n is 1, returns it in an array; self is not modified. When no argument is given, returns the last element. # If self is empty, returns nil. # When non-negative Integer argument n is given, returns the last n elements in a new Array # If n >= array.size, returns all elements # If n == 0, returns an new empty Array. # If n is a non-negative integer, and if the self is empty, returns an empty array. # If a negative n is given, throws a "ArgumentError".
:values_at(*indexes) # Returns a new Array whose elements are the elements of self at the given Integer indexes. # For each positive index, returns the element at offset index. # For each negative index, counts backward from the end of the array. # Returns a new empty Array if no arguments given. # Assigns nil for an index in the return array that is too large or too small.
:first(n) # Returns not more than n elements from self in an array, if n is given, return value is always an Array, if n is 1 returns first element in an array; self is not modified. # When no argument is given, returns the first element of self # If self is empty, returns nil. # If self is empty and if you give any n, returns an empty array. # When non-negative Integer argument n is given, returns the first n elements in a new Array # If n >= array.size, returns all elements # If n == 0 returns an new empty Array # If a negative n is given, throws a "ArgumentError".
:index(object) # Returns the index of a specified element. # When argument object is given but no block, returns the index of the first element element for which object == element # Returns nil if no such element found.
:find_index(object) # The #find_index is an alias for #index.
:[] # Returns elements from self; does not modify self. # When a single Integer argument index is given, returns the element at offset index. # If index is negative, counts relative to the end of self # If index is out of range, returns nil.
:slice # #slice is an alias for #[].
:sample(n, random: Random) # Returns random elements from self. # When no arguments are given, returns a random element from self # If self is empty, returns nil. # When argument n is given, returns a new Array containing n random elements from self. # Returns no more than a.size elements (because no new duplicates are introduced) But self may contain duplicates, and they will get returned. # The optional random argument will be used as the random number generator, with the kwarg as random: and value as an instance of "Random" class.

# two arrays operations
:concat(*other_arrays) # Adds to array all elements from each Array in other_arrays; returns self
:union(*other_arrays) # Returns a new Array that is the union of self and all given Arrays other_arrays; duplicates are removed; order is preserved; items are compared using #eql? # Returns a copy of self if no arguments given. # Throws a "TypeError" is arguments are not arrays.
:|(other_array) # Takes only one argument array. Returns the union of array and Array other_array; duplicates are removed; order is preserved; items are compared using eql? # Throws a "TypeError" is arguments are not arrays.
:difference(*other_arrays) # Returns a new Array containing only those elements from self that are not found in any of the Arrays other_arrays; items are compared using eql?; order from self is preserved # Returns a copy of self if no arguments given. # Throws a "TypeError" is arguments are not arrays.
:-(other_array) # Takes only one argument array. # Returns a new Array containing only those elements from array that are not found in Array other_array; items are compared using eql?; the order from array is preserved. # Throws a "TypeError" is arguments are not arrays.
:intersection(*other_arrays) # Returns a new Array containing each element found both in self and in all of the given Arrays other_arrays; every array including self and other_arrays should have the element, duplicates are omitted; items are compared using eql? # Preserves order from self # Returns a copy of self if no arguments given. # Throws a "TypeError" is arguments are not arrays.
:&(other_array) # Takes only one argument array. # Returns a new Array containing each element found in both array and Array other_array; duplicates are omitted; items are compared using #eql? # Preserves order from array # Throws a "TypeError" is arguments are not arrays.
:+(other_array) # Returns a new Array containing all elements of array followed by all elements of other_array # Throws a "TypeError" is argument is not an array.
:eql?(other_array) # Returns true if self and other_array are the same size, and if, for each index i in self, self[i].eql? other_array[i] Otherwise, returns false. # This method is different from method Array#==, which compares using method Object#==. # Any object can be given as other_array argument.
:<=>(other_array) # Returns -1, 0, or 1 as self is less than, equal to, or greater than other_array. For each index i in self, evaluates result = self[i] <=> other_array[i]
:==(other_array) # Returns true if both array.size == other_array.size and for each index i in array, array[i] == other_array[i] Otherwise, returns false. # Any object can be given as other_array argument. # This method is different from method #eql?, which compares elements using Object#eql?
:replace(other_array) # Replaces the content of self with the content of other_array; returns self:


# mutate methods
:clear # Removes all elements from self and returns self with no elements
:delete_if # Removes each element in self for which the block returns a truthy value; returns self: Returns a new Enumerator if no block given
:concat(*other_arrays) # Adds to array all elements from each Array in other_arrays; returns self
:push(*objects) # Appends trailing elements. # Appends each argument in objects to self; returns self. # Appends each argument as one element, even if it is another Array
:<<(object) # Appends object to self; returns self # Appends object as one element, even if it is another Array.
:append # #append is an alias for Array#push.
:pop(n) # Removes and returns trailing elements. # When no argument is given and self is not empty, removes and returns the last element # Returns nil if the array is empty. #  When a non-negative Integer argument n is given and is in range, removes and returns the last n elements in a new Array # If n is positive and out of range, removes and returns all elements. # If n is zero, returns a new empty Array; self is unmodified.
:shift(n) # Removes and returns leading elements. # When no argument is given, removes and returns the first element # Returns nil if self is empty. # If n is zero, returns a new empty Array; self is unmodified. # When positive Integer argument n is given, removes the first n elements; returns those elements in a new Array. # If n is as large as or larger than self.length, removes all elements; returns those elements in a new Array.
:unshift(*objects) # Prepends the given objects to self.
:prepend # Alias for #unshift
:rotate!(n) # Rotates self in place by moving elements from one end to the other; returns self. # When no argument given, rotates the first element to the last position # When given a non-negative Integer count, rotates count elements from the beginning to the end. # When given a negative Integer count, rotates in the opposite direction, from end to beginning # If count is small or large, uses count % array.size as the count # If count is zero, returns self unmodified
:sort! # Returns self with its elements sorted in place. # With no block, compares elements using operator <=>.
:delete(object) # Removes zero or more elements from self; and returns the deleted element. # When no block is given, removes from self each element ele such that ele == obj; returns the last deleted element. # Returns nil if no elements removed.
:delete_at(index) # Deletes an element from self, per the given Integer index. # When index is non-negative, deletes the element at offset index, or if the index is too large, returns nil. # When index is negative, counts backward from the end of the array, or index is too small (far from zero), returns nil.
:delete_if # Removes each element in self for which the block returns a truthy value; returns self: Returns a new Enumerator if no block given
:keep_if # Retains those elements for which the block returns a truthy value; deletes all other elements; returns self # Returns a new Enumerator if no block given
:uniq! # Removes duplicate elements from self, the first occurrence always being retained; returns self if at least one element is removed  from self, nil otherwise. # With no block given, identifies and removes elements using method #eql? to compare. # Returns self if any elements removed # Returns nil if no elements removed.
:compact! # Removes all nil elements from self. # Returns self if any elements removed, otherwise nil.
:replace(other_array) # Replaces the content of self with the content of other_array; returns self:
:insert(index, *objects) # Inserts given objects before or after the element based on the integer at Integer index offset; returns self. # When index is non-negative and less than the size of the index, inserts all given objects before the element at offset index, and, Extends the array if index is beyond the array (index >= self.size) # When index is negative, inserts all given objects after the element at offset index+self.size # Does nothing if no objects given.
:reverse! # Reverses self in place such that the elements of self will be in reverse order.


:join(separator = $,) # Returns the new String formed by joining the array elements after conversion. For each element element if element is not a kind_of?(Array) uses element.to_s, and if element is a kind_of?(Array) uses recursive element.join(separator) # With no argument, joins using the output field separator, $,. # If separator is a string, with string argument separator, joins the element using that separator.
:*(n||string_separator ) # When non-negative argument Integer n is given, returns a new Array built by concatenating the n copies of self # When String argument string_separator is given, equivalent to array.join(string_separator)

:flatten!
:shuffle!




# methods that act on all elements of self
:sum(init = 0) # The elements need not be numeric, but must be +-compatible with each other and with init # When no block is given, returns the object equivalent to, sum of all the elements plus the init argument. For example, [e1, e2, e3].sum returns </tt>init + e1 + e2 + e3</tt>. # #join and #flatten may be faster than #sum for an Array of Strings or an Array of Arrays.
:flatten(level) # Returns a new Array that is a recursive flattening of self # Each non-Array element in self is unchanged in new Array. # Each Array in self is replaced by its individual elements in the new Array. # With non-negative Integer argument level, flattens recursively through level levels for every Array element in self. # With no argument, a nil argument, or with negative argument level, flattens all levels.
:take(n) # Returns a new Array containing the first n element of self, where n is a non-negative Integer; does not modify self. #take(n) and #first(n) method behaves the same, but the only difference is take needs a required argument, and #first method, arguments are optional.


:to_ary
:to_a
:to_h

:inspect # Returns the new String formed by calling method #inspect on each array element
:to_s # #to_s is an alias for #inspect.

:combination
:permutation
:repeated_permutation
:repeated_combination
:rotate
:transpose
:product
:bsearch
:deconstruct
:bsearch_index
:assoc
:rassoc

:compact # Returns a new Array containing all non-nil elements from self.

[
 :sort,
 :reject,
 :collect,
 :map,
 :reverse_each,
 :zip,
 :drop,
 :cycle,
 :drop_while,
 :uniq,
 :rindex,
 :reverse,
 :each,
 :dig,
 :pack,
 :shuffle,
 ]

:slice!
:fill
:[]=

prime_lam = -> (n) {
  2.upto(n).select do |num|
    [*(2..(num-1))].none? {|x| num % x == 0}
  end
}

num = 4
[*(2..(num-1))].none? {|x| num % x == 0}

class Foo
  attr_accessor :x, :y

  def [](val)
    public_send(val)
  end

  def []=(key, val)
    public_send("#{key}=", val)
  end

end
#
foo_obj = Foo.new
#
foo_obj[:x] = 100 # => 100
foo_obj[:x] # => 100
#
foo_obj.[100] # syntax error, unexpected '[' (SyntaxError)