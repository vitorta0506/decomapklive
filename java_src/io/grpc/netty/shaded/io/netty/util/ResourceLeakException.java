package io.grpc.netty.shaded.io.netty.util;

import java.util.Arrays;
@Deprecated
/* loaded from: classes5.dex */
public class ResourceLeakException extends RuntimeException {
    private static final long serialVersionUID = 7186453858343358280L;
    private final StackTraceElement[] cachedStackTrace;

    public ResourceLeakException() {
        this.cachedStackTrace = getStackTrace();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ResourceLeakException) {
            if (obj == this) {
                return true;
            }
            return Arrays.equals(this.cachedStackTrace, ((ResourceLeakException) obj).cachedStackTrace);
        }
        return false;
    }

    public int hashCode() {
        int i9 = 0;
        for (StackTraceElement stackTraceElement : this.cachedStackTrace) {
            i9 = (i9 * 31) + stackTraceElement.hashCode();
        }
        return i9;
    }

    public ResourceLeakException(String str) {
        super(str);
        this.cachedStackTrace = getStackTrace();
    }

    public ResourceLeakException(String str, Throwable th2) {
        super(str, th2);
        this.cachedStackTrace = getStackTrace();
    }

    public ResourceLeakException(Throwable th2) {
        super(th2);
        this.cachedStackTrace = getStackTrace();
    }
}
