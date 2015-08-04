## Extract the IDs from the data set
[Extract the IDs from the data set](https://www.codewars.com/kata/extract-the-ids-from-the-data-set)
Category : algorithms

### Description
Complete the method so that it returns an array of all ID's  passed in. The data structure will be similar to the following:

```javascript
var data = {
  id: 1,
  items: [
    {id: 2},
    {id: 3, items: [
      {id: 4},
      {id: 5}
    ]}
  ]
}

extractIds(data) // should return [1,2,3,4,5]
```
```coffeescript
data =
  id: 1
  items: [
    {id: 2}
    {id: 3, items: [
      {id: 4}
      {id: 5}
    ]}
  ]


extractIds(data) # should return [1,2,3,4,5]
```
```ruby
data = {
  id: 1,
  items: [
    {id: 2},
    {id: 3, items: [
      {id: 4},
      {id: 5}
    ]}
  ]
}

extract_ids(data) # should return [1,2,3,4,5]
extract_ids({}) # should return []
```

The method should be able to handle the case of empty data being passed in. 

*Note:* The only arrays that need to be traversed are those assigned to the "items" property.

### Tags
Algorithms; Arrays; Data Types; Mapping; Logic

- - -
