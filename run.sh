mkdir monitoring-logs
java -javaagent:$HOME/.m2/repository/net/kieker-monitoring/kieker/1.13/kieker-1.13-aspectj.jar \
	-Dkieker.monitoring.writer.filesystem.AsciiFileWriter.customStoragePath=monitoring-logs \
	-Dkieker.monitoring.adaptiveMonitoring.enabled=true \
	-Dkieker.monitoring.adaptiveMonitoring.configFile=config/kieker.adaptiveMonitoring.conf \
	-Dkieker.monitoring.adaptiveMonitoring.readInterval=15 \
	-cp target/example-0.0.1-SNAPSHOT.jar defaultpackage.NormalDependency
