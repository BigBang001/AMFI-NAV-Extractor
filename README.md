## AMFI NAV Extractor

This script extracts **Scheme Name** and **Asset Value (NAV)** from [AMFI India NAVAll.txt](https://www.amfiindia.com/spages/NAVAll.txt) and saves the result in a **TSV file** for easy analysis.
Optionally, the data can also be converted to **JSON** for API or app consumption.

---

### 🚀 Features

*  Extracts **Scheme Name** and **NAV** values
*  Saves data in **TSV format** (Excel/Sheets ready)
*  Optionally outputs **JSON** (for APIs and apps)
*  Uses simple, portable shell scripting (no extra dependencies)

---

### Output Samples

#### 🔹 `schemes.tsv`  (Tab-separated, Excel-friendly)

```
Scheme Name	Asset Value (NAV)
Axis Bluechip Fund - Regular Plan	62.532
SBI Equity Hybrid Fund	216.587
...
```

#### 🔹 `schemes.json`  (Optional, for apps)

```json
[
  {"Scheme Name": "Axis Bluechip Fund - Regular Plan", "Asset Value (NAV)": "62.532"},
  {"Scheme Name": "SBI Equity Hybrid Fund", "Asset Value (NAV)": "216.587"}
]
```

---

### ⚙️ How to Run

1. Clone or download this repository.

2. Give execution permission to the script:

   ```bash
   chmod +x extract_nav.sh
   ```

3. Run the script:

   ```bash
   ./extract_nav.sh
   ```

4. ✅ Outputs:

   * `schemes.tsv`
   * (Optional) `schemes.json`

---

### ❓ TSV vs JSON — Why Both?

| **Format** | **Best For**                                     |
| ---------- | ------------------------------------------------ |
| **TSV**    | Excel, Google Sheets, CLI tools, Finance Teams   |
| **JSON**   | APIs, Web apps, Mobile apps, Developers          |       
