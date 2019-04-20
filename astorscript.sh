#!/bin/bash
. data.config
mkdir $D4J/output-astor
mkdir $D4J/output-astor/log
TZ="America/Los_Angeles"
export TZ



function waitForJobs() {
  runningJobs=$(jobs | wc -l | xargs)
  while [ $runningJobs -ge $PARALELLISM ]; do
  	date
	echo "${runningJobs} left"
	jobs -r
    sleep 1
	runningJobs=$(jobs | wc -l | xargs)
  done
}

function waitForAllJobs() {
  runningJobs=$(jobs | wc -l | xargs)
  while [ $runningJobs -gt 0 ]; do
  	date
	echo "${runningJobs} left"
	jobs -r
    sleep 1
	runningJobs=$(jobs | wc -l | xargs)
  done
}

if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-1/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-1 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-1-astor_output.log &
else
	echo Skip jKali/Time-1
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-1/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-1 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-1-astor_output.log &
else
	echo Skip jMutRepair/Time-1
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-2/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-2 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-2-astor_output.log &
else
	echo Skip jKali/Time-2
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-2/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-2 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-2-astor_output.log &
else
	echo Skip jMutRepair/Time-2
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-3/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-3 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-3-astor_output.log &
else
	echo Skip jKali/Time-3
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-3/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-3 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-3-astor_output.log &
else
	echo Skip jMutRepair/Time-3
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-4/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-4 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-4-astor_output.log &
else
	echo Skip jKali/Time-4
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-4/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-4 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-4-astor_output.log &
else
	echo Skip jMutRepair/Time-4
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-5/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-5 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-5-astor_output.log &
else
	echo Skip jKali/Time-5
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-5/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-5 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-5-astor_output.log &
else
	echo Skip jMutRepair/Time-5
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-6/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-6 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-6-astor_output.log &
else
	echo Skip jKali/Time-6
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-6/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-6 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-6-astor_output.log &
else
	echo Skip jMutRepair/Time-6
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-7/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-7 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-7-astor_output.log &
else
	echo Skip jKali/Time-7
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-7/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-7 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-7-astor_output.log &
else
	echo Skip jMutRepair/Time-7
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-8/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-8 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-8-astor_output.log &
else
	echo Skip jKali/Time-8
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-8/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-8 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-8-astor_output.log &
else
	echo Skip jMutRepair/Time-8
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-9/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-9 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-9-astor_output.log &
else
	echo Skip jKali/Time-9
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-9/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-9 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-9-astor_output.log &
else
	echo Skip jMutRepair/Time-9
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-10/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-10 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-10-astor_output.log &
else
	echo Skip jKali/Time-10
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-10/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-10 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-10-astor_output.log &
else
	echo Skip jMutRepair/Time-10
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-11/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-11 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-11-astor_output.log &
else
	echo Skip jKali/Time-11
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-11/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Time-11 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-11-astor_output.log &
else
	echo Skip jMutRepair/Time-11
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-12/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-12 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-12-astor_output.log &
else
	echo Skip jKali/Time-12
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-12/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-12 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-12-astor_output.log &
else
	echo Skip jMutRepair/Time-12
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-13/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-13 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-13-astor_output.log &
else
	echo Skip jKali/Time-13
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-13/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-13 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-13-astor_output.log &
else
	echo Skip jMutRepair/Time-13
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-14/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-14 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-14-astor_output.log &
else
	echo Skip jKali/Time-14
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-14/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-14 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-14-astor_output.log &
else
	echo Skip jMutRepair/Time-14
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-15/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-15 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-15-astor_output.log &
else
	echo Skip jKali/Time-15
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-15/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-15 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-15-astor_output.log &
else
	echo Skip jMutRepair/Time-15
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-16/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-16 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-16-astor_output.log &
else
	echo Skip jKali/Time-16
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-16/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-16 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-16-astor_output.log &
else
	echo Skip jMutRepair/Time-16
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-17/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-17 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-17-astor_output.log &
else
	echo Skip jKali/Time-17
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-17/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-17 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-17-astor_output.log &
else
	echo Skip jMutRepair/Time-17
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-18/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-18 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-18-astor_output.log &
else
	echo Skip jKali/Time-18
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-18/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-18 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-18-astor_output.log &
else
	echo Skip jMutRepair/Time-18
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-19/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-19 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-19-astor_output.log &
else
	echo Skip jKali/Time-19
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-19/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-19 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-19-astor_output.log &
else
	echo Skip jMutRepair/Time-19
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-20/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-20 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-20-astor_output.log &
else
	echo Skip jKali/Time-20
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-20/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-20 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-20-astor_output.log &
else
	echo Skip jMutRepair/Time-20
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-21/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-21 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-21-astor_output.log &
else
	echo Skip jKali/Time-21
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-21/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-21 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-21-astor_output.log &
else
	echo Skip jMutRepair/Time-21
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-22/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-22 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-22-astor_output.log &
else
	echo Skip jKali/Time-22
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-22/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-22 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-22-astor_output.log &
else
	echo Skip jMutRepair/Time-22
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-23/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-23 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-23-astor_output.log &
else
	echo Skip jKali/Time-23
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-23/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-23 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-23-astor_output.log &
else
	echo Skip jMutRepair/Time-23
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-24/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-24 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-24-astor_output.log &
else
	echo Skip jKali/Time-24
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-24/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-24 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-24-astor_output.log &
else
	echo Skip jMutRepair/Time-24
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-25/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-25 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-25-astor_output.log &
else
	echo Skip jKali/Time-25
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-25/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-25 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-25-astor_output.log &
else
	echo Skip jMutRepair/Time-25
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-26/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-26 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-26-astor_output.log &
else
	echo Skip jKali/Time-26
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-26/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-26 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-26-astor_output.log &
else
	echo Skip jMutRepair/Time-26
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Time-27/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-27 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jKali-Time-27-astor_output.log &
else
	echo Skip jKali/Time-27
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Time-27/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/test/java -binjavafolder build/classes -bintestfolder build/tests -location $D4J/build/Time-27 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Time/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Time-27-astor_output.log &
else
	echo Skip jMutRepair/Time-27
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-1/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-1 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-1-astor_output.log &
else
	echo Skip jKali/Math-1
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-1/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-1 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-1-astor_output.log &
else
	echo Skip jMutRepair/Math-1
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-2/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-2 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-2-astor_output.log &
else
	echo Skip jKali/Math-2
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-2/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-2 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-2-astor_output.log &
else
	echo Skip jMutRepair/Math-2
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-3/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-3 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-3-astor_output.log &
else
	echo Skip jKali/Math-3
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-3/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-3 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-3-astor_output.log &
else
	echo Skip jMutRepair/Math-3
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-4/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-4 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-4-astor_output.log &
else
	echo Skip jKali/Math-4
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-4/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-4 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-4-astor_output.log &
else
	echo Skip jMutRepair/Math-4
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-5/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-5 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-5-astor_output.log &
else
	echo Skip jKali/Math-5
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-5/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-5 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-5-astor_output.log &
else
	echo Skip jMutRepair/Math-5
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-6/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-6 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-6-astor_output.log &
else
	echo Skip jKali/Math-6
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-6/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-6 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-6-astor_output.log &
else
	echo Skip jMutRepair/Math-6
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-7/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-7 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-7-astor_output.log &
else
	echo Skip jKali/Math-7
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-7/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-7 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-7-astor_output.log &
else
	echo Skip jMutRepair/Math-7
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-8/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-8 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-8-astor_output.log &
else
	echo Skip jKali/Math-8
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-8/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-8 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-8-astor_output.log &
else
	echo Skip jMutRepair/Math-8
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-9/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-9 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-9-astor_output.log &
else
	echo Skip jKali/Math-9
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-9/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-9 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-9-astor_output.log &
else
	echo Skip jMutRepair/Math-9
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-10/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-10 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-10-astor_output.log &
else
	echo Skip jKali/Math-10
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-10/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-10 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-10-astor_output.log &
else
	echo Skip jMutRepair/Math-10
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-11/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-11 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-11-astor_output.log &
else
	echo Skip jKali/Math-11
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-11/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-11 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-11-astor_output.log &
else
	echo Skip jMutRepair/Math-11
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-12/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-12 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-12-astor_output.log &
else
	echo Skip jKali/Math-12
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-12/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-12 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-12-astor_output.log &
else
	echo Skip jMutRepair/Math-12
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-13/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-13 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-13-astor_output.log &
else
	echo Skip jKali/Math-13
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-13/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-13 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-13-astor_output.log &
else
	echo Skip jMutRepair/Math-13
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-14/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-14 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-14-astor_output.log &
else
	echo Skip jKali/Math-14
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-14/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-14 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-14-astor_output.log &
else
	echo Skip jMutRepair/Math-14
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-15/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-15 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-15-astor_output.log &
else
	echo Skip jKali/Math-15
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-15/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-15 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-15-astor_output.log &
else
	echo Skip jMutRepair/Math-15
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-16/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-16 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-16-astor_output.log &
else
	echo Skip jKali/Math-16
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-16/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-16 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-16-astor_output.log &
else
	echo Skip jMutRepair/Math-16
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-17/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-17 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-17-astor_output.log &
else
	echo Skip jKali/Math-17
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-17/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-17 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-17-astor_output.log &
else
	echo Skip jMutRepair/Math-17
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-18/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-18 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-18-astor_output.log &
else
	echo Skip jKali/Math-18
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-18/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-18 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-18-astor_output.log &
else
	echo Skip jMutRepair/Math-18
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-19/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-19 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-19-astor_output.log &
else
	echo Skip jKali/Math-19
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-19/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-19 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-19-astor_output.log &
else
	echo Skip jMutRepair/Math-19
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-20/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-20 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-20-astor_output.log &
else
	echo Skip jKali/Math-20
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-20/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-20 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-20-astor_output.log &
else
	echo Skip jMutRepair/Math-20
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-21/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-21 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-21-astor_output.log &
else
	echo Skip jKali/Math-21
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-21/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-21 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-21-astor_output.log &
else
	echo Skip jMutRepair/Math-21
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-22/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-22 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-22-astor_output.log &
else
	echo Skip jKali/Math-22
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-22/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-22 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-22-astor_output.log &
else
	echo Skip jMutRepair/Math-22
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-23/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-23 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-23-astor_output.log &
else
	echo Skip jKali/Math-23
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-23/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-23 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-23-astor_output.log &
else
	echo Skip jMutRepair/Math-23
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-24/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-24 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-24-astor_output.log &
else
	echo Skip jKali/Math-24
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-24/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-24 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-24-astor_output.log &
else
	echo Skip jMutRepair/Math-24
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-25/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-25 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-25-astor_output.log &
else
	echo Skip jKali/Math-25
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-25/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-25 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-25-astor_output.log &
else
	echo Skip jMutRepair/Math-25
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-26/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-26 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-26-astor_output.log &
else
	echo Skip jKali/Math-26
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-26/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-26 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-26-astor_output.log &
else
	echo Skip jMutRepair/Math-26
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-27/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-27 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-27-astor_output.log &
else
	echo Skip jKali/Math-27
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-27/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-27 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-27-astor_output.log &
else
	echo Skip jMutRepair/Math-27
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-28/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-28 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-28-astor_output.log &
else
	echo Skip jKali/Math-28
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-28/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-28 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-28-astor_output.log &
else
	echo Skip jMutRepair/Math-28
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-29/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-29 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-29-astor_output.log &
else
	echo Skip jKali/Math-29
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-29/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-29 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-29-astor_output.log &
else
	echo Skip jMutRepair/Math-29
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-30/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-30 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-30-astor_output.log &
else
	echo Skip jKali/Math-30
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-30/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-30 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-30-astor_output.log &
else
	echo Skip jMutRepair/Math-30
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-31/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-31 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-31-astor_output.log &
else
	echo Skip jKali/Math-31
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-31/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-31 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-31-astor_output.log &
else
	echo Skip jMutRepair/Math-31
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-32/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-32 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-32-astor_output.log &
else
	echo Skip jKali/Math-32
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-32/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-32 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-32-astor_output.log &
else
	echo Skip jMutRepair/Math-32
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-33/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-33 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-33-astor_output.log &
else
	echo Skip jKali/Math-33
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-33/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-33 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-33-astor_output.log &
else
	echo Skip jMutRepair/Math-33
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-34/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-34 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-34-astor_output.log &
else
	echo Skip jKali/Math-34
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-34/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-34 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-34-astor_output.log &
else
	echo Skip jMutRepair/Math-34
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-35/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-35 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-35-astor_output.log &
else
	echo Skip jKali/Math-35
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-35/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-35 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-35-astor_output.log &
else
	echo Skip jMutRepair/Math-35
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-36/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-36 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-36-astor_output.log &
else
	echo Skip jKali/Math-36
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-36/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-36 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-36-astor_output.log &
else
	echo Skip jMutRepair/Math-36
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-37/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-37 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-37-astor_output.log &
else
	echo Skip jKali/Math-37
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-37/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-37 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-37-astor_output.log &
else
	echo Skip jMutRepair/Math-37
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-38/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-38 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-38-astor_output.log &
else
	echo Skip jKali/Math-38
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-38/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-38 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-38-astor_output.log &
else
	echo Skip jMutRepair/Math-38
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-39/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-39 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-39-astor_output.log &
else
	echo Skip jKali/Math-39
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-39/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-39 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-39-astor_output.log &
else
	echo Skip jMutRepair/Math-39
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-40/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-40 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-40-astor_output.log &
else
	echo Skip jKali/Math-40
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-40/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-40 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-40-astor_output.log &
else
	echo Skip jMutRepair/Math-40
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-41/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-41 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-41-astor_output.log &
else
	echo Skip jKali/Math-41
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-41/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-41 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-41-astor_output.log &
else
	echo Skip jMutRepair/Math-41
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-42/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-42 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-42-astor_output.log &
else
	echo Skip jKali/Math-42
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-42/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-42 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-42-astor_output.log &
else
	echo Skip jMutRepair/Math-42
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-43/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-43 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-43-astor_output.log &
else
	echo Skip jKali/Math-43
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-43/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-43 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-43-astor_output.log &
else
	echo Skip jMutRepair/Math-43
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-44/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-44 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-44-astor_output.log &
else
	echo Skip jKali/Math-44
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-44/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-44 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-44-astor_output.log &
else
	echo Skip jMutRepair/Math-44
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-45/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-45 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-45-astor_output.log &
else
	echo Skip jKali/Math-45
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-45/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-45 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-45-astor_output.log &
else
	echo Skip jMutRepair/Math-45
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-46/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-46 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-46-astor_output.log &
else
	echo Skip jKali/Math-46
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-46/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-46 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-46-astor_output.log &
else
	echo Skip jMutRepair/Math-46
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-47/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-47 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-47-astor_output.log &
else
	echo Skip jKali/Math-47
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-47/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-47 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-47-astor_output.log &
else
	echo Skip jMutRepair/Math-47
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-48/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-48 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-48-astor_output.log &
else
	echo Skip jKali/Math-48
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-48/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-48 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-48-astor_output.log &
else
	echo Skip jMutRepair/Math-48
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-49/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-49 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-49-astor_output.log &
else
	echo Skip jKali/Math-49
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-49/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-49 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-49-astor_output.log &
else
	echo Skip jMutRepair/Math-49
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-50/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-50 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-50-astor_output.log &
else
	echo Skip jKali/Math-50
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-50/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-50 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-50-astor_output.log &
else
	echo Skip jMutRepair/Math-50
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-51/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-51 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-51-astor_output.log &
else
	echo Skip jKali/Math-51
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-51/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-51 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-51-astor_output.log &
else
	echo Skip jMutRepair/Math-51
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-52/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-52 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-52-astor_output.log &
else
	echo Skip jKali/Math-52
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-52/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-52 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-52-astor_output.log &
else
	echo Skip jMutRepair/Math-52
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-53/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-53 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-53-astor_output.log &
else
	echo Skip jKali/Math-53
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-53/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-53 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-53-astor_output.log &
else
	echo Skip jMutRepair/Math-53
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-54/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-54 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-54-astor_output.log &
else
	echo Skip jKali/Math-54
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-54/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-54 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-54-astor_output.log &
else
	echo Skip jMutRepair/Math-54
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-55/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-55 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-55-astor_output.log &
else
	echo Skip jKali/Math-55
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-55/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-55 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-55-astor_output.log &
else
	echo Skip jMutRepair/Math-55
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-56/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-56 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-56-astor_output.log &
else
	echo Skip jKali/Math-56
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-56/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-56 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-56-astor_output.log &
else
	echo Skip jMutRepair/Math-56
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-57/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-57 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-57-astor_output.log &
else
	echo Skip jKali/Math-57
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-57/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-57 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-57-astor_output.log &
else
	echo Skip jMutRepair/Math-57
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-58/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-58 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-58-astor_output.log &
else
	echo Skip jKali/Math-58
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-58/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-58 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-58-astor_output.log &
else
	echo Skip jMutRepair/Math-58
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-59/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-59 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-59-astor_output.log &
else
	echo Skip jKali/Math-59
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-59/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-59 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-59-astor_output.log &
else
	echo Skip jMutRepair/Math-59
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-60/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-60 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-60-astor_output.log &
else
	echo Skip jKali/Math-60
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-60/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-60 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-60-astor_output.log &
else
	echo Skip jMutRepair/Math-60
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-61/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-61 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-61-astor_output.log &
else
	echo Skip jKali/Math-61
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-61/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-61 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-61-astor_output.log &
else
	echo Skip jMutRepair/Math-61
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-62/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-62 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-62-astor_output.log &
else
	echo Skip jKali/Math-62
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-62/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-62 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-62-astor_output.log &
else
	echo Skip jMutRepair/Math-62
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-63/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-63 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-63-astor_output.log &
else
	echo Skip jKali/Math-63
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-63/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-63 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-63-astor_output.log &
else
	echo Skip jMutRepair/Math-63
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-64/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-64 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-64-astor_output.log &
else
	echo Skip jKali/Math-64
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-64/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-64 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-64-astor_output.log &
else
	echo Skip jMutRepair/Math-64
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-65/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-65 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-65-astor_output.log &
else
	echo Skip jKali/Math-65
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-65/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-65 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-65-astor_output.log &
else
	echo Skip jMutRepair/Math-65
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-66/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-66 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-66-astor_output.log &
else
	echo Skip jKali/Math-66
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-66/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-66 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-66-astor_output.log &
else
	echo Skip jMutRepair/Math-66
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-67/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-67 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-67-astor_output.log &
else
	echo Skip jKali/Math-67
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-67/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-67 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-67-astor_output.log &
else
	echo Skip jMutRepair/Math-67
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-68/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-68 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-68-astor_output.log &
else
	echo Skip jKali/Math-68
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-68/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-68 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-68-astor_output.log &
else
	echo Skip jMutRepair/Math-68
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-69/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-69 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-69-astor_output.log &
else
	echo Skip jKali/Math-69
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-69/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-69 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-69-astor_output.log &
else
	echo Skip jMutRepair/Math-69
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-70/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-70 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-70-astor_output.log &
else
	echo Skip jKali/Math-70
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-70/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-70 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-70-astor_output.log &
else
	echo Skip jMutRepair/Math-70
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-71/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-71 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-71-astor_output.log &
else
	echo Skip jKali/Math-71
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-71/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-71 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-71-astor_output.log &
else
	echo Skip jMutRepair/Math-71
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-72/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-72 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-72-astor_output.log &
else
	echo Skip jKali/Math-72
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-72/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-72 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-72-astor_output.log &
else
	echo Skip jMutRepair/Math-72
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-73/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-73 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-73-astor_output.log &
else
	echo Skip jKali/Math-73
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-73/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-73 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-73-astor_output.log &
else
	echo Skip jMutRepair/Math-73
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-74/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-74 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-74-astor_output.log &
else
	echo Skip jKali/Math-74
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-74/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-74 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-74-astor_output.log &
else
	echo Skip jMutRepair/Math-74
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-75/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-75 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-75-astor_output.log &
else
	echo Skip jKali/Math-75
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-75/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-75 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-75-astor_output.log &
else
	echo Skip jMutRepair/Math-75
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-76/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-76 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-76-astor_output.log &
else
	echo Skip jKali/Math-76
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-76/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-76 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-76-astor_output.log &
else
	echo Skip jMutRepair/Math-76
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-77/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-77 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-77-astor_output.log &
else
	echo Skip jKali/Math-77
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-77/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-77 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-77-astor_output.log &
else
	echo Skip jMutRepair/Math-77
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-78/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-78 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-78-astor_output.log &
else
	echo Skip jKali/Math-78
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-78/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-78 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-78-astor_output.log &
else
	echo Skip jMutRepair/Math-78
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-79/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-79 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-79-astor_output.log &
else
	echo Skip jKali/Math-79
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-79/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-79 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-79-astor_output.log &
else
	echo Skip jMutRepair/Math-79
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-80/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-80 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-80-astor_output.log &
else
	echo Skip jKali/Math-80
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-80/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-80 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-80-astor_output.log &
else
	echo Skip jMutRepair/Math-80
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-81/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-81 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-81-astor_output.log &
else
	echo Skip jKali/Math-81
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-81/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-81 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-81-astor_output.log &
else
	echo Skip jMutRepair/Math-81
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-82/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-82 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-82-astor_output.log &
else
	echo Skip jKali/Math-82
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-82/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-82 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-82-astor_output.log &
else
	echo Skip jMutRepair/Math-82
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-83/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-83 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-83-astor_output.log &
else
	echo Skip jKali/Math-83
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-83/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-83 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-83-astor_output.log &
else
	echo Skip jMutRepair/Math-83
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-84/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-84 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-84-astor_output.log &
else
	echo Skip jKali/Math-84
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-84/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-84 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-84-astor_output.log &
else
	echo Skip jMutRepair/Math-84
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-85/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-85 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-85-astor_output.log &
else
	echo Skip jKali/Math-85
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-85/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-85 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-85-astor_output.log &
else
	echo Skip jMutRepair/Math-85
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-86/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-86 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-86-astor_output.log &
else
	echo Skip jKali/Math-86
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-86/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-86 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-86-astor_output.log &
else
	echo Skip jMutRepair/Math-86
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-87/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-87 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-87-astor_output.log &
else
	echo Skip jKali/Math-87
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-87/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-87 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-87-astor_output.log &
else
	echo Skip jMutRepair/Math-87
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-88/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-88 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-88-astor_output.log &
else
	echo Skip jKali/Math-88
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-88/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-88 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-88-astor_output.log &
else
	echo Skip jMutRepair/Math-88
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-89/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-89 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-89-astor_output.log &
else
	echo Skip jKali/Math-89
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-89/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-89 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-89-astor_output.log &
else
	echo Skip jMutRepair/Math-89
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-90/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-90 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-90-astor_output.log &
else
	echo Skip jKali/Math-90
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-90/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-90 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-90-astor_output.log &
else
	echo Skip jMutRepair/Math-90
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-91/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-91 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-91-astor_output.log &
else
	echo Skip jKali/Math-91
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-91/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-91 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-91-astor_output.log &
else
	echo Skip jMutRepair/Math-91
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-92/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-92 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-92-astor_output.log &
else
	echo Skip jKali/Math-92
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-92/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-92 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-92-astor_output.log &
else
	echo Skip jMutRepair/Math-92
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-93/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-93 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-93-astor_output.log &
else
	echo Skip jKali/Math-93
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-93/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-93 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-93-astor_output.log &
else
	echo Skip jMutRepair/Math-93
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-94/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-94 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-94-astor_output.log &
else
	echo Skip jKali/Math-94
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-94/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-94 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-94-astor_output.log &
else
	echo Skip jMutRepair/Math-94
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-95/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-95 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-95-astor_output.log &
else
	echo Skip jKali/Math-95
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-95/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-95 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-95-astor_output.log &
else
	echo Skip jMutRepair/Math-95
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-96/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-96 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-96-astor_output.log &
else
	echo Skip jKali/Math-96
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-96/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-96 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-96-astor_output.log &
else
	echo Skip jMutRepair/Math-96
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-97/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-97 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-97-astor_output.log &
else
	echo Skip jKali/Math-97
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-97/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-97 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-97-astor_output.log &
else
	echo Skip jMutRepair/Math-97
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-98/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-98 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-98-astor_output.log &
else
	echo Skip jKali/Math-98
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-98/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-98 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-98-astor_output.log &
else
	echo Skip jMutRepair/Math-98
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-99/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-99 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-99-astor_output.log &
else
	echo Skip jKali/Math-99
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-99/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-99 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-99-astor_output.log &
else
	echo Skip jMutRepair/Math-99
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-100/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-100 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-100-astor_output.log &
else
	echo Skip jKali/Math-100
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-100/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-100 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-100-astor_output.log &
else
	echo Skip jMutRepair/Math-100
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-101/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-101 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-101-astor_output.log &
else
	echo Skip jKali/Math-101
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-101/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-101 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-101-astor_output.log &
else
	echo Skip jMutRepair/Math-101
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-102/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-102 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-102-astor_output.log &
else
	echo Skip jKali/Math-102
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-102/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-102 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-102-astor_output.log &
else
	echo Skip jMutRepair/Math-102
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-103/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-103 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-103-astor_output.log &
else
	echo Skip jKali/Math-103
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-103/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-103 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-103-astor_output.log &
else
	echo Skip jMutRepair/Math-103
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-104/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-104 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-104-astor_output.log &
else
	echo Skip jKali/Math-104
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-104/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-104 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-104-astor_output.log &
else
	echo Skip jMutRepair/Math-104
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-105/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-105 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-105-astor_output.log &
else
	echo Skip jKali/Math-105
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-105/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-105 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-105-astor_output.log &
else
	echo Skip jMutRepair/Math-105
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Math-106/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-106 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jKali-Math-106-astor_output.log &
else
	echo Skip jKali/Math-106
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Math-106/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/test-classes -location $D4J/build/Math-106 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Math/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Math-106-astor_output.log &
else
	echo Skip jMutRepair/Math-106
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-1/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-1 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-1/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-1-astor_output.log &
else
	echo Skip jKali/Chart-1
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-1/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-1 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-1/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-1-astor_output.log &
else
	echo Skip jMutRepair/Chart-1
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-2/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-2 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-2/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-2-astor_output.log &
else
	echo Skip jKali/Chart-2
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-2/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-2 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-2/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-2-astor_output.log &
else
	echo Skip jMutRepair/Chart-2
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-3/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-3 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-3/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-3-astor_output.log &
else
	echo Skip jKali/Chart-3
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-3/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-3 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-3/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-3-astor_output.log &
else
	echo Skip jMutRepair/Chart-3
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-4/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-4 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-4/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-4-astor_output.log &
else
	echo Skip jKali/Chart-4
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-4/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-4 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-4/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-4-astor_output.log &
else
	echo Skip jMutRepair/Chart-4
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-5/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-5 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-5/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-5-astor_output.log &
else
	echo Skip jKali/Chart-5
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-5/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-5 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-5/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-5-astor_output.log &
else
	echo Skip jMutRepair/Chart-5
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-6/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-6 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-6/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-6-astor_output.log &
else
	echo Skip jKali/Chart-6
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-6/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-6 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-6/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-6-astor_output.log &
else
	echo Skip jMutRepair/Chart-6
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-7/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-7 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-7/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-7-astor_output.log &
else
	echo Skip jKali/Chart-7
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-7/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-7 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-7/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-7-astor_output.log &
else
	echo Skip jMutRepair/Chart-7
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-8/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-8 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-8/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-8-astor_output.log &
else
	echo Skip jKali/Chart-8
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-8/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-8 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-8/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-8-astor_output.log &
else
	echo Skip jMutRepair/Chart-8
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-9/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-9 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-9/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-9-astor_output.log &
else
	echo Skip jKali/Chart-9
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-9/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-9 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-9/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-9-astor_output.log &
else
	echo Skip jMutRepair/Chart-9
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-10/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-10 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-10/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-10-astor_output.log &
else
	echo Skip jKali/Chart-10
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-10/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-10 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-10/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-10-astor_output.log &
else
	echo Skip jMutRepair/Chart-10
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-11/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-11 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-11/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-11-astor_output.log &
else
	echo Skip jKali/Chart-11
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-11/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-11 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-11/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-11-astor_output.log &
else
	echo Skip jMutRepair/Chart-11
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-12/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-12 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-12/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-12-astor_output.log &
else
	echo Skip jKali/Chart-12
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-12/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-12 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-12/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-12-astor_output.log &
else
	echo Skip jMutRepair/Chart-12
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-13/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-13 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-13/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-13-astor_output.log &
else
	echo Skip jKali/Chart-13
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-13/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-13 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-13/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-13-astor_output.log &
else
	echo Skip jMutRepair/Chart-13
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-14/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-14 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-14/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-14-astor_output.log &
else
	echo Skip jKali/Chart-14
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-14/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-14 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-14/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-14-astor_output.log &
else
	echo Skip jMutRepair/Chart-14
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-15/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-15 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-15/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-15-astor_output.log &
else
	echo Skip jKali/Chart-15
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-15/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-15 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-15/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-15-astor_output.log &
else
	echo Skip jMutRepair/Chart-15
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-16/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-16 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-16/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-16-astor_output.log &
else
	echo Skip jKali/Chart-16
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-16/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-16 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-16/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-16-astor_output.log &
else
	echo Skip jMutRepair/Chart-16
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-17/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-17 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-17/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-17-astor_output.log &
else
	echo Skip jKali/Chart-17
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-17/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-17 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-17/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-17-astor_output.log &
else
	echo Skip jMutRepair/Chart-17
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-18/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-18 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-18/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-18-astor_output.log &
else
	echo Skip jKali/Chart-18
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-18/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-18 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-18/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-18-astor_output.log &
else
	echo Skip jMutRepair/Chart-18
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-19/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-19 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-19/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-19-astor_output.log &
else
	echo Skip jKali/Chart-19
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-19/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-19 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-19/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-19-astor_output.log &
else
	echo Skip jMutRepair/Chart-19
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-20/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-20 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-20/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-20-astor_output.log &
else
	echo Skip jKali/Chart-20
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-20/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-20 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-20/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-20-astor_output.log &
else
	echo Skip jMutRepair/Chart-20
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-21/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-21 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-21/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-21-astor_output.log &
else
	echo Skip jKali/Chart-21
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-21/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-21 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-21/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-21-astor_output.log &
else
	echo Skip jMutRepair/Chart-21
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-22/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-22 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-22/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-22-astor_output.log &
else
	echo Skip jKali/Chart-22
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-22/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-22 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-22/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-22-astor_output.log &
else
	echo Skip jMutRepair/Chart-22
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-23/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-23 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-23/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-23-astor_output.log &
else
	echo Skip jKali/Chart-23
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-23/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-23 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-23/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-23-astor_output.log &
else
	echo Skip jMutRepair/Chart-23
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-24/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-24 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-24/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-24-astor_output.log &
else
	echo Skip jKali/Chart-24
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-24/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-24 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-24/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-24-astor_output.log &
else
	echo Skip jMutRepair/Chart-24
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-25/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-25 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-25/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-25-astor_output.log &
else
	echo Skip jKali/Chart-25
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-25/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-25 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-25/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-25-astor_output.log &
else
	echo Skip jMutRepair/Chart-25
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Chart-26/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-26 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-26/lib 2>&1 > $D4J/output-astor/log/jKali-Chart-26-astor_output.log &
else
	echo Skip jKali/Chart-26
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Chart-26/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder source -srctestfolder tests -binjavafolder build -bintestfolder build-tests -location $D4J/build/Chart-26 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Chart/lib:$D4J/build/Chart-26/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Chart-26-astor_output.log &
else
	echo Skip jMutRepair/Chart-26
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-1/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-1 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-1-astor_output.log &
else
	echo Skip jKali/Lang-1
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-1/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-1 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-1-astor_output.log &
else
	echo Skip jMutRepair/Lang-1
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-2/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-2 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-2-astor_output.log &
else
	echo Skip jKali/Lang-2
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-2/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-2 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-2-astor_output.log &
else
	echo Skip jMutRepair/Lang-2
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-3/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-3 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-3-astor_output.log &
else
	echo Skip jKali/Lang-3
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-3/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-3 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-3-astor_output.log &
else
	echo Skip jMutRepair/Lang-3
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-4/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-4 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-4-astor_output.log &
else
	echo Skip jKali/Lang-4
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-4/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-4 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-4-astor_output.log &
else
	echo Skip jMutRepair/Lang-4
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-5/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-5 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-5-astor_output.log &
else
	echo Skip jKali/Lang-5
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-5/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-5 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-5-astor_output.log &
else
	echo Skip jMutRepair/Lang-5
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-6/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-6 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-6-astor_output.log &
else
	echo Skip jKali/Lang-6
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-6/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-6 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-6-astor_output.log &
else
	echo Skip jMutRepair/Lang-6
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-7/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-7 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-7-astor_output.log &
else
	echo Skip jKali/Lang-7
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-7/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-7 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-7-astor_output.log &
else
	echo Skip jMutRepair/Lang-7
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-8/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-8 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-8-astor_output.log &
else
	echo Skip jKali/Lang-8
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-8/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-8 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-8-astor_output.log &
else
	echo Skip jMutRepair/Lang-8
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-9/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-9 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-9-astor_output.log &
else
	echo Skip jKali/Lang-9
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-9/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-9 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-9-astor_output.log &
else
	echo Skip jMutRepair/Lang-9
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-10/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-10 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-10-astor_output.log &
else
	echo Skip jKali/Lang-10
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-10/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-10 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-10-astor_output.log &
else
	echo Skip jMutRepair/Lang-10
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-11/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-11 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-11-astor_output.log &
else
	echo Skip jKali/Lang-11
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-11/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-11 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-11-astor_output.log &
else
	echo Skip jMutRepair/Lang-11
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-12/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-12 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-12-astor_output.log &
else
	echo Skip jKali/Lang-12
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-12/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-12 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-12-astor_output.log &
else
	echo Skip jMutRepair/Lang-12
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-13/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-13 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-13-astor_output.log &
else
	echo Skip jKali/Lang-13
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-13/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-13 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-13-astor_output.log &
else
	echo Skip jMutRepair/Lang-13
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-14/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-14 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-14-astor_output.log &
else
	echo Skip jKali/Lang-14
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-14/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-14 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-14-astor_output.log &
else
	echo Skip jMutRepair/Lang-14
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-15/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-15 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-15-astor_output.log &
else
	echo Skip jKali/Lang-15
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-15/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-15 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-15-astor_output.log &
else
	echo Skip jMutRepair/Lang-15
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-16/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-16 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-16-astor_output.log &
else
	echo Skip jKali/Lang-16
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-16/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-16 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-16-astor_output.log &
else
	echo Skip jMutRepair/Lang-16
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-17/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-17 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-17-astor_output.log &
else
	echo Skip jKali/Lang-17
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-17/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-17 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-17-astor_output.log &
else
	echo Skip jMutRepair/Lang-17
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-18/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-18 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-18-astor_output.log &
else
	echo Skip jKali/Lang-18
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-18/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-18 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-18-astor_output.log &
else
	echo Skip jMutRepair/Lang-18
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-19/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-19 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-19-astor_output.log &
else
	echo Skip jKali/Lang-19
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-19/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-19 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-19-astor_output.log &
else
	echo Skip jMutRepair/Lang-19
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-20/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-20 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-20-astor_output.log &
else
	echo Skip jKali/Lang-20
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-20/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-20 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-20-astor_output.log &
else
	echo Skip jMutRepair/Lang-20
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-21/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-21 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-21-astor_output.log &
else
	echo Skip jKali/Lang-21
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-21/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-21 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-21-astor_output.log &
else
	echo Skip jMutRepair/Lang-21
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-22/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-22 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-22-astor_output.log &
else
	echo Skip jKali/Lang-22
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-22/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-22 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-22-astor_output.log &
else
	echo Skip jMutRepair/Lang-22
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-23/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-23 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-23-astor_output.log &
else
	echo Skip jKali/Lang-23
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-23/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-23 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-23-astor_output.log &
else
	echo Skip jMutRepair/Lang-23
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-24/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-24 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-24-astor_output.log &
else
	echo Skip jKali/Lang-24
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-24/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-24 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-24-astor_output.log &
else
	echo Skip jMutRepair/Lang-24
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-25/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-25 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-25-astor_output.log &
else
	echo Skip jKali/Lang-25
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-25/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-25 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-25-astor_output.log &
else
	echo Skip jMutRepair/Lang-25
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-26/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-26 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-26-astor_output.log &
else
	echo Skip jKali/Lang-26
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-26/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-26 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-26-astor_output.log &
else
	echo Skip jMutRepair/Lang-26
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-27/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-27 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-27-astor_output.log &
else
	echo Skip jKali/Lang-27
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-27/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-27 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-27-astor_output.log &
else
	echo Skip jMutRepair/Lang-27
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-28/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-28 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-28-astor_output.log &
else
	echo Skip jKali/Lang-28
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-28/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-28 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-28-astor_output.log &
else
	echo Skip jMutRepair/Lang-28
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-29/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-29 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-29-astor_output.log &
else
	echo Skip jKali/Lang-29
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-29/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-29 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-29-astor_output.log &
else
	echo Skip jMutRepair/Lang-29
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-30/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-30 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-30-astor_output.log &
else
	echo Skip jKali/Lang-30
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-30/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-30 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-30-astor_output.log &
else
	echo Skip jMutRepair/Lang-30
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-31/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-31 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-31-astor_output.log &
else
	echo Skip jKali/Lang-31
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-31/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-31 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-31-astor_output.log &
else
	echo Skip jMutRepair/Lang-31
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-32/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-32 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-32-astor_output.log &
else
	echo Skip jKali/Lang-32
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-32/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-32 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-32-astor_output.log &
else
	echo Skip jMutRepair/Lang-32
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-33/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-33 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-33-astor_output.log &
else
	echo Skip jKali/Lang-33
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-33/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-33 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-33-astor_output.log &
else
	echo Skip jMutRepair/Lang-33
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-34/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-34 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-34-astor_output.log &
else
	echo Skip jKali/Lang-34
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-34/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-34 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-34-astor_output.log &
else
	echo Skip jMutRepair/Lang-34
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-35/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-35 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-35-astor_output.log &
else
	echo Skip jKali/Lang-35
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-35/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-35 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-35-astor_output.log &
else
	echo Skip jMutRepair/Lang-35
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-36/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-36 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-36-astor_output.log &
else
	echo Skip jKali/Lang-36
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-36/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-36 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-36-astor_output.log &
else
	echo Skip jMutRepair/Lang-36
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-37/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-37 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-37-astor_output.log &
else
	echo Skip jKali/Lang-37
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-37/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-37 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-37-astor_output.log &
else
	echo Skip jMutRepair/Lang-37
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-38/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-38 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-38-astor_output.log &
else
	echo Skip jKali/Lang-38
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-38/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-38 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-38-astor_output.log &
else
	echo Skip jMutRepair/Lang-38
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-39/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-39 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-39-astor_output.log &
else
	echo Skip jKali/Lang-39
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-39/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-39 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-39-astor_output.log &
else
	echo Skip jMutRepair/Lang-39
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-40/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-40 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-40-astor_output.log &
else
	echo Skip jKali/Lang-40
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-40/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-40 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-40-astor_output.log &
else
	echo Skip jMutRepair/Lang-40
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-41/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-41 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-41-astor_output.log &
else
	echo Skip jKali/Lang-41
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-41/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-41 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-41-astor_output.log &
else
	echo Skip jMutRepair/Lang-41
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-42/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-42 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-42-astor_output.log &
else
	echo Skip jKali/Lang-42
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-42/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-42 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-42-astor_output.log &
else
	echo Skip jMutRepair/Lang-42
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-43/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-43 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-43-astor_output.log &
else
	echo Skip jKali/Lang-43
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-43/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-43 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-43-astor_output.log &
else
	echo Skip jMutRepair/Lang-43
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-44/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-44 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-44-astor_output.log &
else
	echo Skip jKali/Lang-44
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-44/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-44 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-44-astor_output.log &
else
	echo Skip jMutRepair/Lang-44
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-45/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-45 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-45-astor_output.log &
else
	echo Skip jKali/Lang-45
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-45/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-45 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-45-astor_output.log &
else
	echo Skip jMutRepair/Lang-45
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-46/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-46 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-46-astor_output.log &
else
	echo Skip jKali/Lang-46
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-46/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-46 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-46-astor_output.log &
else
	echo Skip jMutRepair/Lang-46
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-47/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-47 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-47-astor_output.log &
else
	echo Skip jKali/Lang-47
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-47/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-47 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-47-astor_output.log &
else
	echo Skip jMutRepair/Lang-47
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-48/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-48 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-48-astor_output.log &
else
	echo Skip jKali/Lang-48
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-48/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-48 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-48-astor_output.log &
else
	echo Skip jMutRepair/Lang-48
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-49/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-49 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-49-astor_output.log &
else
	echo Skip jKali/Lang-49
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-49/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-49 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-49-astor_output.log &
else
	echo Skip jMutRepair/Lang-49
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-50/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-50 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-50-astor_output.log &
else
	echo Skip jKali/Lang-50
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-50/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-50 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-50-astor_output.log &
else
	echo Skip jMutRepair/Lang-50
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-51/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-51 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-51-astor_output.log &
else
	echo Skip jKali/Lang-51
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-51/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-51 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-51-astor_output.log &
else
	echo Skip jMutRepair/Lang-51
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-52/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-52 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-52-astor_output.log &
else
	echo Skip jKali/Lang-52
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-52/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-52 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-52-astor_output.log &
else
	echo Skip jMutRepair/Lang-52
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-53/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-53 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-53-astor_output.log &
else
	echo Skip jKali/Lang-53
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-53/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-53 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-53-astor_output.log &
else
	echo Skip jMutRepair/Lang-53
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-54/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-54 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-54-astor_output.log &
else
	echo Skip jKali/Lang-54
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-54/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-54 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-54-astor_output.log &
else
	echo Skip jMutRepair/Lang-54
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-55/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-55 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-55-astor_output.log &
else
	echo Skip jKali/Lang-55
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-55/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-55 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-55-astor_output.log &
else
	echo Skip jMutRepair/Lang-55
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-56/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-56 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-56-astor_output.log &
else
	echo Skip jKali/Lang-56
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-56/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-56 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-56-astor_output.log &
else
	echo Skip jMutRepair/Lang-56
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-57/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-57 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-57-astor_output.log &
else
	echo Skip jKali/Lang-57
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-57/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-57 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-57-astor_output.log &
else
	echo Skip jMutRepair/Lang-57
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-58/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-58 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-58-astor_output.log &
else
	echo Skip jKali/Lang-58
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-58/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-58 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-58-astor_output.log &
else
	echo Skip jMutRepair/Lang-58
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-59/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-59 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-59-astor_output.log &
else
	echo Skip jKali/Lang-59
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-59/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-59 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-59-astor_output.log &
else
	echo Skip jMutRepair/Lang-59
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-60/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-60 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-60-astor_output.log &
else
	echo Skip jKali/Lang-60
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-60/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-60 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-60-astor_output.log &
else
	echo Skip jMutRepair/Lang-60
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-61/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-61 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-61-astor_output.log &
else
	echo Skip jKali/Lang-61
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-61/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-61 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-61-astor_output.log &
else
	echo Skip jMutRepair/Lang-61
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-62/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-62 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-62-astor_output.log &
else
	echo Skip jKali/Lang-62
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-62/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-62 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-62-astor_output.log &
else
	echo Skip jMutRepair/Lang-62
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-63/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-63 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-63-astor_output.log &
else
	echo Skip jKali/Lang-63
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-63/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-63 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-63-astor_output.log &
else
	echo Skip jMutRepair/Lang-63
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-64/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-64 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-64-astor_output.log &
else
	echo Skip jKali/Lang-64
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-64/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-64 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-64-astor_output.log &
else
	echo Skip jMutRepair/Lang-64
fi
waitForJobs
if [ ! -f $D4J/output-astor/jKali/AstorMain-Lang-65/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jKali -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-65 -out ./output-astor/jKali -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jKali-Lang-65-astor_output.log &
else
	echo Skip jKali/Lang-65
fi
waitForJobs
if [ ! -f $D4J/output-astor/jMutRepair/AstorMain-Lang-65/astor_output.json ]; then
	java -cp $(cat $ASTOR/astor-classpath.txt):$ASTOR/lib/jtestex7.jar:$ASTOR/astor.jar fr.inria.main.evolution.AstorMain -mode jMutRepair -javacompliancelevel 7 -jvm4testexecution $ASTOR_JRE7 -maxgen 100000 -stopfirst true -maxtime 60 -tmax1 60000 -srcjavafolder src/main/java -srctestfolder src/main/test -binjavafolder target/classes -bintestfolder target/tests -location $D4J/build/Lang-65 -out ./output-astor/jMutRepair -dependencies $D4J/framework/projects/Lang/lib 2>&1 > $D4J/output-astor/log/jMutRepair-Lang-65-astor_output.log &
else
	echo Skip jMutRepair/Lang-65
fi
waitForJobs
waitForAllJobs
wait
