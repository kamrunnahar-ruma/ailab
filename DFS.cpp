#include <iostream>
#include <map>
#include <vector>
#include <set>

using namespace std;

map<char, vector<char>> graph = {
    {'A', {'B','C','D'}},
    {'B', {'E','F'}},
    {'C', {}},
    {'D', {'G'}},
    {'E', {'H'}},
    {'F', {}},
    {'G', {}},
    {'H', {}}
};

set<char> visited;
bool found = false;

void dfs(char node, char goal)
{
    if(found) return;

    visited.insert(node);
    cout << "Visited: " << node << endl;

    if(node == goal)
    {
        cout << "\n*** Goal node " << goal << " found! ***\n" << endl;
        found = true;
        return;
    }

    for(char next : graph[node])
    {
        if(visited.find(next) == visited.end())
            dfs(next, goal);
    }
}

int main()
{
    cout << "Starting Depth First Search...\n" << endl;

    dfs('A','F');

    return 0;
}