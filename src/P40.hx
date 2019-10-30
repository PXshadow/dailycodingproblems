class P40
{
    /**
	 * asked: Google
	 * description: Given an array of integers where every integer occurs three times except for one integer, which only occurs once, find and return the non-duplicated integer.
	 * requiriment: Do this in O(N) time and O(1) space.
	 * example: given [6, 1, 3, 3, 3, 6, 6], return 1. Given [13, 19, 13, 13], return 19.
	 */
    public function new()
    {
        var a = [6, 1, 3, 3, 3, 6, 6];
        var b = [13, 19, 13, 13];
        trace(a + " = " + nonduplicate(a) + ", " + b + " = " + nonduplicate(b));
    }
    private function nonduplicate(array:Array<Int>):Int
    {
        var dup:Array<Int> = [];
        for (i in array)
        {
            if (dup.indexOf(i) == -1)
            {
                dup.push(i);
            }else{
                dup.remove(i);
            }
        }
        return dup[0];
    }
}