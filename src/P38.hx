class P38
{
    /**
	 * asked: Microsoft
	 * description: You have an N by N board. Write a function that, given N, returns the number of possible arrangements of the board where N queens can be placed on the board without threatening each other.
	 * requiriment: no two queens share the same row, column, or diagonal.
	 * example (not from dailycodeproblem): 8 by 8 board, how many queens
	 */
    public function new()
    {
        var n:Int = 8;
        trace(n + "x" + n + " board, there can be as many as " + board(n) + " queens.");
    }
    public function board(n:Int):Int
    {
        if (n < 2) return 0;
        return n - 1;
    }
}