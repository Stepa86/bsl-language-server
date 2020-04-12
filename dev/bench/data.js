window.BENCHMARK_DATA = {
  "lastUpdate": 1586685562794,
  "repoUrl": "https://github.com/Stepa86/bsl-language-server",
  "entries": {
    "BSL LS perfomance measurement (SSL 3.1)": [
      {
        "commit": {
          "author": {
            "email": "olegtymko@yandex.ru",
            "name": "Oleg Tymko",
            "username": "otymko"
          },
          "committer": {
            "email": "noreply@github.com",
            "name": "GitHub",
            "username": "web-flow"
          },
          "distinct": true,
          "id": "a96ffc5e9403a211648c232117bcd906a72bfba9",
          "message": "Total не подходит при нескольких замерах\n\ntotal -> mean",
          "timestamp": "2020-04-11T21:56:46+07:00",
          "tree_id": "4f7dae6312c530b92c95d0b8edb1049a6d987656",
          "url": "https://github.com/Stepa86/bsl-language-server/commit/a96ffc5e9403a211648c232117bcd906a72bfba9"
        },
        "date": 1586685561964,
        "tool": "pytest",
        "benches": [
          {
            "name": ".github/scripts/benchmark.py::test_analyze_ssl31",
            "value": 70.81874426205952,
            "unit": "sec",
            "range": "stddev: 1.1945632034679514",
            "extra": "mean: 70.81874426205952 sec\nrounds: 3"
          }
        ]
      }
    ]
  }
}