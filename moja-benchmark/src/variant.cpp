#include <Poco/Dynamic/Var.h>
#include <benchmark/benchmark.h>

//Variant
#include <any>
#include <variant>

//FMT
#include <fmt/core.h>

//Fast Format
//#include <fastformat/fastformat.hpp>
//#include <fastformat/sinks/ostream.hpp>

//Boost
#include <iostream>
#include <iomanip>
#include <cassert>

#include "boost/format.hpp"
using namespace std;
using boost::format;
using boost::io::group;

using namespace Poco::Dynamic;

static void BM_VarCreation(benchmark::State& state) {
  for (auto _ : state) Var any("42");
}
// Register the function as a benchmark
BENCHMARK(BM_VarCreation);

// Define another benchmark
static void BM_variantCreation(benchmark::State& state) {
  std::variant<std::string, int> data("42");
  for (auto _ : state) std::variant<std::string, int> data("42");
}
BENCHMARK(BM_variantCreation);

//FMT
static void BM_FMT(benchmark::State& state) {
    fmt::print("The answer is {}.", 42);
}
    BENCHMARK(BM_FMT);

//Fast Format 
    static void BM_Fast(benchmark::State& state) {
        //std::string             sink;
        //char const* arg0 = "arg0";
        //std::string             arg1 = "arg1";
        //int                     arg2 = 10;
        //sink.erase();
        //fastformat::fmt(sink, "A c-style string: {0}", arg0);
        //sink.erase();
        //fastformat::fmt(sink, "A std::string: {0}", arg1);
        //sink.erase();
        //fastformat::fmt(sink, "A c-style string: {0}, and a std::string: {1}", arg0, arg1);
        //sink.erase();
        //fastformat::fmt(sink, "A c-style string: {1}, and an int: {0}", arg2, arg0);
    }
    BENCHMARK(BM_Fast);
    
    
    //Boost
    static void BM_Boost(benchmark::State& state) {
        cout << format("%1% %2% %3% %2% %1% \n") % "11" % "22" % "333";
    }
    BENCHMARK(BM_Boost);

BENCHMARK_MAIN();