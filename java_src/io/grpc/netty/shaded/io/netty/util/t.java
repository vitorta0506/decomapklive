package io.grpc.netty.shaded.io.netty.util;

import io.grpc.netty.shaded.io.netty.util.internal.c0;
import java.lang.reflect.Constructor;
/* loaded from: classes5.dex */
public abstract class t {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45253a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(t.class);

    /* renamed from: b  reason: collision with root package name */
    private static volatile t f45254b = new a();

    /* loaded from: classes5.dex */
    private static final class a extends t {

        /* renamed from: c  reason: collision with root package name */
        private final Constructor<?> f45255c;

        /* renamed from: d  reason: collision with root package name */
        private final Constructor<?> f45256d;

        a() {
            String str;
            try {
                str = c0.b("io.grpc.netty.shaded.io.netty.customResourceLeakDetector");
            } catch (Throwable th2) {
                t.f45253a.error("Could not access System property: io.netty.customResourceLeakDetector", th2);
                str = null;
            }
            if (str == null) {
                this.f45256d = null;
                this.f45255c = null;
                return;
            }
            this.f45255c = g(str);
            this.f45256d = f(str);
        }

        private static Constructor<?> f(String str) {
            try {
                Class<?> cls = Class.forName(str, true, io.grpc.netty.shaded.io.netty.util.internal.t.P());
                if (ResourceLeakDetector.class.isAssignableFrom(cls)) {
                    return cls.getConstructor(Class.class, Integer.TYPE);
                }
                t.f45253a.error("Class {} does not inherit from ResourceLeakDetector.", str);
                return null;
            } catch (Throwable th2) {
                t.f45253a.error("Could not load custom resource leak detector class provided: {}", str, th2);
                return null;
            }
        }

        private static Constructor<?> g(String str) {
            try {
                Class<?> cls = Class.forName(str, true, io.grpc.netty.shaded.io.netty.util.internal.t.P());
                if (ResourceLeakDetector.class.isAssignableFrom(cls)) {
                    return cls.getConstructor(Class.class, Integer.TYPE, Long.TYPE);
                }
                t.f45253a.error("Class {} does not inherit from ResourceLeakDetector.", str);
                return null;
            } catch (Throwable th2) {
                t.f45253a.error("Could not load custom resource leak detector class provided: {}", str, th2);
                return null;
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.util.t
        public <T> ResourceLeakDetector<T> d(Class<T> cls, int i9) {
            Constructor<?> constructor = this.f45256d;
            if (constructor != null) {
                try {
                    ResourceLeakDetector<T> resourceLeakDetector = (ResourceLeakDetector) constructor.newInstance(cls, Integer.valueOf(i9));
                    t.f45253a.debug("Loaded custom ResourceLeakDetector: {}", this.f45256d.getDeclaringClass().getName());
                    return resourceLeakDetector;
                } catch (Throwable th2) {
                    t.f45253a.error("Could not load custom resource leak detector provided: {} with the given resource: {}", this.f45256d.getDeclaringClass().getName(), cls, th2);
                }
            }
            ResourceLeakDetector<T> resourceLeakDetector2 = new ResourceLeakDetector<>(cls, i9);
            t.f45253a.debug("Loaded default ResourceLeakDetector: {}", resourceLeakDetector2);
            return resourceLeakDetector2;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.t
        public <T> ResourceLeakDetector<T> e(Class<T> cls, int i9, long j10) {
            Constructor<?> constructor = this.f45255c;
            if (constructor != null) {
                try {
                    ResourceLeakDetector<T> resourceLeakDetector = (ResourceLeakDetector) constructor.newInstance(cls, Integer.valueOf(i9), Long.valueOf(j10));
                    t.f45253a.debug("Loaded custom ResourceLeakDetector: {}", this.f45255c.getDeclaringClass().getName());
                    return resourceLeakDetector;
                } catch (Throwable th2) {
                    t.f45253a.error("Could not load custom resource leak detector provided: {} with the given resource: {}", this.f45255c.getDeclaringClass().getName(), cls, th2);
                }
            }
            ResourceLeakDetector<T> resourceLeakDetector2 = new ResourceLeakDetector<>((Class<?>) cls, i9, j10);
            t.f45253a.debug("Loaded default ResourceLeakDetector: {}", resourceLeakDetector2);
            return resourceLeakDetector2;
        }
    }

    public static t b() {
        return f45254b;
    }

    public final <T> ResourceLeakDetector<T> c(Class<T> cls) {
        return d(cls, ResourceLeakDetector.f44981h);
    }

    public <T> ResourceLeakDetector<T> d(Class<T> cls, int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "samplingInterval");
        return e(cls, i9, Long.MAX_VALUE);
    }

    @Deprecated
    public abstract <T> ResourceLeakDetector<T> e(Class<T> cls, int i9, long j10);
}
