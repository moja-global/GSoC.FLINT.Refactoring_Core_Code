#include <Poco/Dynamic/Var.h>
#include <benchmark/benchmark.h>

// Variant
#include <any>
#include <variant>

// FMT
#include <fmt/format.h>

// Fast Format
//#include <fastformat/fastformat.hpp>
//#include <fastformat/sinks/ostream.hpp>

// Boost
#include <boost/algorithm/string/join.hpp>
#include <boost/format.hpp>
#include <boost/range/adaptor/transformed.hpp>

using namespace std;
using namespace Poco::Dynamic;

static void BM_VarCreation(benchmark::State& state) {
  for (auto _ : state) {
    Var any("42");
  }
}
// Register the function as a benchmark
BENCHMARK(BM_VarCreation);

// Define another benchmark
static void BM_variantCreation(benchmark::State& state) {
  for (auto _ : state) {
    std::variant<std::string, int> data("42");
  }
}
BENCHMARK(BM_variantCreation);

static void BM_anyCreation(benchmark::State& state) {
  for (auto _ : state) {
    std::any data("42");
  }
}
BENCHMARK(BM_anyCreation);

// FMT
static void BM_FMT_JOIN(benchmark::State& state) {
  auto the_answer =
      std::vector<double>{1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0};
  for (auto _ : state) {
    auto str = fmt::format("The answer is {}.", fmt::join(the_answer, ", "));
  }
}
BENCHMARK(BM_FMT_JOIN);

static void BM_FMT_STR(benchmark::State& state) {
  auto the_answer = std::string("42");
  for (auto _ : state) {
    auto str = fmt::format("The answer is {}.", the_answer);
  }
}
BENCHMARK(BM_FMT_STR);

static void BM_FMT_INT(benchmark::State& state) {
  for (auto _ : state) {
    auto str = fmt::format("The answer is {}.", 42);
  }
}
BENCHMARK(BM_FMT_INT);

static void BM_FMT_FLOAT(benchmark::State& state) {
  for (auto _ : state) {
    auto str = fmt::format("The answer is {}.", 42.0f);
  }
}
BENCHMARK(BM_FMT_FLOAT);

static void BM_FMT_DOUBLE(benchmark::State& state) {
  for (auto _ : state) {
    auto str = fmt::format("The answer is {}.", 42.0);
  }
}
BENCHMARK(BM_FMT_DOUBLE);

// Fast Format
static void BM_Fast(benchmark::State& state) {
  // std::string             sink;
  // char const* arg0 = "arg0";
  // std::string             arg1 = "arg1";
  // int                     arg2 = 10;
  // sink.erase();
  // fastformat::fmt(sink, "A c-style string: {0}", arg0);
  // sink.erase();
  // fastformat::fmt(sink, "A std::string: {0}", arg1);
  // sink.erase();
  // fastformat::fmt(sink, "A c-style string: {0}, and a std::string: {1}",
  // arg0, arg1); sink.erase(); fastformat::fmt(sink, "A c-style string: {1},
  // and an int: {0}", arg2, arg0);
}
// BENCHMARK(BM_Fast);

// Boost
static void BM_Boost_JOIN(benchmark::State& state) {
  auto the_answer =
      std::vector<double>{1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0};
  for (auto _ : state) {
    auto str = (boost::format("The answer is %1%.") %
                boost::algorithm::join(
                    the_answer |
                        boost::adaptors::transformed(
                     static_cast<std::string (*)(double)>(std::to_string)),
                    "_"))
                   .str();
  }
}
BENCHMARK(BM_Boost_JOIN);

static void BM_Boost_STR(benchmark::State& state) {
  auto the_answer = std::string("42");
  for (auto _ : state) {
    auto str = boost::format("The answer is %1%.") % the_answer;
  }
}
BENCHMARK(BM_Boost_STR);

static void BM_Boost_INT(benchmark::State& state) {
  for (auto _ : state) {
    auto str = boost::format("The answer id %1%.") % 42;
  }
}
BENCHMARK(BM_Boost_INT);

static void BM_Boost_FLOAT(benchmark::State& state) {
  for (auto _ : state) {
    auto str = boost::format("The answer id %1%.") % 42.0f;
  }
}
BENCHMARK(BM_Boost_FLOAT);

static void BM_Boost_DOUBLE(benchmark::State& state) {
  for (auto _ : state) {
    auto str = boost::format("The answer id %1%.") % 42.0;
  }
}
BENCHMARK(BM_Boost_DOUBLE);

BENCHMARK_MAIN();