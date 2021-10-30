# This file has been taken from the earlier SOLOMON project, and modified for this project.
# This file defines the classes for an ast node and the ast itself (directed graph formed from the ast nodes)

class GraphNode:
	globalNodeId = 0

	def __init__(self, name):
		self.id = GraphNode.globalNodeId
		self.name = name
		self.incomingEdgeAstMap = {}
		self.incomingEdgeAstMapCopy = {} # will be used and mutated by `topSort()`
		self.outgoingEdgeAstMap = {}

		GraphNode.globalNodeId += 1

	def addIncomingEdge(self, srcId, ast):
		if srcId not in self.incomingEdgeAstMap:
			self.incomingEdgeAstMap[srcId] = []
			self.incomingEdgeAstMapCopy[srcId] = []
		self.incomingEdgeAstMap[srcId].append(ast)
		self.incomingEdgeAstMapCopy[srcId].append(ast)

	def addOutgoingEdge(self, dstId, ast):
		if dstId not in self.outgoingEdgeAstMap:
			self.outgoingEdgeAstMap[dstId] = []
		self.outgoingEdgeAstMap[dstId].append(ast)

class Graph:
	def __init__(self):
		self.nodes = []
		# map from node id to node
		self.idNodeMap = {}

	def addNode(self, node):
		assert(node.id not in self.idNodeMap)
		self.nodes.append(node)
		self.idNodeMap[node.id] = node

	def getNode(self, name):
		for node in self.nodes:
			if node.name == name:
				return node
		return None

	def topSort(self): # topological sort
		top_sort = []

		start_nodes = [val for (key, val) in self.idNodeMap.items() if len(val.incomingEdgeAstMapCopy) == 0]

		while len(start_nodes) > 0:
			top_sort.extend(start_nodes)

			for node in start_nodes:
				# to prevent this node from being counted again
				node.incomingEdgeAstMapCopy[-1] = []

				for (key, val) in node.outgoingEdgeAstMap.items():
					del self.idNodeMap[key].incomingEdgeAstMapCopy[node.id]

			start_nodes = [val for (key, val) in self.idNodeMap.items() if len(val.incomingEdgeAstMapCopy) == 0]

		return top_sort
