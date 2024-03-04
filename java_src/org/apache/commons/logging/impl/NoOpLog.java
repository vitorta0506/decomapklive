package org.apache.commons.logging.impl;

import java.io.Serializable;
/* loaded from: classes7.dex */
public class NoOpLog implements org.apache.commons.logging.a, Serializable {
    private static final long serialVersionUID = 561423906191706148L;

    public NoOpLog() {
    }

    public NoOpLog(String str) {
    }

    public void debug(Object obj) {
    }

    @Override // org.apache.commons.logging.a
    public void debug(Object obj, Throwable th2) {
    }

    public void error(Object obj) {
    }

    public void error(Object obj, Throwable th2) {
    }

    public void fatal(Object obj) {
    }

    public void fatal(Object obj, Throwable th2) {
    }

    public void info(Object obj) {
    }

    public void info(Object obj, Throwable th2) {
    }

    @Override // org.apache.commons.logging.a
    public final boolean isDebugEnabled() {
        return false;
    }

    public final boolean isErrorEnabled() {
        return false;
    }

    public final boolean isFatalEnabled() {
        return false;
    }

    public final boolean isInfoEnabled() {
        return false;
    }

    public final boolean isTraceEnabled() {
        return false;
    }

    public final boolean isWarnEnabled() {
        return false;
    }

    public void trace(Object obj) {
    }

    public void trace(Object obj, Throwable th2) {
    }

    public void warn(Object obj) {
    }

    public void warn(Object obj, Throwable th2) {
    }
}
