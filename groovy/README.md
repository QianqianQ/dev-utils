# Groovy

## Jenkins
### Delete builds of a job
```groovy
def jobName = "jobName"  
def job = Jenkins.instance.getItem(jobName)
job.getBuilds().each { if (it.number >= 1 && it.number <= 100) it.delete() }
job.nextBuildNumber = 1
job.save()
```
Or from Linux command line
```bash
rm -rf jobs/${JOB_NAME}/builds/${BUILD_NUM}*
```

## Code snippets
```groovy
// Extract ID from string using regex pattern matching
str = '20250101-123456-4j3l24j2l5nmfslfjfl-xxx 1.1.0 xxx1'
str_id = ''
def id_pattern = /^[0-9]{8}-[0-9]+-[a-z0-9]+_?[A-Z0-9]*/
str_matcher = str =~ id_pattern
if (str_matcher) {
  str_id = str_matcher[0]
  println str_id
}
```