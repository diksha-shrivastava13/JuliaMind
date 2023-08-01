Hey! :)

I'm gonna set up task lists for each of the modules as issues. Let's follow this basic procedure to get through the tasks:

1. Select a task from the tasklist with ToDo label.
2. Create a new issue with just the "functionName_moduleName" as the title.
3. Comment on the tasklist with "- [ ] #issue_number" to link the issue to the list.
4. Open a PR whenever you're ready.

The branch protection rules right now are set up such that each function will require a PR.
Please also explore testing on Julia and add a test for each of the functions :)

If you get time, explore github actions so that checks are triggered whenever any PR is created.
And it can be merged only when all the checks are passing.