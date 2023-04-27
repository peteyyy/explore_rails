class Place
	attr_accessor :business_id, :state
	def initialize(business_id, state)
		@business_id = business_id
		@state = state
	end
end


place1 = Place.new("bBDDEgkFA1Otx9Lfe7BZUQ", "FL")
place2 = Place.new("mWMc6_wTdE0EUBKIGXDVfA", "FL")
place3 = Place.new("Pns2l4eNsfO8kk83dixA6A", "CA")
place4 = Place.new("mpf3x-BjTdTEA3yCZrAYPw", "AR")
place5 = Place.new("tUFrWirKiKi_TAnsVWINQQ", "AR")
place6 = Place.new("MTSW4McQd7CbVtyjqoe9mw", "FL")
place7 = Place.new("n_0UpQx1hsNbnPUSlodU8w", "CA")
place8 = Place.new("mWMc6_wTdE0EUBKIGXDVfA", "CA")
place9 = Place.new("k0hlBqXX-Bt0vf1op7Jr1w", "FL")
places = [place1, place2, place3, place4, place5, place6, place7, place8, place9]

def print(array)
	array.each do |place|
		puts "#{place.business_id}: #{place.state}"
	end
end

# Source: Slide 89 and 90 of Module 6: Sorting Presentation
def merge_sort(array)
	# we can return the array if the size is 1 or less
	return array if array.length <= 1
	midPoint = (array[0] + array[array.length - 1]) / 2
	leftSubarray = arr[0...midPoint]
	rightSubarray = arr[midPoint...array.length - 1]
	# we can call the merge sort recursively until all the items are accounted for
	leftSort = merge_sort(leftSubarray)
	rightSort = merge_sort(rightSubarray)
	merge(leftSort, rightSort)
end

def merge(leftSort, rightSort)
	resultingMergeArr = []
	while !leftSort.length && !rightSort.length
		if leftSort.first.state <= rightSort.first.state
			resultingMergeArr.push(leftSort.first.state)
		else
			resultingMergeArr.push(rightSort.first.state)
		end
	end
  resultingMergeArr = leftSort + rightSort
  return resultingMergeArr
end


merge_sort(places)
print(places)