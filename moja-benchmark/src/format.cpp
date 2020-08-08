#include <benchmark/benchmark.h>

//TINY
#include <boost/format.hpp>
#include <iomanip>
#include <stdio.h>
#include "tinyformat.h"

// FMT
#include <fmt/format.h>

// Boost
#include <boost/algorithm/string/join.hpp>
#include <boost/format.hpp>
#include <boost/range/adaptor/transformed.hpp>


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

// Boost
static void BM_Boost_JOIN(benchmark::State& state) {
  auto the_answer =
      std::vector<double>{1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0};
  for (auto _ : state) {
    auto str =
        (boost::format("The answer is %1%.") %
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

//Tiny
static void BM_Tiny(benchmark::State& state) {

    std::string weekday = "Wednesday";
    const char* month = "July";
    size_t day = 27;
    long hour = 14;
    int min = 44;

    tfm::printf("%s, %s %d, %.2d:%.2d\n", weekday, month, day, hour, min);

}
BENCHMARK(BM_Tiny);