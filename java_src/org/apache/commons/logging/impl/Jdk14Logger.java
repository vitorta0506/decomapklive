package org.apache.commons.logging.impl;

import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes7.dex */
public class Jdk14Logger implements org.apache.commons.logging.a, Serializable {
    protected static final Level dummyLevel = Level.FINE;
    private static final long serialVersionUID = 4784713551416303804L;
    protected transient Logger logger;
    protected String name;

    public Jdk14Logger(String str) {
        this.logger = null;
        this.name = str;
        this.logger = getLogger();
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

    protected void log(Level level, String str, Throwable th2) {
        Logger logger = getLogger();
        if (logger.isLoggable(level)) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            String str2 = this.name;
            String methodName = (stackTrace == null || stackTrace.length <= 2) ? "unknown" : stackTrace[2].getMethodName();
            if (th2 == null) {
                logger.logp(level, str2, methodName, str);
            } else {
                logger.logp(level, str2, methodName, str, th2);
            }
        }
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
