# Windows GDI & High-DPI Desktop Scaling Guide

**Specification Version:** 1.0.0  
**Target Platform:** Rainmeter v4.5+ on Windows 10/11  
**Architecture:** DPI-Aware Desktop Meter Geometry & Font Metrics

---

## 1. High-DPI Coordinate Transformation

Rainmeter skins interact with Windows Desktop Window Manager (DWM) display scaling. The base baseline resolution operates at $96\,\text{DPI}$ ($100\%$ scaling).

$$\text{Scale Factor } S = \frac{\text{System DPI}}{96}$$

$$\text{Logical Pixels } P_{\text{scaled}} = \left\lfloor P_{\text{base}} \times S \right\rfloor$$

### Common Windows Display Scaling Factors

| Windows Scale Setting | Dots Per Inch (DPI) | Scale Factor ($S$) | Base $14\,\text{pt}$ Font | Base $280\,\text{px}$ Skin Width |
| :---: | :---: | :---: | :---: | :---: |
| $100\%$ | $96\,\text{DPI}$ | $1.00$ | $14\,\text{pt}$ | $280\,\text{px}$ |
| $125\%$ | $120\,\text{DPI}$ | $1.25$ | $17\,\text{pt}$ | $350\,\text{px}$ |
| $150\%$ | $144\,\text{DPI}$ | $1.50$ | $21\,\text{pt}$ | $420\,\text{px}$ |
| $175\%$ | $168\,\text{DPI}$ | $1.75$ | $24\,\text{pt}$ | $490\,\text{px}$ |
| $200\%$ | $192\,\text{DPI}$ | $2.00$ | $28\,\text{pt}$ | $560\,\text{px}$ |

---

## 2. Dynamic Proportional Meter Layout

To prevent text clipping or horizontal meter overflow across monitor boundaries, the skin implements dynamic section variables:

```ini
[Variables]
SkinBaseWidth=280
SkinScale=1.0

[MeterBackground]
Meter=Shape
Shape=Rectangle 0, 0, (#SkinBaseWidth# * #SkinScale#), (#SkinHeight# * #SkinScale#), 8 | Fill Color #CardBg# | StrokeWidth 1 | Stroke Color #BorderColor#
DynamicVariables=1
```
