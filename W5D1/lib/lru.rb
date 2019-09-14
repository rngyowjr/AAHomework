class LRUCache
    def initialize(size)
      @size = size
      @buckets = []
    end

    def count
      # returns number of elements currently in cache
      @buckets.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @buckets.include?(el)
        @buckets.delete(el)
        @buckets << el
      else
        @buckets << el
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      puts @buckets
    end

    private
    # helper methods go here!

  end