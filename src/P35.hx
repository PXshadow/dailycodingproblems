class P35
{
	/**
	 * asked: Google
	 * description: Given an array of strictly the characters 'R', 'G', and 'B', segregate the values of the array so that all the Rs come first, the Gs come second, and the Bs come last. You can only swap elements of the array.
	 * requiriment: Do this in linear time and in-place.
	 * example: given the array ['G', 'B', 'R', 'R', 'B', 'R', 'G'], it should become ['R', 'R', 'R', 'G', 'G', 'B', 'B'].
	 */
	public function new()
	{
		var array = ['G', 'B', 'R', 'R', 'B', 'R', 'G'];
		var old = array.copy();
		array.sort(function(a:String,b:String)
		{
			return value(a) - value(b);
		});
		trace(old + " -> " + array);
	}
	private function value(string:String):Int
	{
		return switch(string)
		{
			case "R": 0;
			case "G": 1;
			case "B": 2;
			default: -1;
		}
	}
}