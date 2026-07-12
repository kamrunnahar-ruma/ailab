#include <iostream>
#include <map>
#include <vector>
#include <queue>
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

void bfs(char start, char goal)
{
    queue<char> q;
    q.push(start);
    visited.insert(start);

    while(!q.empty())
    {
        char node = q.front();
        q.pop();

        cout << "Visited: " << node << endl;

        if(node == goal)
        {
            cout << "\n*** Goal node " << goal << " found! ***\n" << endl;
            return;
        }

        for(char next : graph[node])
        {
            if(visited.find(next) == visited.end())
            {
                visited.insert(next);
                q.push(next);
            }
        }
    }
}

int main()
{
    cout << "Starting Breadth First Search...\n" << endl;

    bfs('A','F');

    return 0;
}