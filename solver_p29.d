module solver_p29;
import std.stdio;
import io;

class Compound {
    int value;
    int index;
    this(int value, int index) {
        this.value = value;
        this.index = index;
    }
}
void solve_sort_indexes(int[] data){
    Compound[] compounds = new Compound[data.length];
    for(int i=0;i<data.length;i++)
        compounds[i] = new Compound(data[i], i+1);
    for(int i=0;i<data.length;i++){
        for(int j=0;j<data.length-1;j++){
            if(compounds[j].value > compounds[j+1].value){
                swap(compounds[j], compounds[j+1]);
                swap(data[j], data[j+1]);
            }
        }
    }
    int[] indices = new int[data.length];
    for(int i=0;i<data.length;i++){
        indices[i] = compounds[i].index;
    }
    print!int.printArray(data);
    print!int.printArray(indices);
}
void swap(ref Compound a, ref Compound b){
    Compound temp;
    temp = b;
    b = a;
    a = temp;
}
void swap(ref int a, ref int b){
    int temp;
    temp = b;
    b = a;
    a = temp;
}