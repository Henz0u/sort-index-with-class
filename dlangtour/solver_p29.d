module solver_p29;
import std.stdio;
import io;
import std.array;

class array {
    static void solve_sort_indexes(int[] data){
        //TODO: Solve the solution
        //print!int.printArray(data);
        int[] indices = new int[data.length];
        for(int i=0;i<data.length;i++){
            indices[i] = i+1;
        }
        //prepare double loop
        for(int i=0;i<data.length;i++){
            for(int j=0;j<data.length-1;j++){
                if(data[j] > data[j+1]){
                    //Todo: swap data
                    swap(data[j], data[j+1]);
                    swap(indices[j], indices[j+1]);
                }
            }
        }
        print!int.printArray(data);
        print!int.printArray(indices);
    }

    static void swap(ref int a, ref int b){
        int temp = b;
        b = a;
        a = temp;
    }
    static void printArray(int[] indices){
        writef("%d ", indices);
    }
}