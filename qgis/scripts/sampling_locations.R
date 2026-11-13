library(geosphere)
library(sf)
library(tidyverse)
library(readxl)
library(writexl)
library(rstudioapi) # if opened in R studio for automatic wd

### in R studio: script and data file need to be in same directory!
### in base R: set wd manually
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

excel_file_path <- "ref_trees.xlsx"

my_field_data <- read_excel(excel_file_path, sheet = 1)

# UTM CRS for French Guiana
utm_crs <- 32622   # WGS84 / UTM zone 22S

# Create UTM points
points <- st_as_sf(
  my_field_data,
  coords = c("Longitude", "Latitude"),
  crs = utm_crs
)
# Calculate target points
processed_data <- points %>%
  mutate(
    # Convert azimuth to radians
    azimuth_rad = Azimuth * pi / 180,

    # UTM movement:
    # azimuth 0° = north
    # azimuth 90° = east
    dx = Distance * sin(azimuth_rad),
    dy = Distance * cos(azimuth_rad),

    # Extract original UTM coordinates
    x = st_coordinates(.)[, 1],
    y = st_coordinates(.)[, 2],

    # Calculate target UTM coordinates
    target_x = x + dx,
    target_y = y + dy
  ) %>%
  st_drop_geometry()

# Group references and calculate center
final_targets <- processed_data %>%
  group_by(Sampling_Point_ID) %>%
  summarise(
    Final_Easting  = mean(target_x, na.rm = TRUE),
    Final_Northing = mean(target_y, na.rm = TRUE),
    .groups = "drop"
  )
# it uses the center of the calculated points if there is more than one reference tree
write_xlsx(
  final_targets,
  "calculated_sampling_coordinates_UTM.xlsx"
)
#those are the coordinates we used to plot our sampling locations in QGIS
