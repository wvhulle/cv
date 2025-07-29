// Resume Configuration
// Priority thresholds and limits based on target page count
#let priority-threshold(target-pages) = {
  if target-pages == 1 { 1 } else if target-pages == 2 { 2 } else { 5 }
}

#let item-threshold(target-pages) = {
  if target-pages == 1 { 1 } else if target-pages == 2 { 2 } else { 5 }
}

// Adaptive content limits based on estimated content density
#let max-experience-entries(target-pages) = {
  if target-pages == 1 { 2 } else if target-pages == 2 { 3 } else { 5 }
}

#let max-projects(target-pages) = {
  if target-pages == 1 { 1 } else if target-pages == 2 { 3 } else { 5 }
}

#let max-hobby-projects(target-pages) = {
  if target-pages == 1 { 1 } else if target-pages == 2 { 2 } else { 5 }
}