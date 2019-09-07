
class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def bfs(starting_node, target_value)
        array = [starting_node]
        visited = Set.new()
        until array.empty?
            el = array.shift
            unless visited.include?(el)
                return el if el.val == target_value
                visited.add(el)
                array += node.neighbors
            end
        end
        nil
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')

a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "f")