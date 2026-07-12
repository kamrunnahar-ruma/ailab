#include <iostream>
#include <map>
#include <vector>
#include <queue>

using namespace std;

map<char, vector<pair<char,int>>> graph = {
    {'a', {{'b',4},{'c',3}}},
    {'b', {{'f',5},{'e',12}}},
    {'c', {{'e',10},{'d',7}}},
    {'d', {{'e',2}}},
    {'e', {{'z',5}}},
    {'f', {{'z',16}}},
    {'z', {}}
};

map<char,int> h = {
    {'a',14}, {'b',12}, {'c',11},
    {'d',6}, {'e',4}, {'f',11}, {'z',0}
};

void aStar(char start, char goal)
{
    priority_queue<pair<int,char>, vector<pair<int,char>>, greater<pair<int,char>>> pq;

    map<char,int> cost;
    cost[start] = 0;

    pq.push({h[start], start});

    while(!pq.empty())
    {
        char current = pq.top().second;
        pq.pop();

        cout << "Visited: " << current << endl;

        if(current == goal)
        {
            cout << "\nGoal found!" << endl;
            cout << "Cost: " << cost[goal] << endl;
            return;
        }

        for(auto next : graph[current])
        {
            char node = next.first;
            int edge = next.second;

            int newCost = cost[current] + edge;

            if(cost.find(node) == cost.end() || newCost < cost[node])
            {
                cost[node] = newCost;

                int f = newCost + h[node];
                pq.push({f, node});
            }
        }
    }

    cout << "Path not found";
}

int main()
{
    cout << "Starting A* Search\n" << endl;

    aStar('a','z');

    return 0;
}