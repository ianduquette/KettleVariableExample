This is just a simple example to demonstrate how Pentaho Kettle gets and sets variables.  It was created after a problem was discovered where a kettle job was modifying the PATH enviornment variable (only in the scope of the running job) which was causing batch files that relied on calling system commands that should be in the PATH to fail.

I thought it would be useful to keep this around.

It uses an older version of Pethao Kettle (5.4.0.1) as that was the version we were running in production.

To use:

Simply run RunMainJob.bat and look at the log file it creates.

To run this example you will need to have kettle installed at c:\etl\kettle (or adjust the path to Kettle in RunMainJob.bat).