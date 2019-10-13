#include <wchar.h>
#include <vector>
#include <array>
#include <algorithm>
#include <set> 
#include <random> 
#include <iostream> 


using namespace std;

typedef vector<int> VI;
typedef vector<VI> VVI;

pair<int, VI> getMinCut(VVI &weights) 
{
    int N = weights.size();
    VI used(N), cut, best_cut;

    int best_weight = -1;
  
    for (int phase = N-1; phase >= 0; phase--) 
    {
        VI w = weights[0];

        VI added = used;

        int prev, last = 0;

        for (int i = 0; i < phase; i++) 
        {
            prev = last;
            last = -1;

            for (int j = 1; j < N; j++)
            {
                if (!added[j] && (last == -1 || w[j] > w[last]))
                    last = j;
            }

            if (i == phase-1) 
            {
                for (int j = 0; j < N; j++)
                    weights[prev][j] += weights[last][j];

                for (int j = 0; j < N; j++)
                    weights[j][prev] = weights[prev][j];

                used[last] = true;
                cut.push_back(last);  //  
                                      //
                                      //

                if (best_weight == -1 || w[last] < best_weight)
                {
                    best_cut = cut;
                    best_weight = w[last];
                }
            }
            else 
            {
                for (int j = 0; j < N; j++)
                {
                    w[j] += weights[last][j];
                    added[last] = true;
                }
            }
        }
    }
    return make_pair(best_weight, best_cut);
}


int main (int, char const**) {

    const int vertexCount = 10;
    const int vertexLink = 5;

    VVI array2d;


    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(1, vertexCount);

    array2d.resize(vertexCount);
    for (int i=0; i<vertexCount; ++i)
        array2d[i].resize(vertexCount);


    for (int n=0; n<vertexCount*vertexLink; ++n) {
        int i = dis(gen) - 1;
        int j = dis(gen) - 1;

        if (i == j)
            continue;

        int wt = 1;//dis(gen);

        //if (i < j)
            array2d[i][j] = wt;
        //else
            array2d[j][i] = wt;

    }


    std::cout << "graph {" << std::endl;

    for (int i=0; i<vertexCount; ++i) {
        for (int j=0; j<vertexCount; ++j) {
            if ( array2d[i][j] > 0 )
                if (j > i)
                    std::cout << i << " -- " << j << "[label=" << array2d[i][j] << "];" << std::endl;
        }

    }

    pair<int, VI> result = getMinCut(array2d);

    VI subGraph2(vertexCount);
    for (int i=0; i<result.second.size(); ++i)
        subGraph2[result.second[i]] = 1;

    cout << endl;
//    cout << "minWeight " << result.first << endl;

    cout << "subgraph cluster_R { " << endl;
    cout << "label = \" Min cut: " << result.first << "\";" << endl;
    cout << "rankdir = LR;";

    for (int i=0; i < (int)result.second.size(); ++i)
        cout << result.second[i] << " [style=filled,color=red];" << endl;

    std::cout << "}" << std::endl;

    cout << "subgraph cluster_M { " << endl;

    for (int i=0; i < (int)subGraph2.size(); ++i) {
        if (subGraph2[i] == 0)
        cout << i << " [style=filled,color=gray];" << endl;
    }

    std::cout << "}" << std::endl;


    std::cout << "}" << std::endl;

    return 0;
}

