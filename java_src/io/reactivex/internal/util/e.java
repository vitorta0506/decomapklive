package io.reactivex.internal.util;

import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class e {
    public static String a(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    public static void b(Class<?> cls) {
        ci.a.s(new ProtocolViolationException(a(cls.getName())));
    }

    public static boolean c(AtomicReference<th.b> atomicReference, th.b bVar, Class<?> cls) {
        xh.b.e(bVar, "next is null");
        if (atomicReference.compareAndSet(null, bVar)) {
            return true;
        }
        bVar.dispose();
        if (atomicReference.get() != DisposableHelper.DISPOSED) {
            b(cls);
            return false;
        }
        return false;
    }

    public static boolean d(th.b bVar, th.b bVar2, Class<?> cls) {
        xh.b.e(bVar2, "next is null");
        if (bVar != null) {
            bVar2.dispose();
            if (bVar != DisposableHelper.DISPOSED) {
                b(cls);
                return false;
            }
            return false;
        }
        return true;
    }
}
