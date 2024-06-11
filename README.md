# Example of using IRIS Unit Test

## How to start/stop 

* [start.sh](./start.sh) - spins up all containers via docker-compose and 
    invokes iris/configure.sh in the iris containers
* [stop.sh](./stop.sh) - removes all containers


## How to run Unit Test

From an IRIS terminal session, you first have to set the **^UnitTestRoot** global to inform the system where to find your tests classes, 
then you just have to run your tests by executing ***##class(%UnitTest.Manager).RunTest()***.
After that, all your tests results can be found in the [UnitTest Portal](http://localhost:8000/csp/sys/%25UnitTest.Portal.Home.cls?$NAMESPACE=IRISAPP)

1. Open an IRIS Terminal Session 
```shell
docker exec -ti iris-unit-test iris session iris
```
2. Run UnitTest
```objectscript
set ^UnitTestRoot="/data/unittests"
do ##class(%UnitTest.Manager).RunTest()
```
3. Display results in IRIS [UnitTest Portal](http://localhost:8000/csp/sys/%25UnitTest.Portal.Home.cls?$NAMESPACE=IRISAPP)



## Unit Test documentation
[IRIS %UnitTest Framework](https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GUNITTEST_about)
