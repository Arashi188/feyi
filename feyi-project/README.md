# Adebayo Omofeyi — Data Analyst Portfolio

A modern, fast, accessible, and lightweight portfolio website showcasing six data analytics and data engineering projects spanning **Excel, Power BI, SQL, Python, and Web Deployment**.

Built strictly with vanilla HTML5, CSS3, and JavaScript — no frameworks, zero dependencies, full WCAG AA contrast compliance, responsive across 360px–1440px viewports, and ready for deployment on **GitHub Pages**.

---

## 🌐 Live Website

- **Production URL:** `https://0fey001.github.io/`
- **Target Repository:** `https://github.com/0fey001/0fey001.github.io`

---

## 📁 Repository Structure

```text
├── index.html                           # Main portfolio homepage (single-page architecture)
├── 404.html                             # Custom 404 page styled with site design
├── .nojekyll                            # Tells GitHub Pages to bypass Jekyll processing
├── FACTS.md                             # Comprehensive verification ledger of all data points
├── README.md                            # Documentation and deployment guide
│
├── Business_Financial.xlsx              # Project 1: Excel Financial Performance Dashboard
├── Power_BI_Messy_Sales_Dataset.xlsx    # Project 2: Messy Sales Dataset
├── clean messy data class1.pbix.zip     # Project 2: Final Power BI report archive
├── intermediate.pbix.zip                # Project 2: Checkpoint report archive
├── smart_household_optimizer_sanitized.ipynb # Project 3: Sanitized Python notebook (no secrets)
├── smart_household_optimizer.ipynb      # Project 3: Sanitized notebook
├── Household chore.sql                  # Project 3: MySQL database and chore queries
├── Hospital_queries.sql                 # Project 4: Healthcare relational database queries
├── 1.GRawData.ipynb                     # Project 5: Synthetic dataset generator notebook
│
├── assets/
│   ├── resume.pdf                       # (Optional) Place your CV/resume here to activate the button
│   └── images/
│       ├── placeholder.svg              # Neutral placeholder dashboard graphic
│       ├── project1-financial.png       # (Optional) Screenshot of Excel Dashboard
│       ├── project2-powerbi.png         # (Optional) Screenshot of Power BI Report
│       ├── project3-chores.png          # (Optional) Screenshot of Chore Optimizer
│       ├── project4-hospital.png        # (Optional) Screenshot of Hospital Database ERD/Queries
│       └── project5-generator.png       # (Optional) Screenshot of Python Generator
│
└── old/                                 # Legacy files archived safely (not linked on live site)
    ├── company-data.html
    ├── index.html
    ├── script.js
    └── style.css
```

---

## 🚀 Step-by-Step Publishing to GitHub Pages

To publish this website on your free GitHub Pages domain (`0fey001.github.io`):

### Step 1: Create the GitHub Repository
1. Log in to [GitHub](https://github.com/).
2. Create a new repository named exactly:
   ```
   0fey001.github.io
   ```
   *(Making it public is required for free GitHub Pages).*

### Step 2: Push Your Local Files
Open PowerShell in this project folder and run:
```powershell
# 1. Initialize git (if not already done)
git init

# 2. Add all files to staging
git add .

# 3. Commit changes
git commit -m "Launch professional Data Analyst portfolio"

# 4. Set branch to main
git branch -M main

# 5. Link to your remote GitHub repository
git remote add origin https://github.com/0fey001/0fey001.github.io.git

# 6. Push to GitHub
git push -u origin main
```

### Step 3: Enable GitHub Pages in Repository Settings
1. On GitHub, navigate to your repository `0fey001.github.io`.
2. Click **Settings** (gear icon) -> **Pages** (under "Code and automation" in the left sidebar).
3. Under **Build and deployment**:
   - **Source**: `Deploy from a branch`
   - **Branch**: Select `main` and folder `/ (root)`
   - Click **Save**.
4. In 1–2 minutes, GitHub will deploy your site to:
   ```
   https://0fey001.github.io/
   ```

---

## 🛠️ Personalizing Your Portfolio

### 1. Adding Your Resume / CV
- Place your PDF file at:
  ```
  assets/resume.pdf
  ```
- In `index.html`, set `CONFIG.cv = "assets/resume.pdf"`.
- When present, the **"Download CV" / "View resume"** buttons automatically reveal themselves. If the file is not found, the buttons stay cleanly hidden without broken links.

### 2. Adding Profile Photo
- Save your portrait image (e.g., `me.jpg` or `profile.jpg`) in `assets/images/`.
- In `index.html`, set `CONFIG.photo = "assets/images/me.jpg"`.

### 3. Adding Dashboard Screenshots
- When you export screenshots of your Excel and Power BI dashboards, save them in `assets/images/` as PNG or JPG.
- Open `index.html` and update the `image` property in the `DATA` array:
  ```javascript
  {
    id: "business-financial",
    image: "assets/images/project1-financial.png",
    ...
  }
  ```
- If left blank (`""`), the portfolio displays an elegant, high-contrast vector chart placeholder automatically.

---

## 🔒 Security Notice
- All database credentials in `smart_household_optimizer.ipynb` have been removed and replaced with environment variable loaders (`os.getenv('MYSQL_PASSWORD')`).
- A clean repository scan confirmed **zero hardcoded secrets**.
"# feyi-port" 
"# feyi-port" 
