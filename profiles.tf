locals {
  # Profile definitions based on implementation guide
  profiles = {
    standard = {
      cpu = {
        warning_threshold  = 80
        critical_threshold = 95
        window_minutes     = 5
      }
      memory = {
        warning_threshold  = 80
        critical_threshold = 95
        window_minutes     = 5
      }
      http_5xx = {
        warning_threshold  = 10
        critical_threshold = 50
        window_minutes     = 5
      }
      response_time = {
        warning_threshold  = 2000
        critical_threshold = 5000
        window_minutes     = 5
      }
      health_check = {
        critical_threshold = 1
        window_minutes     = 1
      }
    }
    critical = {
      cpu = {
        warning_threshold  = 70
        critical_threshold = 90
        window_minutes     = 5
      }
      memory = {
        warning_threshold  = 70
        critical_threshold = 90
        window_minutes     = 5
      }
      http_5xx = {
        warning_threshold  = 5
        critical_threshold = 25
        window_minutes     = 5
      }
      response_time = {
        warning_threshold  = 1000
        critical_threshold = 3000
        window_minutes     = 5
      }
      health_check = {
        critical_threshold = 1
        window_minutes     = 1
      }
    }
  }

  # Select the active profile
  active_profile = local.profiles[var.profile]
}
