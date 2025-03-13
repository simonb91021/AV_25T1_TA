/// Question 1: This question requests you to fix all compile errors in the main function and any classes. Address
/// the comments given inside the code.
/// Your code should run and compile without any warnings or errors.


#include <iostream>
#include <map>
#include <vector>
#include <initializer_list>
#include <memory>
#include <cmath>

const int values[] = { 1,2,3,4,5 };
const int val_size = sizeof values / sizeof(int);



class Foo {
    std::vector<int> mElements;
public:
    Foo(std::initializer_list<int> list)
    : mElements(list) {}
};

struct Person{
    int age;
    float weight;
};


void show_output(const int* p)
{
    printf("%p : %d\n", (void*)p, *p);
}
// Fixed show_output to only use a single pointer.

int main() {

    int x = -10;
    int y = 15;
    std::cout << " " << x << ", " << y << std::endl;

    // print integer ratios of y:x till x < y
    // invalid ratios should print 0
    // Fixed while loop, properly prints 0 at the invalid ratio and continues as normal 
    // for every else until while condition no longer fulfilled.
    while (x < y)
    {
        if (x != 0) {
            std::cout << "ratio: " << (y/x) << std::endl;
        }
        else {
            std::cout << "0" << std::endl;
        }
        x++;
        y--;
    }


    int i = 1, j = 1; // don't change values
    if ((i = !3) && (j = 1)) // Fixed conditions for if statement.
    {
        std::cout << "j is 1 and i is not 3\n";
    }
    else {
        std::cout << "either j is NOT 1, or i is set to 3\n";

    }


    typedef std::map<int, double> valmap;
    valmap m;

    for (int i = 0; i < val_size; i++)
        m.insert(std::make_pair(values[i], std::pow(values[i], .5)));

    m.insert(std::make_pair(1, 2));


    int n = 1;
    int* p = &n;
    show_output(p);

    // Initialise a person on the heap with the use of smart pointers (unique_ptr) instead.
    // No longer uses regular pointers, uses smart pointers.
    std::unique_ptr<Person> ptr = std::make_unique<Person>();
    ptr->age = 10;
    ptr->weight = 55.5;

    // Initialise with 5 integers
    Foo foo{1, 2, 3, 4, 5};

    return 0;
}
