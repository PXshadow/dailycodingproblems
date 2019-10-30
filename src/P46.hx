class P46
{
    /**
	 * asked: Amazon
	 * description: Given a string, find the longest palindromic contiguous substring.
	 * requiriment: If there are more than one with the maximum length, return any one.
	 * example: the longest palindromic substring of "aabcdcb" is "bcdcb". The longest palindromic substring of "bananas" is "anana".
	 */
    public function new()
    {
        var a = "aabcdcb";
        var b = "bananas";
        trace(a + " = " + palindromic(a) + ", " + b + " = " + palindromic(b));
    }
    private function palindromic(string:String):String
    {
        var start:String = "";
        var end:String = "";
        var size:Int = 0;
        var sub:String = "";
        for (j in 0...string.length - 1)
        {
            start = string.charAt(j);
            for (i in 0...string.length)
            {
                end = string.charAt(string.length - i);
                if (start == end && string.length - i - j > size)
                {
                    size = string.length - i - j;
                    sub = string.substring(j,string.length - i + 1);
                }
            }
        }
        return sub;
    }
}