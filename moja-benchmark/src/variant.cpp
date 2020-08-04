#include <Poco/Dynamic/Var.h>
#include <benchmark/benchmark.h>

#include <any>
#include <variant>

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

BENCHMARK_MAIN();