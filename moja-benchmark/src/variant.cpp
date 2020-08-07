#include <benchmark/benchmark.h>

// Poco Variant
#include <Poco/Dynamic/Var.h>

// std Variant
#include <any>
#include <variant>

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

BENCHMARK_MAIN();