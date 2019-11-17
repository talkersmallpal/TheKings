tests
testCounter1

|testCounter|

testCounter:=Counter new.

testCounter increase; increase; decrease; increase: 9; decrease; increase: 10.
 
self assert: (testCounter number = 19).