class P42
{
    /**
	 * asked: Google
	 * description: Given a list of integers S and a target number k, write a function that returns a subset of S that adds up to k. If such a subset cannot be made, then return null.
	 * requiriment: Integers can appear more than once in the list. You may assume all numbers in the list are positive.
	 * example: given S = [12, 1, 61, 5, 9, 2] and k = 24, return [12, 9, 2, 1] since it sums up to 24.
	 */
    public function new()
    {
        var s = [12, 1, 61, 5, 9, 2];
        var k = 24;
        trace(s + " and " + k + " = " + subset(s,k)); 
    }
    private function subset(s:Array<Int>,k:Int):Array<Int>
    {
        var max:Int = s.length;
        var sub:Array<Int> = [];
        for (i in 0...max)
        {
            sub = cycle(s,k);
            if (sub.length > 0) break;
            //cycle
            s.push(s.shift());
        }
        return sub;
    }
    private function cycle(s:Array<Int>,value:Int):Array<Int>
    {
        for (i in s)
        {
            if (i > value) 
            {
                s.remove(i);
                continue;
            }
            value += -i;
        }
        return s;
    }
}