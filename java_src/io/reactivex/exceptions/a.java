package io.reactivex.exceptions;

import io.reactivex.internal.util.f;
/* loaded from: classes7.dex */
public final class a {
    public static RuntimeException a(Throwable th2) {
        throw f.d(th2);
    }

    public static void b(Throwable th2) {
        if (!(th2 instanceof VirtualMachineError)) {
            if (!(th2 instanceof ThreadDeath)) {
                if (th2 instanceof LinkageError) {
                    throw ((LinkageError) th2);
                }
                return;
            }
            throw ((ThreadDeath) th2);
        }
        throw ((VirtualMachineError) th2);
    }
}
