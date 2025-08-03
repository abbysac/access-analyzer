    resource "aws_accessanalyzer_analyzer" "unused_access_analyzer" {
      analyzer_name = "MyUnusedAccessAnalyzer"
      type          = "ACCOUNT" # Or "ORGANIZATION" if managing across an AWS Organization

      # Configure unused access analysis
      unused_access {
        unused_access_age = 180
        # Optional: Define a tracking period (e.g., 90 days)
        # tracking_period = 90 
      }
    }