package io.grpc.netty.shaded.io.netty.util;

import io.grpc.netty.shaded.io.netty.util.internal.b0;
import io.grpc.netty.shaded.io.netty.util.internal.c0;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes5.dex */
public class ResourceLeakDetector<T> {

    /* renamed from: f  reason: collision with root package name */
    private static final Level f44979f;

    /* renamed from: g  reason: collision with root package name */
    private static final int f44980g;

    /* renamed from: h  reason: collision with root package name */
    static final int f44981h;

    /* renamed from: i  reason: collision with root package name */
    private static Level f44982i;

    /* renamed from: j  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44983j;

    /* renamed from: k  reason: collision with root package name */
    private static final AtomicReference<String[]> f44984k;

    /* renamed from: a  reason: collision with root package name */
    private final Set<b<?>> f44985a;

    /* renamed from: b  reason: collision with root package name */
    private final ReferenceQueue<Object> f44986b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f44987c;

    /* renamed from: d  reason: collision with root package name */
    private final String f44988d;

    /* renamed from: e  reason: collision with root package name */
    private final int f44989e;

    /* loaded from: classes5.dex */
    public enum Level {
        DISABLED,
        SIMPLE,
        ADVANCED,
        PARANOID;

        static Level parseLevel(String str) {
            Level[] values;
            String trim = str.trim();
            for (Level level : values()) {
                if (trim.equalsIgnoreCase(level.name()) || trim.equals(String.valueOf(level.ordinal()))) {
                    return level;
                }
            }
            return ResourceLeakDetector.f44979f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b<T> extends WeakReference<Object> implements v<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final AtomicReferenceFieldUpdater<b<?>, c> f44990e = AtomicReferenceFieldUpdater.newUpdater(b.class, c.class, "a");

        /* renamed from: f  reason: collision with root package name */
        private static final AtomicIntegerFieldUpdater<b<?>> f44991f = AtomicIntegerFieldUpdater.newUpdater(b.class, "b");

        /* renamed from: a  reason: collision with root package name */
        private volatile c f44992a;

        /* renamed from: b  reason: collision with root package name */
        private volatile int f44993b;

        /* renamed from: c  reason: collision with root package name */
        private final Set<b<?>> f44994c;

        /* renamed from: d  reason: collision with root package name */
        private final int f44995d;

        b(Object obj, ReferenceQueue<Object> referenceQueue, Set<b<?>> set) {
            super(obj, referenceQueue);
            this.f44995d = System.identityHashCode(obj);
            set.add(this);
            f44990e.set(this, new c(c.f44996d));
            this.f44994c = set;
        }

        private static void f(Object obj) {
            if (obj != null) {
                synchronized (obj) {
                }
            }
        }

        private void g(Object obj) {
            AtomicReferenceFieldUpdater<b<?>, c> atomicReferenceFieldUpdater;
            c cVar;
            boolean z10;
            c cVar2;
            if (ResourceLeakDetector.f44980g > 0) {
                do {
                    atomicReferenceFieldUpdater = f44990e;
                    cVar = atomicReferenceFieldUpdater.get(this);
                    if (cVar == null) {
                        return;
                    }
                    int i9 = cVar.f44999c + 1;
                    z10 = false;
                    if (i9 >= ResourceLeakDetector.f44980g) {
                        boolean z11 = io.grpc.netty.shaded.io.netty.util.internal.t.Q0().nextInt(1 << Math.min(i9 - ResourceLeakDetector.f44980g, 30)) != 0;
                        cVar2 = z11 ? cVar.f44998b : cVar;
                        z10 = z11;
                    } else {
                        cVar2 = cVar;
                    }
                } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, cVar, obj != null ? new c(cVar2, obj) : new c(cVar2)));
                if (z10) {
                    f44991f.incrementAndGet(this);
                }
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.util.v
        public void a(Object obj) {
            g(obj);
        }

        @Override // io.grpc.netty.shaded.io.netty.util.v
        public boolean b(T t10) {
            try {
                return d();
            } finally {
                f(t10);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.util.v
        public void c() {
            g(null);
        }

        public boolean d() {
            if (this.f44994c.remove(this)) {
                clear();
                f44990e.set(this, null);
                return true;
            }
            return false;
        }

        boolean e() {
            clear();
            return this.f44994c.remove(this);
        }

        public String toString() {
            c andSet = f44990e.getAndSet(this, null);
            if (andSet == null) {
                return "";
            }
            int i9 = f44991f.get(this);
            int i10 = 0;
            int i11 = 1;
            int i12 = andSet.f44999c + 1;
            StringBuilder sb2 = new StringBuilder(i12 * 2048);
            String str = b0.f45033a;
            sb2.append(str);
            sb2.append("Recent access records: ");
            sb2.append(str);
            HashSet hashSet = new HashSet(i12);
            while (andSet != c.f44996d) {
                String cVar = andSet.toString();
                if (!hashSet.add(cVar)) {
                    i10++;
                } else if (andSet.f44998b == c.f44996d) {
                    sb2.append("Created at:");
                    sb2.append(b0.f45033a);
                    sb2.append(cVar);
                } else {
                    sb2.append('#');
                    sb2.append(i11);
                    sb2.append(':');
                    sb2.append(b0.f45033a);
                    sb2.append(cVar);
                    i11++;
                }
                andSet = andSet.f44998b;
            }
            if (i10 > 0) {
                sb2.append(": ");
                sb2.append(i10);
                sb2.append(" leak records were discarded because they were duplicates");
                sb2.append(b0.f45033a);
            }
            if (i9 > 0) {
                sb2.append(": ");
                sb2.append(i9);
                sb2.append(" leak records were discarded because the leak record count is targeted to ");
                sb2.append(ResourceLeakDetector.f44980g);
                sb2.append(". Use system property ");
                sb2.append("io.grpc.netty.shaded.io.netty.leakDetection.targetRecords");
                sb2.append(" to increase the limit.");
                sb2.append(b0.f45033a);
            }
            sb2.setLength(sb2.length() - b0.f45033a.length());
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class c extends Throwable {

        /* renamed from: d  reason: collision with root package name */
        private static final c f44996d = new a();
        private static final long serialVersionUID = 6065153674892850720L;

        /* renamed from: a  reason: collision with root package name */
        private final String f44997a;

        /* renamed from: b  reason: collision with root package name */
        private final c f44998b;

        /* renamed from: c  reason: collision with root package name */
        private final int f44999c;

        /* loaded from: classes5.dex */
        static class a extends c {
            private static final long serialVersionUID = 7396077602074694571L;

            a() {
                super();
            }

            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                return this;
            }
        }

        @Override // java.lang.Throwable
        public String toString() {
            int i9;
            StringBuilder sb2 = new StringBuilder(2048);
            if (this.f44997a != null) {
                sb2.append("\tHint: ");
                sb2.append(this.f44997a);
                sb2.append(b0.f45033a);
            }
            StackTraceElement[] stackTrace = getStackTrace();
            for (int i10 = 3; i10 < stackTrace.length; i10++) {
                StackTraceElement stackTraceElement = stackTrace[i10];
                String[] strArr = (String[]) ResourceLeakDetector.f44984k.get();
                while (true) {
                    if (i9 < strArr.length) {
                        i9 = (strArr[i9].equals(stackTraceElement.getClassName()) && strArr[i9 + 1].equals(stackTraceElement.getMethodName())) ? 0 : i9 + 2;
                    } else {
                        sb2.append('\t');
                        sb2.append(stackTraceElement.toString());
                        sb2.append(b0.f45033a);
                        break;
                    }
                }
            }
            return sb2.toString();
        }

        c(c cVar, Object obj) {
            this.f44997a = obj instanceof u ? ((u) obj).b() : obj.toString();
            this.f44998b = cVar;
            this.f44999c = cVar.f44999c + 1;
        }

        c(c cVar) {
            this.f44997a = null;
            this.f44998b = cVar;
            this.f44999c = cVar.f44999c + 1;
        }

        private c() {
            this.f44997a = null;
            this.f44998b = null;
            this.f44999c = -1;
        }
    }

    static {
        Level level = Level.SIMPLE;
        f44979f = level;
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(ResourceLeakDetector.class);
        f44983j = b10;
        boolean z10 = false;
        if (c0.b("io.grpc.netty.shaded.io.netty.noResourceLeakDetection") != null) {
            z10 = c0.d("io.grpc.netty.shaded.io.netty.noResourceLeakDetection", false);
            b10.debug("-Dio.netty.noResourceLeakDetection: {}", Boolean.valueOf(z10));
            b10.warn("-Dio.netty.noResourceLeakDetection is deprecated. Use '-D{}={}' instead.", "io.grpc.netty.shaded.io.netty.leakDetection.level", level.name().toLowerCase());
        }
        if (z10) {
            level = Level.DISABLED;
        }
        Level parseLevel = Level.parseLevel(c0.c("io.grpc.netty.shaded.io.netty.leakDetection.level", c0.c("io.grpc.netty.shaded.io.netty.leakDetectionLevel", level.name())));
        int e10 = c0.e("io.grpc.netty.shaded.io.netty.leakDetection.targetRecords", 4);
        f44980g = e10;
        f44981h = c0.e("io.grpc.netty.shaded.io.netty.leakDetection.samplingInterval", 128);
        f44982i = parseLevel;
        if (b10.isDebugEnabled()) {
            b10.debug("-D{}: {}", "io.grpc.netty.shaded.io.netty.leakDetection.level", parseLevel.name().toLowerCase());
            b10.debug("-D{}: {}", "io.grpc.netty.shaded.io.netty.leakDetection.targetRecords", Integer.valueOf(e10));
        }
        f44984k = new AtomicReference<>(io.grpc.netty.shaded.io.netty.util.internal.h.f45069f);
    }

    @Deprecated
    public ResourceLeakDetector(Class<?> cls, int i9, long j10) {
        this(cls, i9);
    }

    public static void d(Class cls, String... strArr) {
        String[] strArr2;
        String[] strArr3;
        HashSet hashSet = new HashSet(Arrays.asList(strArr));
        Method[] declaredMethods = cls.getDeclaredMethods();
        int length = declaredMethods.length;
        for (int i9 = 0; i9 < length && (!hashSet.remove(declaredMethods[i9].getName()) || !hashSet.isEmpty()); i9++) {
        }
        if (hashSet.isEmpty()) {
            do {
                strArr2 = f44984k.get();
                strArr3 = (String[]) Arrays.copyOf(strArr2, strArr2.length + (strArr.length * 2));
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    int i11 = i10 * 2;
                    strArr3[strArr2.length + i11] = cls.getName();
                    strArr3[strArr2.length + i11 + 1] = strArr[i10];
                }
            } while (!f44984k.compareAndSet(strArr2, strArr3));
            return;
        }
        throw new IllegalArgumentException("Can't find '" + hashSet + "' in " + cls.getName());
    }

    private void e() {
        while (true) {
            b bVar = (b) this.f44986b.poll();
            if (bVar == null) {
                return;
            }
            bVar.e();
        }
    }

    public static Level f() {
        return f44982i;
    }

    public static boolean g() {
        return f().ordinal() > Level.DISABLED.ordinal();
    }

    private void i() {
        if (!h()) {
            e();
            return;
        }
        while (true) {
            b bVar = (b) this.f44986b.poll();
            if (bVar == null) {
                return;
            }
            if (bVar.e()) {
                String bVar2 = bVar.toString();
                if (this.f44987c.add(bVar2)) {
                    if (bVar2.isEmpty()) {
                        k(this.f44988d);
                    } else {
                        j(this.f44988d, bVar2);
                    }
                }
            }
        }
    }

    private b m(T t10) {
        Level level = f44982i;
        if (level == Level.DISABLED) {
            return null;
        }
        if (level.ordinal() < Level.PARANOID.ordinal()) {
            if (io.grpc.netty.shaded.io.netty.util.internal.t.Q0().nextInt(this.f44989e) == 0) {
                i();
                return new b(t10, this.f44986b, this.f44985a);
            }
            return null;
        }
        i();
        return new b(t10, this.f44986b, this.f44985a);
    }

    protected boolean h() {
        return f44983j.isErrorEnabled();
    }

    protected void j(String str, String str2) {
        f44983j.error("LEAK: {}.release() was not called before it's garbage-collected. See https://netty.io/wiki/reference-counted-objects.html for more information.{}", str, str2);
    }

    protected void k(String str) {
        f44983j.error("LEAK: {}.release() was not called before it's garbage-collected. Enable advanced leak reporting to find out where the leak occurred. To enable advanced leak reporting, specify the JVM option '-D{}={}' or call {}.setLevel() See https://netty.io/wiki/reference-counted-objects.html for more information.", str, "io.grpc.netty.shaded.io.netty.leakDetection.level", Level.ADVANCED.name().toLowerCase(), b0.m(this));
    }

    public final v<T> l(T t10) {
        return m(t10);
    }

    public ResourceLeakDetector(Class<?> cls, int i9) {
        this(b0.l(cls), i9, Long.MAX_VALUE);
    }

    @Deprecated
    public ResourceLeakDetector(String str, int i9, long j10) {
        this.f44985a = Collections.newSetFromMap(new ConcurrentHashMap());
        this.f44986b = new ReferenceQueue<>();
        this.f44987c = Collections.newSetFromMap(new ConcurrentHashMap());
        this.f44988d = (String) io.grpc.netty.shaded.io.netty.util.internal.s.h(str, "resourceType");
        this.f44989e = i9;
    }
}
