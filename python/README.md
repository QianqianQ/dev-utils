# Python Utility Functions

This folder contains commonly used Python utility functions for various tasks like string manipulation, file handling, date operations, and more.

## 🛠 Available Utilities

### String Utilities (`string_utils.py`)
| Function | Description |
|----------|------------|
| `to_snake_case(text: str) -> str` | Convert a string to `snake_case` |
| `to_camel_case(text: str) -> str` | Convert a string to `camelCase` |
| `to_camel_case(text: str) -> str` | Convert a string to `camelCase` |
| `extract_datetime_from_filename(filename: str) -> tuple[datetime.datetime, datetime.datetime])` | Extracts start and end datetime from a filename with a specific pattern |

---

### File Utilities (`file_utils.py`)
| Function | Description |
|----------|------------|
| `read_file(file_path: str) -> str` | Read a file and return its contents |
| `write_file(file_path: str, content: str)` | Write a string to a file |
| `get_file_size(file_path: str) -> int` | Get the size of a file in bytes |

---

### Date Utilities (`date_utils.py`)
| Function | Description |
|----------|------------|
| `current_timestamp() -> str` | Get the current timestamp |
| `days_between(date1: str, date2: str) -> int` | Calculate days between two dates |
| `add_working_days(start_date: date, days: int) -> date` | Add a specified number of working days to a date |
| `elapsed_since(start_time: float) -> str` | Calculate the elapsed time since the given start time |

---

### Json Utilities (`json_utils.py`)
| Function | Description |
|----------|------------|
| `read_json(file_path: str) -> dict` | Read a JSON file and return its contents as a dictionary |
| `write_json(file_path: str, data: dict)` | Write a dictionary to a JSON file |


### Graph Drawing Utilities (`graph_drawer.py`)

| Class | Description |
|----------|------------|
| `PlotlyGraphDrawer` | A class for creating and managing interactive graphs using Plotly |
| `PltGraphDrawer` | A class for creating and managing static graphs using Matplotlib. |


### Logging Utilities (`logging_utils.py`)

| Function | Description |
|----------|------------|
| `create_console_logger() -> logging.Logger` | Creates and configures a custom logger with a console handler |


### Tracking Utilities (`tracking_utils.py`)

| Function | Description |
|----------|------------|
| `get_process_memory(convert_to_mb)` | Get the memory usage of the current process |
| `analyze_memory_usage(func, *args, **kwargs)` | Analyzes the memory usage of a given function and displaying the top 10 memory-consuming lines of code |


### Decorators (`decorators.py`)
| Function | Description |
|----------|------------|
| `func_timeout(seconds, error_message)` | A decorator to enforce a timeout on the execution of a function |
| `method_timeout(func)` | A decorator to enforce a timeout on methods of a class |
| `track(func)` | A decorator that tracks the memory usage and execution time of a function |
