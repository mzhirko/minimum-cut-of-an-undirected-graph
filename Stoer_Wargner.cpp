#include<bits/stdc++.h>
#define BILLION  1000000000L;
using namespace std;

//To execute clock_gettime
struct timespec start, stop;
double total_time;
    


/*Simple Stoer-Wagner's algorithm*/

int Stoer_Wagner(int V, int graph[50][50])
{
    int prev,min_cut = BILLION;
    vector<int> wt(V); //find least weight to find min cut
    vector<bool> check(V); //to check if the vertex is considered or not
    vector<bool> visited(V, false); //mark whether node is visited in set or not
    

    //Run |V|-1 times
    for(int v = 0; v < V-1; v++)
    {
        fill(wt.begin(), wt.end(), 0);
        fill(check.begin(), check.end(), false); //Initially no vertex is considered
        
        
        //To find the vertex to be included
        for(int iter=0; iter<V-v; iter++)
        {
            int curr_ver = -1; //the final choice to determine vertex to be added
            
            //choose the vertex  with highest weight if it has not yet been selected
            for(int i = 0; i<V; i++) 
                if(!visited[i] && !check[i] && (curr_ver==-1 || wt[i]>wt[curr_ver]))
                    curr_ver = i;

            //update the weight list         
            if(iter == V - v - 1)
            {
                //to find least weight that divides graph
                if(wt[curr_ver] < min_cut) 
                    min_cut = wt[curr_ver];
                
                //update input graph as the sum of weights after joining vertices
                for(int i = 0; i<V; i++) 
                {
                    graph[i][prev] += graph[curr_ver][i];
                    graph[prev][i] = graph[i][prev];
                }
                visited[curr_ver] = true;
            }
            //if not at end of iteration, move further to find curr_ver
            else
            {
                check[curr_ver] = true;
                for(int i =0; i<V; i++)
                    wt[i] += graph[curr_ver][i]; 
                prev = curr_ver;
            }

        }
    }
    return min_cut;
}

int Runtime_analysis()
{
    int n;
    while(scanf("%d" , &n) != EOF)
    {
        
        int arr[50][50];
        
        //Reading Input from file
        for(int i = 0; i<n; i++)
        {
            for(int j = 0; j<n; j++)
            {
                    cin>>arr[i][j]; 
            }
        }
 
        srand(time(NULL));
        
        //start timer
        if( clock_gettime( CLOCK_REALTIME, &start) == -1 ) 
        {
            perror( "clock gettime" );
            return EXIT_FAILURE;
        }

        // Calling the stoer_Wagner Algo
        int minimum_cut = Stoer_Wagner(n, arr);

        //End timer
        if( clock_gettime( CLOCK_REALTIME, &stop) == -1 ) 
        {
            perror( "clock gettime" );
            return EXIT_FAILURE;
        }

        // finding total time taken to run the algorithm
        total_time = ( stop.tv_sec - start.tv_sec ) + (double)( stop.tv_nsec - start.tv_nsec ) / (double)BILLION;
        printf("%d %lf\n",n,total_time);
        
    }
}

int main()
{
   // freopen ("data_raw.txt","r",stdin);
    //freopen ("output.txt","r",stdout); remove // if you want to save the input in a file

     // number of vertices
    Runtime_analysis();
    
    
return 0;
}
