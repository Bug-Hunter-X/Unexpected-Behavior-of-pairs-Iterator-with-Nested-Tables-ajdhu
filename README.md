# Lua pairs Iterator Unexpected Behavior with Nested Tables

This repository demonstrates a potential issue with Lua's `pairs` iterator when used with nested tables that are modified during iteration. The issue can lead to infinite loops or elements being skipped.

## Bug Description
The `pairs` iterator, while efficient, doesn't guarantee a specific iteration order and can lead to unexpected results when nested tables are modified within the loop.  The example showcases a scenario where this unexpected behavior could occur.

## How to Reproduce
1. Clone this repository.
2. Run the `bug.lua` script.
3. Observe that there is no clear error, but the intended recursive traversal does not function correctly.  This is because the iterator is not behaving predictably when nested tables are involved.

## Solution
The provided `bugSolution.lua` script illustrates a solution using an alternative approach to iterate through the nested tables guaranteeing complete and correct traversal.

## Disclaimer
This is not a bug in Lua itself, but rather a consequence of how `pairs` operates. Understanding the limitations and potential side effects of modifying tables during iteration is crucial for writing robust Lua code.