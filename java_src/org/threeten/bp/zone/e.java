package org.threeten.bp.zone;

import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f56685a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f56686b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicReference<e> f56687c = new AtomicReference<>();

    /* loaded from: classes7.dex */
    static class a extends e {
        a() {
        }

        @Override // org.threeten.bp.zone.e
        protected void b() {
        }
    }

    /* loaded from: classes7.dex */
    static class b extends e {
        b() {
        }

        @Override // org.threeten.bp.zone.e
        protected void b() {
            Iterator it = ServiceLoader.load(f.class, f.class.getClassLoader()).iterator();
            while (it.hasNext()) {
                try {
                    f.f((f) it.next());
                } catch (ServiceConfigurationError e10) {
                    if (!(e10.getCause() instanceof SecurityException)) {
                        throw e10;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        if (!f56686b.getAndSet(true)) {
            AtomicReference<e> atomicReference = f56687c;
            atomicReference.compareAndSet(null, new b());
            atomicReference.get().b();
            return;
        }
        throw new IllegalStateException("Already initialized");
    }

    protected abstract void b();
}
