import std.stdio;
import solver;
import solver_p29;
import std.format;
import io;

int main()
{
    array solver = new array();
    string filepath = "/home/henzou/dlangtour/input";
    int[] data = parse_input(filepath);
    solver.solve_sort_indexes(data);
    return 0;
}