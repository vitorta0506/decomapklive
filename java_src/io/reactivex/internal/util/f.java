package io.reactivex.internal.util;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Throwable f52757a = new a();

    /* loaded from: classes7.dex */
    static final class a extends Throwable {
        private static final long serialVersionUID = -4649703670690200604L;

        a() {
            super("No further exceptions");
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    public static <T> boolean a(AtomicReference<Throwable> atomicReference, Throwable th2) {
        Throwable th3;
        do {
            th3 = atomicReference.get();
            if (th3 == f52757a) {
                return false;
            }
        } while (!atomicReference.compareAndSet(th3, th3 == null ? th2 : new CompositeException(th3, th2)));
        return true;
    }

    public static <T> Throwable b(AtomicReference<Throwable> atomicReference) {
        Throwable th2 = atomicReference.get();
        Throwable th3 = f52757a;
        return th2 != th3 ? atomicReference.getAndSet(th3) : th2;
    }

    public static String c(long j10, TimeUnit timeUnit) {
        return "The source did not signal an event for " + j10 + " " + timeUnit.toString().toLowerCase() + " and has been terminated.";
    }

    public static RuntimeException d(Throwable th2) {
        if (!(th2 instanceof Error)) {
            if (th2 instanceof RuntimeException) {
                return (RuntimeException) th2;
            }
            return new RuntimeException(th2);
        }
        throw ((Error) th2);
    }
}
