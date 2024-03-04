package io.grpc.netty.shaded.io.netty.util.internal;

import java.lang.reflect.AccessibleObject;
/* loaded from: classes5.dex */
public final class z {
    private static RuntimeException a(RuntimeException runtimeException) {
        if ("java.lang.reflect.InaccessibleObjectException".equals(runtimeException.getClass().getName())) {
            return runtimeException;
        }
        throw runtimeException;
    }

    public static Throwable b(AccessibleObject accessibleObject, boolean z10) {
        if (z10 && !u.Q()) {
            return new UnsupportedOperationException("Reflective setAccessible(true) disabled");
        }
        try {
            accessibleObject.setAccessible(true);
            return null;
        } catch (SecurityException e10) {
            return e10;
        } catch (RuntimeException e11) {
            return a(e11);
        }
    }
}
