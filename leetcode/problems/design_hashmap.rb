# Design a HashMap without using any built-in hash table libraries.
#
# To be specific, your design should include these functions:
#
# put(key, value) : Insert a (key, value) pair into the HashMap. If the value already
#   exists in the HashMap, update the value.
# get(key): Returns the value to which the specified key is mapped, or -1 if this map
#   contains no mapping for the key.
# remove(key) : Remove the mapping for the value key if this map contains the mapping for the key.
#
# Example:
#
# MyHashMap hashMap = new MyHashMap();
# hashMap.put(1, 1);
# hashMap.put(2, 2);
# hashMap.get(1);            // returns 1
# hashMap.get(3);            // returns -1 (not found)
# hashMap.put(2, 1);          // update the existing value
# hashMap.get(2);            // returns 1
# hashMap.remove(2);          // remove the mapping for 2
# hashMap.get(2);            // returns -1 (not found)

class MyHashMap
    attr_accessor :map
=begin
    Initialize your data structure here.
=end
    def initialize()
        @map = {}
    end


=begin
    value will always be non-negative.
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
    def put(key, value)
        @map[key] = value
    end


=begin
    Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key
    :type key: Integer
    :rtype: Integer
=end
    def get(key)
        @map.has_key?(key) ? @map[key] : -1
    end


=begin
    Removes the mapping of the specified value key if this map contains a mapping for the key
    :type key: Integer
    :rtype: Void
=end
    def remove(key)
        @map.delete(key)
    end


end

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap.new()
# obj.put(key, value)
# param_2 = obj.get(key)
# obj.remove(key)
