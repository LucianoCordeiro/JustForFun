graph = {}
graph["begin"] = {}
graph["begin"]["a"] = 6
graph["begin"]["b"] = 2

graph["a"] = {}
graph["a"]["finish"] = 1

graph["b"] = {}
graph["b"]["a"] = 3
graph["b"]["finish"] = 5

graph["finish"] = {}

costs = {}
costs["a"] = 6
costs["b"] = 2
costs["finish"] = 100

parents = {}
parents["a"] = "begin"
parents["b"] = "begin"
parents["finish"] = nil

processed = []
$lowest_cost = "a"

def lowest_cost(costs)
  costs.each do |key, value|
    if value < costs[$lowest_cost]
      $lowest_cost = key
      return $lowest_cost
    end 
  end
  return nil
end

node = lowest_cost(costs)
while node != nil
  cost = costs[node]
  neighbors = graph[node]
  neighbors.each do |key, value|
    new_cost = cost + neighbors[key]
    if costs[key] > new_cost
      costs[key] = new_cost
      parents[key] = node
    end
  end
  processed << node
  puts costs["finish"]
  puts costs["a"]
  puts costs["b"]
  node = lowest_cost(costs)
end
