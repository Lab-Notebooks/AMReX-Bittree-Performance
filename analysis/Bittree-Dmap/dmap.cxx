// C++ program to create an empty 
// vector and push values one
// by one.
#include <iostream>
#include <AMReX_Vector.H>
#include <AMReX_DistributionMapping.H>

using namespace std;
  
int main()
{
    // Create an empty vector
    amrex::Vector<int> vect[3];
  
    vect[0].push_back(0);
    vect[0].push_back(1);
    vect[0].push_back(2);
    vect[0].push_back(3);
    vect[1].push_back(4);
    vect[1].push_back(5);
    vect[1].push_back(6);
    vect[1].push_back(7);
    vect[2].push_back(8);
    vect[2].push_back(9);
    vect[2].push_back(10);
    vect[2].push_back(11);

    const amrex::Vector<int>& pmap = vect[2];
  
    for (int x : pmap) 
       cout << x << " ";
 
    amrex::DistributionMapping dm;
    dm = amrex::DistributionMapping(pmap);

    return 0;
}
