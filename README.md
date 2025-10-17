# Advanced Concrete Mix Design Dashboard

A comprehensive, professional web-based dashboard for concrete mix design with **Supplementary Cementitious Materials (SCMs)**, **Fine Aggregate Alternatives**, **Chemical Admixtures**, **Manual W/C Ratio Control**, and **Automatic Concrete Type Classification** using ACI method principles.

## 🌟 Major Features

### 🎯 NEW: Intelligent Concrete Type Classification

The dashboard automatically identifies and displays the type of concrete being designed based on your inputs:

- **Normal Concrete** - Standard structural concrete (20-40 MPa, W/C 0.40-0.60)
- **High-Performance Concrete (HPC)** - High strength with enhanced durability (40-60 MPa, W/C ≤0.40)
- **Ultra-High Performance Concrete (UHPC)** - Exceptional strength (>60 MPa, W/C <0.35, with silica fume)
- **Self-Compacting Concrete (SCC)** - Flows without vibration (>200mm slump, VMA, high SP dosage)
- **Mass Concrete** - Low heat generation (≥50% SCM, ≤35 MPa)

Each classification includes:
- Type identification with color-coded badge
- Description and characteristics
- Typical applications
- Key technical parameters

### 💧 NEW: Manual W/C Ratio Control

**Toggle between Auto and Manual modes:**

**Auto Mode (Default):**
- W/C ratio calculated per ACI guidelines
- Based on target strength and exposure conditions
- Ensures code compliance

**Manual Mode:**
- Full control over W/C ratio (0.25-0.70)
- For experienced engineers
- Custom mix optimization
- Warning for exposure compliance

### 🚀 NEW: Quick Preset Buttons

One-click presets for common concrete types:
- 🏢 **Normal Concrete** - M30 with 25% Fly Ash
- ⚡ **High-Performance** - M50 with Silica Fume + Fly Ash + PCE
- 💎 **Ultra-High Performance** - M70 with SF + Metakaolin + PCE
- 🌊 **Self-Compacting** - M35 with Fly Ash + PCE + VMA
- 🏔️ **Mass Concrete** - M25 with GGBS + Fly Ash + Retarder
- 🌊 **Marine Grade** - M40 with GGBS + Silica Fume + PCE

### 📊 Enhanced Grade Selection

- **Predefined Grades**: M15 to M80
- **Custom Grade Option**: Any strength up to 120 MPa
- Automatic parameter adjustment
- Quality control integration

### 🔬 Supplementary Cementitious Materials (SCMs)

Complete cement replacement options with real-time calculations and benefits display:

#### 1. **Fly Ash**
- **Class F (Low Calcium)**: 10-40% replacement
  - Pozzolanic properties
  - Reduces heat of hydration
  - Improves long-term strength and durability
  - Reduces water demand by ~8%
  - Typical SG: 2.2-2.4

- **Class C (High Calcium)**: 10-40% replacement
  - Both pozzolanic and cementitious properties
  - Better early strength than Class F
  - Self-cementitious behavior
  - Reduces permeability
  - Typical SG: 2.5-2.7

#### 2. **GGBS (Ground Granulated Blast Furnace Slag)**
- **Replacement**: 25-75%
- **Benefits**:
  - Excellent sulfate resistance
  - Very low heat of hydration
  - Superior long-term strength
  - High density concrete
  - Reduces water demand by ~5%
- **Typical SG**: 2.85-2.95
- **Best for**: Marine structures, mass concrete, sulfate-rich environments

#### 3. **Silica Fume (Microsilica)**
- **Replacement**: 3-15%
- **Benefits**:
  - Ultra-high strength concrete (>70 MPa)
  - Very low permeability
  - Excellent chloride resistance
  - Pore refinement
  - 15% strength efficiency factor
- **Note**: Increases water demand by ~15%; requires superplasticizer
- **Typical SG**: 2.20-2.30
- **Best for**: High-performance concrete, marine structures, parking structures

#### 4. **Metakaolin**
- **Replacement**: 5-20%
- **Benefits**:
  - Enhanced durability
  - Reduced efflorescence (white deposits)
  - Improved aesthetics
  - Good early strength
  - Excellent ASR resistance
- **Typical SG**: 2.50-2.60
- **Best for**: Architectural concrete, high-durability applications

#### 5. **Rice Husk Ash (RHA)**
- **Replacement**: 5-20%
- **Benefits**:
  - Sustainable agricultural waste product
  - High pozzolanic activity (when properly processed)
  - Improved strength
  - Reduced permeability
  - Carbon-neutral material
- **Typical SG**: 2.10-2.20
- **Best for**: Sustainable construction, rural applications

### 🪨 Fine Aggregate Alternatives

#### Primary Fine Aggregate Options:
1. **Natural River/Pit Sand**
   - Traditional sand source
   - SG: ~2.65
   - Rounded particles, good workability

2. **Manufactured Sand (M-Sand)**
   - Crushed stone sand
   - SG: ~2.74
   - Angular particles, better bonding
   - Sustainable alternative to natural sand

3. **Mixed (50% Natural + 50% M-Sand)**
   - Balanced properties
   - SG: ~2.70
   - Combines benefits of both

#### Additional Fine Aggregate Replacements:

**Quarry Dust** (0-50% replacement)
- By-product of stone crushing
- SG: 2.68
- Improves cohesion
- Reduces segregation
- Fills micro-voids

**Stone Dust** (0-40% replacement)
- Finer than quarry dust
- SG: 2.70
- Fills voids effectively
- Improves compaction
- Reduces bleeding

### ⚗️ Chemical Admixtures Suite

#### Superplasticizers (High Range Water Reducers)
1. **PCE (Polycarboxylate Ether)**: 18-40% water reduction
   - Latest generation
   - Excellent slump retention
   - Best for high-performance concrete

2. **SNF (Sulphonated Naphthalene)**: 12-30% water reduction
   - Second generation
   - Good performance
   - Cost-effective

3. **SMF (Sulphonated Melamine)**: 12-28% water reduction
   - Second generation
   - Good for precast

4. **Lignosulfonate**: 8-18% water reduction
   - First generation
   - Basic plasticizer
   - Most economical

#### Other Admixtures:
- **Air-Entraining Agent**: 3-9% air content
- **Retarder**: Delays setting (hot weather)
- **Accelerator**: Speeds setting (cold weather)
- **Waterproofing Agent**: Reduces permeability
- **Viscosity Modifying Agent (VMA)**: For SCC

## 🎯 Key Calculation Features

### Intelligent Mix Design
- **Automatic W/C ratio optimization** based on:
  - Target strength
  - SCM efficiency factors
  - Exposure conditions
  - Admixture effects

- **Water demand adjustment** for:
  - Fly ash: -8% per replacement
  - GGBS: -5% per replacement
  - Silica fume: +15% (requires superplasticizer)
  - Metakaolin: +10%
  - RHA: +8%

- **Strength efficiency factors**:
  - Fly ash Class F: 0.95
  - GGBS: 0.92
  - Silica fume: 1.15 (enhancement)
  - Metakaolin: 1.05
  - RHA: 1.02

### Advanced Features
1. **Multiple SCM combinations** (up to 75% total replacement)
2. **Real-time CO₂ savings calculation**
3. **Comprehensive material breakdown**
4. **Sustainability impact assessment**
5. **Fine aggregate composition tracking**
6. **Complete admixture dosage calculations**

## 📊 Dashboard Sections

### 1. Design Requirements
- Target strength (10-100 MPa)
- Exposure conditions (Mild to Marine/Coastal)
- Max aggregate size (10/20/40 mm)
- Workability/Slump (25-225+ mm, including SCC)
- Standard deviation for quality control

### 2. SCM Selection (NEW!)
- ✅ Fly Ash (Class F or C)
- ✅ GGBS/Slag Cement
- ✅ Silica Fume
- ✅ Metakaolin
- ✅ Rice Husk Ash
- Adjustable replacement percentages with sliders
- Individual specific gravity inputs
- Real-time benefit descriptions

### 3. Fine Aggregate Options (NEW!)
- Primary aggregate selection (Natural/M-Sand/Mixed)
- Quarry dust addition (0-50%)
- Stone dust addition (0-40%)
- Automatic SG updates
- Composition breakdown in results

### 4. Chemical Admixtures
- Superplasticizer with 4 types
- Air-entraining agent
- Set modifiers (retarder/accelerator)
- Waterproofing agent
- VMA for self-compacting concrete

### 5. Cement & Parameters
- Primary cement type selection
- Placement method
- Quality control degree
- Volume calculation

### 6. Comprehensive Results Display
- OPC cement quantity
- SCM quantities (individual and total)
- Total cementitious content
- Water content (with reduction effect)
- Fine and coarse aggregate
- W/C ratio (optimized)
- Mix strength

**Additional Result Sections:**
- 🔬 SCM Composition & Benefits
- 🪨 Fine Aggregate Composition
- 🧪 Chemical Admixtures Used
- 🌱 Sustainability Impact (CO₂ savings)
- Mix proportions by weight
- Total quantities for specified volume

## 🚀 How to Use

### Basic Usage
1. Open `index.html` in any modern web browser
2. Set your design requirements (strength, exposure, workability)
3. Select material properties

### With SCMs (Recommended)
4. **Enable SCM(s)** - Check boxes for desired materials:
   - Fly Ash for general applications
   - GGBS for marine/sulfate environments
   - Silica Fume for ultra-high strength
   - Metakaolin for aesthetics and durability
   - RHA for sustainable construction

5. **Adjust replacement percentages** using sliders
6. System automatically calculates water demand and strength effects

### With Fine Aggregate Alternatives
7. Select primary fine aggregate type (Natural/M-Sand/Mixed)
8. Add quarry dust or stone dust if desired
9. Adjust percentages to optimize workability

### With Admixtures
10. Enable superplasticizer (especially with silica fume)
11. Add other admixtures as needed
12. System calculates water reduction automatically

### Calculate & Review
13. Click "Calculate Mix Design"
14. Review comprehensive results including:
    - Material quantities
    - SCM benefits
    - Sustainability impact
    - CO₂ savings

## 📈 Example Mix Designs

### Example 1: High-Performance Concrete (50 MPa)
- OPC 53: 280 kg/m³
- Silica Fume: 30 kg/m³ (10%)
- Fly Ash (Class F): 60 kg/m³ (20%)
- PCE Superplasticizer: 1.5%
- Water: 155 kg/m³
- W/C ratio: 0.42
- **Result**: Ultra-durable, low permeability concrete

### Example 2: Sustainable Mass Concrete (30 MPa)
- OPC 53: 200 kg/m³
- GGBS: 200 kg/m³ (50%)
- Natural + M-Sand mix
- Retarder for low heat
- Water: 165 kg/m³
- **Result**: Low heat, sustainable, excellent long-term strength

### Example 3: Marine Structure (40 MPa)
- OPC 53: 240 kg/m³
- GGBS: 120 kg/m³ (33%)
- Silica Fume: 18 kg/m³ (5%)
- M-Sand with 30% quarry dust
- PCE Superplasticizer: 1.2%
- W/C ratio: 0.38
- **Result**: Excellent chloride and sulfate resistance

## 🌍 Sustainability Benefits

### CO₂ Emission Reductions
- **OPC production**: ~0.85 kg CO₂ per kg cement
- **Fly Ash**: Near-zero additional CO₂ (waste product)
- **GGBS**: ~0.06 kg CO₂ per kg (vs 0.85 for OPC)
- **Silica Fume**: Waste product from silicon production

### Example Savings (for 100 m³ concrete):
- **30% Fly Ash replacement**: Save ~10,000 kg CO₂
- **50% GGBS replacement**: Save ~16,000 kg CO₂
- **Combined SCMs**: Save 15,000-25,000 kg CO₂

### Resource Conservation
- **M-Sand**: Preserves natural river sand
- **Quarry/Stone Dust**: Utilizes quarry waste
- **SCMs**: Diverts industrial waste from landfills

## 📋 Technical Specifications

### Calculation Method
- Based on ACI 211.1 guidelines
- Absolute volume method
- Modified for SCM inclusions
- Considers SCM-specific properties

### SCM Adjustments
- Water demand factors
- Strength efficiency factors
- Setting time considerations
- Long-term strength development

### Compliance
- Suitable for preliminary mix design
- Based on international standards
- Follows industry best practices

## ⚠️ Important Notes

### Always Remember:
1. **Trial mixes are essential** - This calculator provides preliminary designs
2. **Verify SCM quality** - Properties vary between sources
3. **Follow manufacturer guidelines** - For admixtures and SCMs
4. **Conduct laboratory tests** - Before full-scale production
5. **Consider curing requirements** - SCMs often need extended curing
6. **Check local codes** - Some regions have specific SCM limits
7. **Consult structural engineer** - For critical applications

### SCM-Specific Considerations:
- **Fly ash**: May reduce early strength (< 7 days)
- **GGBS**: Requires proper curing, slower early strength
- **Silica fume**: MUST use with superplasticizer
- **Metakaolin**: Higher cost but excellent performance
- **RHA**: Quality varies; ensure proper processing

### Maximum Recommended Replacements:
- Fly ash: 40% (general), 50% (mass concrete)
- GGBS: 75% (maximum tested)
- Silica fume: 15% (higher affects workability)
- Metakaolin: 20%
- RHA: 20%
- **Total combined**: 75% maximum

## 🛠️ Technical Details

- **Technology**: Pure HTML, CSS, JavaScript
- **No dependencies**: Works offline
- **No server required**: Run directly in browser
- **File size**: ~30 KB (single file)
- **Compatibility**: All modern browsers
- **Mobile friendly**: Responsive design

## 📚 References & Standards

- ACI 211.1: Standard Practice for Selecting Proportions for Normal, Heavyweight, and Mass Concrete
- ACI 232.2R: Use of Fly Ash in Concrete
- ACI 233R: Slag Cement in Concrete and Mortar
- ACI 234R: Guide for the Use of Silica Fume in Concrete
- ASTM C618: Standard Specification for Coal Fly Ash and Raw or Calcined Natural Pozzolan
- IS 456: Indian Standard for Plain and Reinforced Concrete
- IS 3812: Specification for Pulverized Fuel Ash (Fly Ash)

## 🎓 Educational Value

This dashboard serves as:
- **Learning tool** for concrete technology students
- **Reference** for practicing engineers
- **Planning tool** for sustainable construction
- **Cost estimator** for material quantities
- **Environmental impact assessor**

## 🔄 Version History

**v3.0** (Current)
- ✅ Added 5 SCM types (Fly Ash, GGBS, Silica Fume, Metakaolin, RHA)
- ✅ Fine aggregate alternatives (M-Sand, Quarry Dust, Stone Dust)
- ✅ SCM-specific water demand adjustments
- ✅ Strength efficiency factors
- ✅ CO₂ emissions calculator
- ✅ Sustainability impact assessment
- ✅ Enhanced UI with color-coded sections
- ✅ Comprehensive benefits display

**v2.0**
- Chemical admixtures integration
- Superplasticizer with W/C optimization
- Multiple admixture types

**v1.0**
- Basic mix design calculator
- ACI method implementation

## 📧 Usage Tips

### For High-Strength Concrete:
- Use silica fume (7-10%) + PCE superplasticizer
- Keep W/C < 0.40
- Use OPC 53 grade
- Consider metakaolin for additional strength

### For Sustainable Construction:
- Maximize GGBS or fly ash (40-50%)
- Use M-Sand instead of natural sand
- Add quarry/stone dust
- Track CO₂ savings

### For Marine Structures:
- Use GGBS (50%) + Silica Fume (5%)
- W/C ratio < 0.40
- PCE superplasticizer mandatory
- Consider metakaolin for ASR resistance

### For Mass Concrete:
- Use fly ash (30-40%) or GGBS (50%)
- Add retarder
- Keep cement content low
- Monitor heat of hydration

## 🤝 Best Practices

1. **Start conservative** - Begin with lower SCM percentages
2. **Combine wisely** - Fly ash + GGBS or Fly ash + Silica fume work well
3. **Always use SP with SF** - Silica fume requires superplasticizer
4. **Extended curing for SCMs** - Especially for fly ash and GGBS
5. **Test early strength** - Monitor 3-day and 7-day strengths
6. **Adjust for local materials** - Properties vary by source
7. **Document everything** - Keep records of sources and batches

---

## 👨‍🔬 Development Team

**Developed by:**
- **Dr. Riaz Bhanbhro** - Lead Developer
- **Dr. Mahboob Oad** - Technical Advisor
- **Dr. Muneeb Memon** - Research Consultant

**Institution:**
**🏛️ Quaid-e-Awam University of Engineering, Science & Technology (QUEST)**
Civil Engineering Department
Nawabshah, Sindh, Pakistan

**Year:** 2025

---

## 🎨 Design Features

### Modern & Beautiful UI
- **Gradient Backgrounds**: Purple gradient theme with smooth animations
- **Glass Morphism**: Frosted glass effects on information cards
- **Smooth Animations**: Fade-in, slide-in, and hover animations
- **Color-Coded Sections**: Different colors for SCMs, Aggregates, and Admixtures
- **Interactive Elements**: Animated buttons, sliders, and toggle switches

### Fully Responsive Design
- **Desktop Optimized**: Up to 1900px wide layouts
- **Tablet Support**: Adaptive grid layouts (768px - 1024px)
- **Mobile First**: Optimized for phones (320px+)
- **Touch Friendly**: Large tap targets and spacing
- **Adaptive Typography**: Scalable fonts for all screen sizes

### Professional Academic Layout
- **Header Section**: Prominent university branding and team credits
- **Footer Section**: Complete academic attribution and copyright
- **Information Hierarchy**: Clear visual organization
- **Print Ready**: Optimized for documentation

---

## 🌟 Enhanced Visual Features

### Card Designs
- **3D Effects**: Shadow and depth on hover
- **Gradient Borders**: Color-coded for different sections
- **Rounded Corners**: Modern 20px border radius
- **Smooth Transitions**: 0.4s cubic-bezier animations

### Interactive Elements
- **Custom Range Sliders**: Gradient-styled with shadow effects
- **Toggle Switches**: Smooth sliding animation with gradient colors
- **Pulse Animations**: Concrete type badges pulse gently
- **Button Hover Effects**: Scale and shadow transformations

### Color System
- **Primary**: Purple gradient (#667eea to #764ba2)
- **SCM Section**: Orange gradient (#e67e22 to #d35400)
- **Aggregates**: Green gradient (#27ae60 to #229954)
- **Admixtures**: Blue gradient (#2196f3 to #1565c0)
- **Warnings**: Red gradient for alerts
- **Info**: Yellow gradient for information

---

## 📱 Responsive Breakpoints

### Desktop (>1024px)
- Multi-column grid layout
- All features fully expanded
- Optimal viewing experience

### Tablet (768px - 1024px)
- 2-column grid layout
- Adjusted font sizes
- Maintained functionality

### Mobile (480px - 768px)
- Single column layout
- Stacked preset buttons
- Larger touch targets
- Simplified results grid

### Small Mobile (<480px)
- Optimized for small screens
- Reduced padding and margins
- Larger fonts for readability
- Full-width buttons

---

## 💻 Technical Specifications

### Technologies Used
- **HTML5**: Semantic markup
- **CSS3**: Advanced features (Grid, Flexbox, Animations, Gradients)
- **JavaScript (ES6+)**: Modern syntax and features
- **No Dependencies**: Pure vanilla code, works offline

### Browser Support
- ✅ Chrome/Edge (Latest)
- ✅ Firefox (Latest)
- ✅ Safari (Latest)
- ✅ Mobile browsers

### Performance
- **File Size**: ~35KB (single file)
- **Load Time**: <1 second
- **Smooth 60fps**: Animations
- **Instant Calculations**: Real-time updates

---

## 🎓 Educational Purpose

This dashboard is developed as an **educational and research tool** by the Civil Engineering Department at QUEST. It serves multiple purposes:

1. **Teaching Aid**: For concrete technology courses
2. **Research Tool**: For experimental mix design studies
3. **Industry Reference**: For preliminary mix design calculations
4. **Sustainability Awareness**: Promoting use of SCMs and green concrete

### Intended Users
- **Students**: Learning concrete mix design principles
- **Faculty**: Teaching and demonstration tool
- **Researchers**: Quick calculations and comparisons
- **Practitioners**: Preliminary design and estimation
- **Industry**: Reference and training

---

## 📞 Contact & Support

**Quaid-e-Awam University of Engineering, Science & Technology**
Civil Engineering Department
Nawabshah, Sindh, Pakistan

For academic inquiries, suggestions, or collaborations:
- Contact the Civil Engineering Department
- Email: (through official university channels)
- Website: www.quest.edu.pk

---

## 📄 License & Usage

This tool is developed for **educational purposes** and is provided free of charge for:
- Academic institutions
- Students and researchers
- Professional development
- Non-commercial use

### Disclaimer
- For preliminary design only
- Always conduct laboratory trials
- Consult qualified engineers for critical structures
- Follow local building codes and standards
- Verify all calculations independently

---

## 🙏 Acknowledgments

Special thanks to:
- **QUEST Administration** for supporting this development
- **Civil Engineering Students** for feedback and testing
- **Industry Partners** for providing technical insights
- **Open Source Community** for inspiration

---

**Built by engineers, for engineers. Advancing concrete technology education in Pakistan and worldwide.** 🇵🇰 🌍🏗️

**© 2025 Quaid-e-Awam University of Engineering, Science & Technology. All Rights Reserved.**
