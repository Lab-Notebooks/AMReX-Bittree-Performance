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
    amrex::Vector<int> vect;
  
    vect.push_back(0);
    vect.push_back(1);
    vect.push_back(2);

    const amrex::Vector<int>& pmap = vect;
  
    for (int x : pmap) 
       cout << x << " ";
 
    amrex::DistributionMapping dm;
    dm = amrex::DistributionMapping(pmap);

    return 0;
}
