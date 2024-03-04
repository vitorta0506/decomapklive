package org.apache.commons.logging.impl;

import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public class Jdk13LumberjackLogger implements org.apache.commons.logging.a, Serializable {
    protected static final Level dummyLevel = Level.FINE;
    private static final long serialVersionUID = -8649807923527610591L;
    protected transient Logger logger;
    protected String name;
    private String sourceClassName = "unknown";
    private String sourceMethodName = "unknown";
    private boolean classAndMethodFound = false;

    public Jdk13LumberjackLogger(String str) {
        this.logger = null;
        this.name = str;
        this.logger = getLogger();
    }

    private void getClassAndMethod() {
        try {
            Throwable th2 = new Throwable();
            th2.fillInStackTrace();
            StringWriter stringWriter = new StringWriter();
            th2.printStackTrace(new PrintWriter(stringWriter));
            StringTokenizer stringTokenizer = new StringTokenizer(stringWriter.getBuffer().toString(), IOUtils.LINE_SEPARATOR_UNIX);
            stringTokenizer.nextToken();
            String nextToken = stringTokenizer.nextToken();
            while (nextToken.indexOf(getClass().getName()) == -1) {
                nextToken = stringTokenizer.nextToken();
            }
            while (nextToken.indexOf(getClass().getName()) >= 0) {
                nextToken = stringTokenizer.nextToken();
            }
            String substring = nextToken.substring(nextToken.indexOf("at ") + 3, nextToken.indexOf(40));
            int lastIndexOf = substring.lastIndexOf(46);
            this.sourceClassName = substring.substring(0, lastIndexOf);
            this.sourceMethodName = substring.substring(lastIndexOf + 1);
        } catch (Exception unused) {
        }
        this.classAndMethodFound = true;
    }

    private void log(Level level, String str, Throwable th2) {
        if (getLogger().isLoggable(level)) {
            LogRecord logRecord = new LogRecord(level, str);
            if (!this.classAndMethodFound) {
                getClassAndMethod();
            }
            logRecord.setSourceClassName(this.sourceClassName);
            logRecord.setSourceMethodName(this.sourceMethodName);
            if (th2 != null) {
                logRecord.setThrown(th2);
            }
            getLogger().log(logRecord);
        }
    }

    public void debug(Object obj) {
        log(Level.FINE, String.valueOf(obj), null);
    }

    public void error(Object obj) {
        log(Level.SEVERE, String.valueOf(obj), null);
    }

    public void fatal(Object obj) {
        log(Level.SEVERE, String.valueOf(obj), null);
    }

    public Logger getLogger() {
        if (this.logger == null) {
            this.logger = Logger.getLogger(this.name);
        }
        return this.logger;
    }

    public void info(Object obj) {
        log(Level.INFO, String.valueOf(obj), null);
    }

    @Override // org.apache.commons.logging.a
    public boolean isDebugEnabled() {
        return getLogger().isLoggable(Level.FINE);
    }

    public boolean isErrorEnabled() {
        return getLogger().isLoggable(Level.SEVERE);
    }

    public boolean isFatalEnabled() {
        return getLogger().isLoggable(Level.SEVERE);
    }

    public boolean isInfoEnabled() {
        return getLogger().isLoggable(Level.INFO);
    }

    public boolean isTraceEnabled() {
        return getLogger().isLoggable(Level.FINEST);
    }

    public boolean isWarnEnabled() {
        return getLogger().isLoggable(Level.WARNING);
    }

    public void trace(Object obj) {
        log(Level.FINEST, String.valueOf(obj), null);
    }

    public void warn(Object obj) {
        log(Level.WARNING, String.valueOf(obj), null);
    }

    @Override // org.apache.commons.logging.a
    public void debug(Object obj, Throwable th2) {
        log(Level.FINE, String.valueOf(obj), th2);
    }

    public void error(Object obj, Throwable th2) {
        log(Level.SEVERE, String.valueOf(obj), th2);
    }

    public void fatal(Object obj, Throwable th2) {
        log(Level.SEVERE, String.valueOf(obj), th2);
    }

    public void info(Object obj, Throwable th2) {
        log(Level.INFO, String.valueOf(obj), th2);
    }

    public void trace(Object obj, Throwable th2) {
        log(Level.FINEST, String.valueOf(obj), th2);
    }

    public void warn(Object obj, Throwable th2) {
        log(Level.WARNING, String.valueOf(obj), th2);
    }
}
