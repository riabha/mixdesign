# Technical Guide - Advanced Concrete Mix Design Dashboard

## Calculation Methodology

### 1. Target Mean Strength Calculation

```
f'target = f'ck + (1.65 × σ)
```

Where:
- `f'target` = Target mean strength (MPa)
- `f'ck` = Characteristic compressive strength (MPa)
- `σ` = Standard deviation (MPa)
- `1.65` = Factor for 95% confidence level

**SCM Adjustment:**
```
f'adjusted = f'target / efficiency_factor
```

Efficiency factors:
- Fly Ash Class F: 0.95
- Fly Ash Class C: 0.98
- GGBS: 0.92
- Silica Fume: 1.15 (enhancement)
- Metakaolin: 1.05
- RHA: 1.02

### 2. Water-Cement Ratio (W/C)

**From Strength (Abrams' Law approximation):**
```
W/C = 0.5 / (1 + (f'target - 20) / 80)
```

**Exposure-based maximum W/C:**
- Mild: 0.55
- Moderate: 0.50
- Severe: 0.45
- Very Severe: 0.40
- Marine/Coastal: 0.38

**Final W/C** = max(calculated, exposure_limit)

### 3. Water Content Estimation

Base water content depends on aggregate size and slump:

**For 20mm aggregate:**
| Slump Range | Water Content (kg/m³) |
|-------------|----------------------|
| 25-50 mm    | 170                 |
| 50-100 mm   | 190                 |
| 100-150 mm  | 210                 |
| 150-200 mm  | 225                 |
| >200 mm     | 245                 |

**For 10mm aggregate:** Add 15-20 kg/m³
**For 40mm aggregate:** Subtract 10-15 kg/m³

### 4. SCM Water Demand Adjustment

```
water_adjusted = base_water × water_demand_factor
```

**Water demand factors:**
```javascript
// Fly ash reduces water demand
factor -= (fly_ash_percent / 100) × 0.08

// GGBS slightly reduces water demand
factor -= (ggbs_percent / 100) × 0.05

// Silica fume increases water demand significantly
factor += (silica_fume_percent / 100) × 0.15

// Metakaolin increases water demand
factor += (metakaolin_percent / 100) × 0.10

// RHA increases water demand
factor += (rha_percent / 100) × 0.08
```

### 5. Superplasticizer Water Reduction

**PCE (Polycarboxylate Ether):**
```
reduction% = min(18 + (dosage × 13), 40)
```
- Range: 18-40%
- Dosage: 0.1-3.5% by cementitious weight

**SNF (Sulphonated Naphthalene):**
```
reduction% = min(12 + (dosage × 10), 30)
```
- Range: 12-30%

**SMF (Sulphonated Melamine):**
```
reduction% = min(12 + (dosage × 10), 28)
```
- Range: 12-28%

**Lignosulfonate:**
```
reduction% = min(8 + (dosage × 6), 18)
```
- Range: 8-18%

**Final water content:**
```
water_final = water_adjusted × (1 - reduction% / 100)
```

### 6. Cementitious Materials Calculation

**Total cementitious content:**
```
total_cementitious = water_final / W/C_ratio
minimum = max(total_cementitious, 320) // Minimum 320 kg/m³
```

**OPC and SCM distribution:**
```
SCM_weight = total_cementitious × (total_SCM_percent / 100)
OPC_weight = total_cementitious - SCM_weight
```

**Individual SCM quantities:**
```
fly_ash_weight = total_cementitious × (fly_ash_percent / 100)
ggbs_weight = total_cementitious × (ggbs_percent / 100)
silica_fume_weight = total_cementitious × (silica_fume_percent / 100)
// etc.
```

### 7. Absolute Volume Method

**Volume occupied by each component:**

```javascript
// Cement volume
V_cement = OPC_weight / (cement_SG × 1000)

// SCM volumes
V_fly_ash = fly_ash_weight / (fly_ash_SG × 1000)
V_ggbs = ggbs_weight / (ggbs_SG × 1000)
// etc.

// Total cementitious volume
V_cementitious = V_cement + V_fly_ash + V_ggbs + ...

// Water volume
V_water = water_weight / 1000

// Air content (entrapped or entrained)
V_air = air_content_percent / 100

// Aggregate volume
V_aggregate = 1 - V_cementitious - V_water - V_air
```

### 8. Aggregate Distribution

```javascript
// Fine aggregate volume
V_fine = V_aggregate × (fine_agg_percent / 100)

// Coarse aggregate volume
V_coarse = V_aggregate × (1 - fine_agg_percent / 100)

// Weights
fine_agg_weight = V_fine × fine_SG × 1000
coarse_agg_weight = V_coarse × coarse_SG × 1000
```

### 9. Fine Aggregate Composition

When using alternatives:

```javascript
// Primary fine aggregate
if (type === 'quarryDust') {
    quarry_dust_weight = fine_agg_weight × (quarry_percent / 100)
    primary_sand_weight = fine_agg_weight × (1 - quarry_percent / 100)
}

// Blended SG calculation
if (mixed) {
    effective_SG = (weight1/SG1 + weight2/SG2 + ...) / total_weight
}
```

### 10. CO₂ Emissions Calculation

**Approximate CO₂ emissions:**

```javascript
// OPC production
OPC_CO2 = 0.85 kg CO₂ per kg cement

// SCM emissions (much lower)
fly_ash_CO2 = 0.02 kg CO₂ per kg (mostly transport)
ggbs_CO2 = 0.06 kg CO₂ per kg
silica_fume_CO2 = 0.03 kg CO₂ per kg

// CO₂ savings
CO2_saved = (OPC_replaced × 0.85) - (SCM_used × SCM_factor)
```

For simplified calculation:
```javascript
CO2_reduction = SCM_weight × volume × 0.85
```

## Specific Gravity (SG) Reference Values

### Cementitious Materials
| Material | Typical SG | Range |
|----------|-----------|--------|
| OPC (Ordinary Portland Cement) | 3.15 | 3.10-3.20 |
| PPC (Portland Pozzolana Cement) | 2.90 | 2.85-2.95 |
| Fly Ash Class F | 2.30 | 2.20-2.40 |
| Fly Ash Class C | 2.60 | 2.50-2.70 |
| GGBS | 2.90 | 2.85-2.95 |
| Silica Fume | 2.25 | 2.20-2.30 |
| Metakaolin | 2.55 | 2.50-2.60 |
| Rice Husk Ash | 2.15 | 2.10-2.25 |

### Aggregates
| Material | Typical SG | Range |
|----------|-----------|--------|
| Natural River Sand | 2.65 | 2.60-2.70 |
| Manufactured Sand (M-Sand) | 2.74 | 2.70-2.80 |
| Quarry Dust | 2.68 | 2.60-2.75 |
| Stone Dust | 2.70 | 2.65-2.75 |
| Coarse Aggregate (Crushed) | 2.70 | 2.65-2.75 |
| Coarse Aggregate (Gravel) | 2.68 | 2.60-2.72 |

## Admixture Dosage Guidelines

### Superplasticizers

**PCE Based:**
- Normal dosage: 0.8-1.5% by cementitious weight
- High performance: 1.5-2.5%
- Self-compacting: 2.0-3.5%
- Water reduction: 18-40%

**SNF Based:**
- Normal dosage: 0.5-1.2%
- High strength: 1.2-2.0%
- Water reduction: 12-30%

**SMF Based:**
- Normal dosage: 0.5-1.2%
- Precast: 1.0-1.8%
- Water reduction: 12-28%

**Lignosulfonate:**
- Normal dosage: 0.2-0.5%
- Water reduction: 8-18%

### Other Admixtures

**Air-Entraining Agent:**
- Dosage: 0.01-0.05% by cementitious weight
- Target air: 4-7% (normal), 5-8% (freeze-thaw)

**Retarder:**
- Dosage: 0.2-0.5% by cementitious weight
- Delays setting: 2-4 hours (typical)

**Accelerator:**
- Non-chloride: 1-2% by cementitious weight
- Calcium chloride: 0.5-1.5% (not for reinforced)

**Waterproofing:**
- Integral type: 1-3% by cementitious weight
- Surface applied: As per manufacturer

**VMA (Viscosity Modifying Agent):**
- Dosage: 0.05-0.3% by cementitious weight
- For SCC and underwater concrete

## SCM Replacement Guidelines by Application

### General Construction (20-35 MPa)
- **Fly Ash**: 25-35%
- **GGBS**: 40-50%
- **Combined**: Fly Ash 20% + GGBS 20%

### High-Strength Concrete (50-80 MPa)
- **Silica Fume**: 7-12%
- **Fly Ash**: 15-25%
- **Combined**: Silica Fume 8% + Fly Ash 20%

### Mass Concrete
- **Fly Ash**: 30-40%
- **GGBS**: 50-70%
- **Goal**: Minimize heat of hydration

### Marine/Coastal Structures
- **GGBS**: 50-60%
- **Silica Fume**: 5-8%
- **Combined**: GGBS 50% + Silica Fume 5%
- **Goal**: Maximum chloride resistance

### Sulfate-Resistant Concrete
- **GGBS**: 50-65%
- **Fly Ash Class F**: 25-35%
- **Goal**: Minimize C3A reactivity

### Architectural Concrete
- **Metakaolin**: 10-15%
- **White Cement** + Metakaolin
- **Goal**: Aesthetics and reduced efflorescence

### Sustainable/Green Concrete
- **GGBS**: 60-70%
- **Fly Ash**: 30-40%
- **RHA**: 15-20%
- **Goal**: Maximum CO₂ reduction

## Strength Development Curves

### With Fly Ash (Class F)
- 3 days: 50-60% of 28-day strength
- 7 days: 65-75%
- 28 days: 100%
- 90 days: 110-120%

### With GGBS
- 3 days: 40-50%
- 7 days: 55-70%
- 28 days: 100%
- 90 days: 115-125%
- 365 days: 130-140%

### With Silica Fume
- 3 days: 70-80%
- 7 days: 85-95%
- 28 days: 100%
- 90 days: 105-110%

### OPC Only (Reference)
- 3 days: 60-70%
- 7 days: 75-85%
- 28 days: 100%
- 90 days: 105-108%

## Workability Adjustments

### Effect of SCMs on Slump
- **Fly Ash**: Improves workability (+10-20mm equivalent)
- **GGBS**: Neutral to slight improvement
- **Silica Fume**: Reduces significantly (-20-30mm)
- **Metakaolin**: Reduces slightly (-10-15mm)
- **RHA**: Reduces (-15-20mm)

### Slump Retention
- **PCE**: Excellent (60-90 minutes)
- **SNF**: Good (45-60 minutes)
- **SMF**: Moderate (30-45 minutes)

## Quality Control Parameters

### Fresh Concrete Tests
1. **Slump Test**: Every batch or every 50 m³
2. **Air Content**: For air-entrained concrete
3. **Temperature**: Should be 5-32°C
4. **Density**: Check for proper proportioning

### Hardened Concrete Tests
1. **Compressive Strength**:
   - 7 days (optional)
   - 28 days (standard)
   - 56/90 days (for SCM mixes)

2. **Acceptance Criteria**:
   - Individual sample: ≥ f'ck - 3 MPa
   - Average of 3 samples: ≥ f'ck + 3 MPa

### SCM-Specific Testing
- **Fly ash**: ASTM C618 / IS 3812
- **GGBS**: ASTM C989 / IS 16714
- **Silica fume**: ASTM C1240
- **Loss on ignition**: <10% (fly ash), <3% (GGBS)
- **Fineness**: Blaine test

## Curing Requirements

### OPC Concrete
- Minimum: 7 days
- Recommended: 14 days
- Method: Water curing or curing compounds

### Fly Ash Concrete
- Minimum: 10 days
- Recommended: 14-21 days
- Extended curing critical for strength

### GGBS Concrete
- Minimum: 14 days
- Recommended: 21 days
- Must prevent early drying

### Silica Fume Concrete
- Minimum: 7 days
- Start immediately after finishing
- Prevent plastic cracking

## Troubleshooting Guide

### Low Early Strength
**Cause**: High SCM content
**Solution**: 
- Reduce SCM percentage
- Use accelerator
- Increase curing temperature
- Use Fly Ash Class C instead of F

### High Water Demand
**Cause**: Silica fume or metakaolin
**Solution**:
- Increase superplasticizer dosage
- Use PCE-based superplasticizer
- Reduce SCM content slightly

### Segregation
**Cause**: Low fines content
**Solution**:
- Add quarry dust (20-30%)
- Increase fly ash content
- Use VMA

### Bleeding
**Cause**: High water content, low fines
**Solution**:
- Reduce water (increase SP dosage)
- Add metakaolin or silica fume
- Increase fine aggregate content

### Delayed Setting
**Cause**: Fly ash + cool weather
**Solution**:
- Add accelerator
- Reduce fly ash content
- Increase temperature

## Safety & Environmental Notes

### Material Handling
- **Silica fume**: Wear respiratory protection (very fine)
- **Fly ash**: Minimize dust (alkaline)
- **Admixtures**: Follow SDS (some are corrosive)

### Storage
- **Cement/SCMs**: Keep dry, use within 3 months
- **Admixtures**: Protect from freezing
- **Aggregates**: Prevent contamination

### Environmental Benefits
- **50% SCM replacement**: ~42% CO₂ reduction
- **M-Sand usage**: Preserves natural resources
- **Longer service life**: Reduces replacement frequency

## References

1. ACI 211.1-91: Standard Practice for Selecting Proportions for Normal, Heavyweight, and Mass Concrete
2. ACI 232.2R-18: Report on the Use of Fly Ash in Concrete
3. ACI 233R-17: Guide to the Use of Slag Cement in Concrete and Mortar
4. ACI 234R-06: Guide for the Use of Silica Fume in Concrete
5. ASTM C618: Standard Specification for Coal Fly Ash
6. ASTM C989: Standard Specification for Slag Cement
7. ASTM C1240: Standard Specification for Silica Fume
8. IS 456:2000: Plain and Reinforced Concrete - Code of Practice
9. IS 3812:2013: Pulverized Fuel Ash - Specification
10. IS 16714:2018: Ground Granulated Blast Furnace Slag

---

**Note**: This is a simplified calculation model for educational and preliminary design purposes. For critical structures, always conduct laboratory mix designs and field trials with qualified personnel.

