##==============================================================================
#
# A more precise (and accurate) calculation of saturation vapor pressurve (SVP)
# than generally used in plant physiology modeling when vapor pressure deficit
# is of concern -- ASSUMING ATMOSPHERIC PRESSURE OF 100 kPa which will usually
# for most locations be incorrect.
#
# Saturation Vapor Pressure Calculation
#
# Saturation water vapor pressure (SVP) of moist air with respect to a plane
# surface of water is calculated according to equations (17), (21), and (22) in
# Alduchov & Eskridge (1996), who used pressure in hPa. Instead, we are using
# Pa here. The resulting equation for SVP is:
#
# SVP = 1.00071 × EXP(4.5E-8 P) × 610.94 × EXP(17.625 T / (243.04 + T))
#
# where P is atmospheric pressure (Pa) and T is air temperature (°C). We are
# assuming P = 100,000 Pa, so 1.00071 × EXP(4.5E-8 P) × 610.94 reduces to about
# 614.131 , giving
#
# SVP = 614.131 × EXP(17.625 T / (243.04 + T)).
#
# The assumption of P = 100 kPa would, on average, apply to an altitude of about
# 113 m (at 20–21°C).
#
# REFERENCE:  Alduchov OA, Eskridge RE (1996) Improved Magnus form approximation
# of saturation vapor pressure. Journal of Applied Meteorology 35: 601-609.
#
#
# SVP   : saturation vapor pressure, Pa
# T     : air temperature, degrees Celsius

  SVP_Ald_T = function(T) { SVP = 614.131 * exp(17.625 * T / (243.04 + T)) }

##==============================================================================
