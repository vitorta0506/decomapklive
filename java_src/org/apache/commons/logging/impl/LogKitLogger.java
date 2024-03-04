package org.apache.commons.logging.impl;

import java.io.Serializable;
import org.apache.log.Hierarchy;
import org.apache.log.Logger;
/* loaded from: classes7.dex */
public class LogKitLogger implements org.apache.commons.logging.a, Serializable {
    private static final long serialVersionUID = 3768538055836059519L;
    protected volatile transient Logger logger;
    protected String name;

    public LogKitLogger(String str) {
        this.logger = null;
        this.name = str;
        this.logger = getLogger();
    }

    public void debug(Object obj) {
        if (obj != null) {
            getLogger().debug(String.valueOf(obj));
        }
    }

    public void error(Object obj) {
        if (obj != null) {
            getLogger().error(String.valueOf(obj));
        }
    }

    public void fatal(Object obj) {
        if (obj != null) {
            getLogger().fatalError(String.valueOf(obj));
        }
    }

    public Logger getLogger() {
        Logger logger = this.logger;
        if (logger == null) {
            synchronized (this) {
                logger = this.logger;
                if (logger == null) {
                    logger = Hierarchy.getDefaultHierarchy().getLoggerFor(this.name);
                    this.logger = logger;
                }
            }
        }
        return logger;
    }

    public void info(Object obj) {
        if (obj != null) {
            getLogger().info(String.valueOf(obj));
        }
    }

    @Override // org.apache.commons.logging.a
    public boolean isDebugEnabled() {
        return getLogger().isDebugEnabled();
    }

    public boolean isErrorEnabled() {
        return getLogger().isErrorEnabled();
    }

    public boolean isFatalEnabled() {
        return getLogger().isFatalErrorEnabled();
    }

    public boolean isInfoEnabled() {
        return getLogger().isInfoEnabled();
    }

    public boolean isTraceEnabled() {
        return getLogger().isDebugEnabled();
    }

    public boolean isWarnEnabled() {
        return getLogger().isWarnEnabled();
    }

    public void trace(Object obj) {
        debug(obj);
    }

    public void warn(Object obj) {
        if (obj != null) {
            getLogger().warn(String.valueOf(obj));
        }
    }

    @Override // org.apache.commons.logging.a
    public void debug(Object obj, Throwable th2) {
        if (obj != null) {
            getLogger().debug(String.valueOf(obj), th2);
        }
    }

    public void error(Object obj, Throwable th2) {
        if (obj != null) {
            getLogger().error(String.valueOf(obj), th2);
        }
    }

    public void fatal(Object obj, Throwable th2) {
        if (obj != null) {
            getLogger().fatalError(String.valueOf(obj), th2);
        }
    }

    public void info(Object obj, Throwable th2) {
        if (obj != null) {
            getLogger().info(String.valueOf(obj), th2);
        }
    }

    public void trace(Object obj, Throwable th2) {
        debug(obj, th2);
    }

    public void warn(Object obj, Throwable th2) {
        if (obj != null) {
            getLogger().warn(String.valueOf(obj), th2);
        }
    }
}
