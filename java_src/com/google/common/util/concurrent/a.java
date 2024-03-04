package com.google.common.util.concurrent;

import com.google.android.gms.internal.recaptcha.mb;
import com.tencent.bugly.Bugly;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
public abstract class a<V> extends y5.a implements d0<V> {

    /* renamed from: d  reason: collision with root package name */
    static final boolean f13711d;

    /* renamed from: e  reason: collision with root package name */
    private static final Logger f13712e;

    /* renamed from: f  reason: collision with root package name */
    private static final b f13713f;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f13714g;

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f13715a;

    /* renamed from: b  reason: collision with root package name */
    private volatile e f13716b;

    /* renamed from: c  reason: collision with root package name */
    private volatile l f13717c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class b {
        private b() {
        }

        abstract boolean a(a<?> aVar, e eVar, e eVar2);

        abstract boolean b(a<?> aVar, Object obj, Object obj2);

        abstract boolean c(a<?> aVar, l lVar, l lVar2);

        abstract e d(a<?> aVar, e eVar);

        abstract l e(a<?> aVar, l lVar);

        abstract void f(l lVar, l lVar2);

        abstract void g(l lVar, Thread thread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: c  reason: collision with root package name */
        static final c f13718c;

        /* renamed from: d  reason: collision with root package name */
        static final c f13719d;

        /* renamed from: a  reason: collision with root package name */
        final boolean f13720a;

        /* renamed from: b  reason: collision with root package name */
        final Throwable f13721b;

        static {
            if (a.f13711d) {
                f13719d = null;
                f13718c = null;
                return;
            }
            f13719d = new c(false, null);
            f13718c = new c(true, null);
        }

        c(boolean z10, Throwable th2) {
            this.f13720a = z10;
            this.f13721b = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: b  reason: collision with root package name */
        static final d f13722b = new d(new C0131a("Failure occurred while trying to finish a future."));

        /* renamed from: a  reason: collision with root package name */
        final Throwable f13723a;

        /* renamed from: com.google.common.util.concurrent.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0131a extends Throwable {
            C0131a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        d(Throwable th2) {
            this.f13723a = (Throwable) com.google.common.base.o.s(th2);
        }
    }

    /* loaded from: classes2.dex */
    private static final class f extends b {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<l, Thread> f13728a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<l, l> f13729b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, l> f13730c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, e> f13731d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReferenceFieldUpdater<a, Object> f13732e;

        f(AtomicReferenceFieldUpdater<l, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<l, l> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<a, l> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<a, e> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<a, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f13728a = atomicReferenceFieldUpdater;
            this.f13729b = atomicReferenceFieldUpdater2;
            this.f13730c = atomicReferenceFieldUpdater3;
            this.f13731d = atomicReferenceFieldUpdater4;
            this.f13732e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            return androidx.concurrent.futures.a.a(this.f13731d, aVar, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            return androidx.concurrent.futures.a.a(this.f13732e, aVar, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean c(a<?> aVar, l lVar, l lVar2) {
            return androidx.concurrent.futures.a.a(this.f13730c, aVar, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        e d(a<?> aVar, e eVar) {
            return this.f13731d.getAndSet(aVar, eVar);
        }

        @Override // com.google.common.util.concurrent.a.b
        l e(a<?> aVar, l lVar) {
            return this.f13730c.getAndSet(aVar, lVar);
        }

        @Override // com.google.common.util.concurrent.a.b
        void f(l lVar, l lVar2) {
            this.f13729b.lazySet(lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        void g(l lVar, Thread thread) {
            this.f13728a.lazySet(lVar, thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final a<V> f13733a;

        /* renamed from: b  reason: collision with root package name */
        final d0<? extends V> f13734b;

        g(a<V> aVar, d0<? extends V> d0Var) {
            this.f13733a = aVar;
            this.f13734b = d0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((a) this.f13733a).f13715a != this) {
                return;
            }
            if (a.f13713f.b(this.f13733a, this, a.G(this.f13734b))) {
                a.C(this.f13733a);
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class h extends b {
        private h() {
            super();
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            synchronized (aVar) {
                if (((a) aVar).f13716b == eVar) {
                    ((a) aVar).f13716b = eVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (((a) aVar).f13715a == obj) {
                    ((a) aVar).f13715a = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean c(a<?> aVar, l lVar, l lVar2) {
            synchronized (aVar) {
                if (((a) aVar).f13717c == lVar) {
                    ((a) aVar).f13717c = lVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // com.google.common.util.concurrent.a.b
        e d(a<?> aVar, e eVar) {
            e eVar2;
            synchronized (aVar) {
                eVar2 = ((a) aVar).f13716b;
                if (eVar2 != eVar) {
                    ((a) aVar).f13716b = eVar;
                }
            }
            return eVar2;
        }

        @Override // com.google.common.util.concurrent.a.b
        l e(a<?> aVar, l lVar) {
            l lVar2;
            synchronized (aVar) {
                lVar2 = ((a) aVar).f13717c;
                if (lVar2 != lVar) {
                    ((a) aVar).f13717c = lVar;
                }
            }
            return lVar2;
        }

        @Override // com.google.common.util.concurrent.a.b
        void f(l lVar, l lVar2) {
            lVar.f13743b = lVar2;
        }

        @Override // com.google.common.util.concurrent.a.b
        void g(l lVar, Thread thread) {
            lVar.f13742a = thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface i<V> extends d0<V> {
    }

    /* loaded from: classes2.dex */
    static abstract class j<V> extends a<V> implements i<V> {
        @Override // com.google.common.util.concurrent.a, com.google.common.util.concurrent.d0
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final boolean cancel(boolean z10) {
            return super.cancel(z10);
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final V get() throws InterruptedException, ExecutionException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.a, java.util.concurrent.Future
        public final V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) super.get(j10, timeUnit);
        }
    }

    /* loaded from: classes2.dex */
    private static final class k extends b {

        /* renamed from: a  reason: collision with root package name */
        static final Unsafe f13735a;

        /* renamed from: b  reason: collision with root package name */
        static final long f13736b;

        /* renamed from: c  reason: collision with root package name */
        static final long f13737c;

        /* renamed from: d  reason: collision with root package name */
        static final long f13738d;

        /* renamed from: e  reason: collision with root package name */
        static final long f13739e;

        /* renamed from: f  reason: collision with root package name */
        static final long f13740f;

        /* renamed from: com.google.common.util.concurrent.a$k$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0132a implements PrivilegedExceptionAction<Unsafe> {
            C0132a() {
            }

            @Override // java.security.PrivilegedExceptionAction
            /* renamed from: a */
            public Unsafe run() throws Exception {
                Field[] declaredFields;
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e10) {
                    throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new C0132a());
            }
            try {
                f13737c = unsafe.objectFieldOffset(a.class.getDeclaredField(com.huawei.hms.opendevice.c.f27627a));
                f13736b = unsafe.objectFieldOffset(a.class.getDeclaredField("b"));
                f13738d = unsafe.objectFieldOffset(a.class.getDeclaredField("a"));
                f13739e = unsafe.objectFieldOffset(l.class.getDeclaredField("a"));
                f13740f = unsafe.objectFieldOffset(l.class.getDeclaredField("b"));
                f13735a = unsafe;
            } catch (Exception e11) {
                com.google.common.base.y.k(e11);
                throw new RuntimeException(e11);
            }
        }

        private k() {
            super();
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean a(a<?> aVar, e eVar, e eVar2) {
            return mb.a(f13735a, aVar, f13736b, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean b(a<?> aVar, Object obj, Object obj2) {
            return mb.a(f13735a, aVar, f13738d, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.a.b
        boolean c(a<?> aVar, l lVar, l lVar2) {
            return mb.a(f13735a, aVar, f13737c, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        e d(a<?> aVar, e eVar) {
            return (e) f13735a.getAndSetObject(aVar, f13736b, eVar);
        }

        @Override // com.google.common.util.concurrent.a.b
        l e(a<?> aVar, l lVar) {
            return (l) f13735a.getAndSetObject(aVar, f13737c, lVar);
        }

        @Override // com.google.common.util.concurrent.a.b
        void f(l lVar, l lVar2) {
            f13735a.putObject(lVar, f13740f, lVar2);
        }

        @Override // com.google.common.util.concurrent.a.b
        void g(l lVar, Thread thread) {
            f13735a.putObject(lVar, f13739e, thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class l {

        /* renamed from: c  reason: collision with root package name */
        static final l f13741c = new l(false);

        /* renamed from: a  reason: collision with root package name */
        volatile Thread f13742a;

        /* renamed from: b  reason: collision with root package name */
        volatile l f13743b;

        l() {
            a.f13713f.g(this, Thread.currentThread());
        }

        l(boolean z10) {
        }

        void a(l lVar) {
            a.f13713f.f(this, lVar);
        }

        void b() {
            Thread thread = this.f13742a;
            if (thread != null) {
                this.f13742a = null;
                LockSupport.unpark(thread);
            }
        }
    }

    static {
        boolean z10;
        b hVar;
        try {
            z10 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", Bugly.SDK_IS_DEV));
        } catch (SecurityException unused) {
            z10 = false;
        }
        f13711d = z10;
        f13712e = Logger.getLogger(a.class.getName());
        Throwable th2 = null;
        try {
            hVar = new k();
            th = null;
        } catch (Throwable th3) {
            th = th3;
            try {
                hVar = new f(AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, l.class, com.huawei.hms.opendevice.c.f27627a), AtomicReferenceFieldUpdater.newUpdater(a.class, e.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "a"));
            } catch (Throwable th4) {
                hVar = new h();
                th2 = th4;
            }
        }
        f13713f = hVar;
        if (th2 != null) {
            Logger logger = f13712e;
            Level level = Level.SEVERE;
            logger.log(level, "UnsafeAtomicHelper is broken!", th);
            logger.log(level, "SafeAtomicHelper is broken!", th2);
        }
        f13714g = new Object();
    }

    private e A(e eVar) {
        e eVar2 = eVar;
        e d10 = f13713f.d(this, e.f13724d);
        while (d10 != null) {
            e eVar3 = d10.f13727c;
            d10.f13727c = eVar2;
            eVar2 = d10;
            d10 = eVar3;
        }
        return eVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.util.concurrent.a$b] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.common.util.concurrent.a<?>] */
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.common.util.concurrent.a] */
    /* JADX WARN: Type inference failed for: r4v7, types: [com.google.common.util.concurrent.a, com.google.common.util.concurrent.a<V>] */
    public static void C(a<?> aVar) {
        e eVar = null;
        while (true) {
            aVar.O();
            aVar.t();
            e A = aVar.A(eVar);
            while (A != null) {
                eVar = A.f13727c;
                Runnable runnable = A.f13725a;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof g) {
                    g gVar = (g) runnable2;
                    aVar = gVar.f13733a;
                    if (((a) aVar).f13715a == gVar) {
                        if (f13713f.b(aVar, gVar, G(gVar.f13734b))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = A.f13726b;
                    Objects.requireNonNull(executor);
                    D(runnable2, executor);
                }
                A = eVar;
            }
            return;
        }
    }

    private static void D(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            Logger logger = f13712e;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb2.append("RuntimeException while executing runnable ");
            sb2.append(valueOf);
            sb2.append(" with executor ");
            sb2.append(valueOf2);
            logger.log(level, sb2.toString(), (Throwable) e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V E(Object obj) throws ExecutionException {
        if (!(obj instanceof c)) {
            if (obj instanceof d) {
                throw new ExecutionException(((d) obj).f13723a);
            }
            return obj == f13714g ? (V) i0.b() : obj;
        }
        throw y("Task was cancelled.", ((c) obj).f13721b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object G(d0<?> d0Var) {
        Throwable a10;
        if (d0Var instanceof i) {
            Object obj = ((a) d0Var).f13715a;
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (cVar.f13720a) {
                    obj = cVar.f13721b != null ? new c(false, cVar.f13721b) : c.f13719d;
                }
            }
            Objects.requireNonNull(obj);
            return obj;
        } else if ((d0Var instanceof y5.a) && (a10 = y5.b.a((y5.a) d0Var)) != null) {
            return new d(a10);
        } else {
            boolean isCancelled = d0Var.isCancelled();
            if ((!f13711d) & isCancelled) {
                c cVar2 = c.f13719d;
                Objects.requireNonNull(cVar2);
                return cVar2;
            }
            try {
                Object H = H(d0Var);
                if (!isCancelled) {
                    return H == null ? f13714g : H;
                }
                String valueOf = String.valueOf(d0Var);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 84);
                sb2.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb2.append(valueOf);
                return new c(false, new IllegalArgumentException(sb2.toString()));
            } catch (CancellationException e10) {
                if (!isCancelled) {
                    String valueOf2 = String.valueOf(d0Var);
                    StringBuilder sb3 = new StringBuilder(valueOf2.length() + 77);
                    sb3.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
                    sb3.append(valueOf2);
                    return new d(new IllegalArgumentException(sb3.toString(), e10));
                }
                return new c(false, e10);
            } catch (ExecutionException e11) {
                if (isCancelled) {
                    String valueOf3 = String.valueOf(d0Var);
                    StringBuilder sb4 = new StringBuilder(valueOf3.length() + 84);
                    sb4.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                    sb4.append(valueOf3);
                    return new c(false, new IllegalArgumentException(sb4.toString(), e11));
                }
                return new d(e11.getCause());
            } catch (Throwable th2) {
                return new d(th2);
            }
        }
    }

    private static <V> V H(Future<V> future) throws ExecutionException {
        V v10;
        boolean z10 = false;
        while (true) {
            try {
                v10 = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return v10;
    }

    private void O() {
        for (l e10 = f13713f.e(this, l.f13741c); e10 != null; e10 = e10.f13743b) {
            e10.b();
        }
    }

    private void P(l lVar) {
        lVar.f13742a = null;
        while (true) {
            l lVar2 = this.f13717c;
            if (lVar2 == l.f13741c) {
                return;
            }
            l lVar3 = null;
            while (lVar2 != null) {
                l lVar4 = lVar2.f13743b;
                if (lVar2.f13742a != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.f13743b = lVar4;
                    if (lVar3.f13742a == null) {
                        break;
                    }
                } else if (!f13713f.c(this, lVar2, lVar4)) {
                    break;
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    private void r(StringBuilder sb2) {
        try {
            Object H = H(this);
            sb2.append("SUCCESS, result=[");
            v(sb2, H);
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (RuntimeException e10) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append(e10.getClass());
            sb2.append(" thrown from get()]");
        } catch (ExecutionException e11) {
            sb2.append("FAILURE, cause=[");
            sb2.append(e11.getCause());
            sb2.append("]");
        }
    }

    private void s(StringBuilder sb2) {
        String sb3;
        int length = sb2.length();
        sb2.append("PENDING");
        Object obj = this.f13715a;
        if (obj instanceof g) {
            sb2.append(", setFuture=[");
            w(sb2, ((g) obj).f13734b);
            sb2.append("]");
        } else {
            try {
                sb3 = com.google.common.base.v.a(M());
            } catch (RuntimeException | StackOverflowError e10) {
                String valueOf = String.valueOf(e10.getClass());
                StringBuilder sb4 = new StringBuilder(valueOf.length() + 38);
                sb4.append("Exception thrown from implementation: ");
                sb4.append(valueOf);
                sb3 = sb4.toString();
            }
            if (sb3 != null) {
                sb2.append(", info=[");
                sb2.append(sb3);
                sb2.append("]");
            }
        }
        if (isDone()) {
            sb2.delete(length, sb2.length());
            r(sb2);
        }
    }

    private void v(StringBuilder sb2, Object obj) {
        if (obj == null) {
            sb2.append("null");
        } else if (obj == this) {
            sb2.append("this future");
        } else {
            sb2.append(obj.getClass().getName());
            sb2.append("@");
            sb2.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    private void w(StringBuilder sb2, Object obj) {
        try {
            if (obj == this) {
                sb2.append("this future");
            } else {
                sb2.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e10) {
            sb2.append("Exception thrown from implementation: ");
            sb2.append(e10.getClass());
        }
    }

    private static CancellationException y(String str, Throwable th2) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th2);
        return cancellationException;
    }

    protected void J() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void K(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(U());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String M() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb2 = new StringBuilder(41);
            sb2.append("remaining delay=[");
            sb2.append(delay);
            sb2.append(" ms]");
            return sb2.toString();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean R(V v10) {
        if (v10 == null) {
            v10 = (V) f13714g;
        }
        if (f13713f.b(this, null, v10)) {
            C(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean S(Throwable th2) {
        if (f13713f.b(this, null, new d((Throwable) com.google.common.base.o.s(th2)))) {
            C(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean T(d0<? extends V> d0Var) {
        d dVar;
        com.google.common.base.o.s(d0Var);
        Object obj = this.f13715a;
        if (obj == null) {
            if (d0Var.isDone()) {
                if (f13713f.b(this, null, G(d0Var))) {
                    C(this);
                    return true;
                }
                return false;
            }
            g gVar = new g(this, d0Var);
            if (f13713f.b(this, null, gVar)) {
                try {
                    d0Var.addListener(gVar, s.INSTANCE);
                } catch (Throwable th2) {
                    try {
                        dVar = new d(th2);
                    } catch (Throwable unused) {
                        dVar = d.f13722b;
                    }
                    f13713f.b(this, gVar, dVar);
                }
                return true;
            }
            obj = this.f13715a;
        }
        if (obj instanceof c) {
            d0Var.cancel(((c) obj).f13720a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean U() {
        Object obj = this.f13715a;
        return (obj instanceof c) && ((c) obj).f13720a;
    }

    @Override // com.google.common.util.concurrent.d0
    public void addListener(Runnable runnable, Executor executor) {
        e eVar;
        com.google.common.base.o.t(runnable, "Runnable was null.");
        com.google.common.base.o.t(executor, "Executor was null.");
        if (!isDone() && (eVar = this.f13716b) != e.f13724d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f13727c = eVar;
                if (f13713f.a(this, eVar, eVar2)) {
                    return;
                }
                eVar = this.f13716b;
            } while (eVar != e.f13724d);
            D(runnable, executor);
        }
        D(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // y5.a
    public final Throwable b() {
        if (this instanceof i) {
            Object obj = this.f13715a;
            if (obj instanceof d) {
                return ((d) obj).f13723a;
            }
            return null;
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        c cVar;
        Object obj = this.f13715a;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        if (f13711d) {
            cVar = new c(z10, new CancellationException("Future.cancel() was called."));
        } else {
            if (z10) {
                cVar = c.f13718c;
            } else {
                cVar = c.f13719d;
            }
            Objects.requireNonNull(cVar);
        }
        boolean z11 = false;
        a<V> aVar = this;
        while (true) {
            if (f13713f.b(aVar, obj, cVar)) {
                if (z10) {
                    aVar.J();
                }
                C(aVar);
                if (!(obj instanceof g)) {
                    return true;
                }
                d0<? extends V> d0Var = ((g) obj).f13734b;
                if (d0Var instanceof i) {
                    aVar = (a) d0Var;
                    obj = aVar.f13715a;
                    if (!(obj == null) && !(obj instanceof g)) {
                        return true;
                    }
                    z11 = true;
                } else {
                    d0Var.cancel(z10);
                    return true;
                }
            } else {
                obj = aVar.f13715a;
                if (!(obj instanceof g)) {
                    return z11;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j10);
        if (!Thread.interrupted()) {
            Object obj = this.f13715a;
            if ((obj != null) & (!(obj instanceof g))) {
                return E(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                l lVar = this.f13717c;
                if (lVar != l.f13741c) {
                    l lVar2 = new l();
                    do {
                        lVar2.a(lVar);
                        if (f13713f.c(this, lVar, lVar2)) {
                            do {
                                j0.a(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f13715a;
                                    if ((obj2 != null) & (!(obj2 instanceof g))) {
                                        return E(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    P(lVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            P(lVar2);
                        } else {
                            lVar = this.f13717c;
                        }
                    } while (lVar != l.f13741c);
                    Object obj3 = this.f13715a;
                    Objects.requireNonNull(obj3);
                    return E(obj3);
                }
                Object obj32 = this.f13715a;
                Objects.requireNonNull(obj32);
                return E(obj32);
            }
            while (nanos > 0) {
                Object obj4 = this.f13715a;
                if ((obj4 != null) & (!(obj4 instanceof g))) {
                    return E(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String aVar = toString();
            String timeUnit2 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = timeUnit2.toLowerCase(locale);
            String lowerCase2 = timeUnit.toString().toLowerCase(locale);
            StringBuilder sb2 = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
            sb2.append("Waited ");
            sb2.append(j10);
            sb2.append(" ");
            sb2.append(lowerCase2);
            String sb3 = sb2.toString();
            if (nanos + 1000 < 0) {
                String concat = String.valueOf(sb3).concat(" (plus ");
                long j11 = -nanos;
                long convert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
                long nanos2 = j11 - timeUnit.toNanos(convert);
                int i9 = (convert > 0L ? 1 : (convert == 0L ? 0 : -1));
                boolean z10 = i9 == 0 || nanos2 > 1000;
                if (i9 > 0) {
                    String valueOf = String.valueOf(concat);
                    StringBuilder sb4 = new StringBuilder(valueOf.length() + 21 + String.valueOf(lowerCase).length());
                    sb4.append(valueOf);
                    sb4.append(convert);
                    sb4.append(" ");
                    sb4.append(lowerCase);
                    String sb5 = sb4.toString();
                    if (z10) {
                        sb5 = String.valueOf(sb5).concat(",");
                    }
                    concat = String.valueOf(sb5).concat(" ");
                }
                if (z10) {
                    String valueOf2 = String.valueOf(concat);
                    StringBuilder sb6 = new StringBuilder(valueOf2.length() + 33);
                    sb6.append(valueOf2);
                    sb6.append(nanos2);
                    sb6.append(" nanoseconds ");
                    concat = sb6.toString();
                }
                sb3 = String.valueOf(concat).concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(String.valueOf(sb3).concat(" but future completed as timeout expired"));
            }
            StringBuilder sb7 = new StringBuilder(String.valueOf(sb3).length() + 5 + String.valueOf(aVar).length());
            sb7.append(sb3);
            sb7.append(" for ");
            sb7.append(aVar);
            throw new TimeoutException(sb7.toString());
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f13715a instanceof c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.f13715a;
        return (!(obj instanceof g)) & (obj != null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void t() {
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb2.append(getClass().getSimpleName());
        } else {
            sb2.append(getClass().getName());
        }
        sb2.append('@');
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            r(sb2);
        } else {
            s(sb2);
        }
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: d  reason: collision with root package name */
        static final e f13724d = new e();

        /* renamed from: a  reason: collision with root package name */
        final Runnable f13725a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f13726b;

        /* renamed from: c  reason: collision with root package name */
        e f13727c;

        e(Runnable runnable, Executor executor) {
            this.f13725a = runnable;
            this.f13726b = executor;
        }

        e() {
            this.f13725a = null;
            this.f13726b = null;
        }
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f13715a;
            if ((obj2 != null) & (!(obj2 instanceof g))) {
                return E(obj2);
            }
            l lVar = this.f13717c;
            if (lVar != l.f13741c) {
                l lVar2 = new l();
                do {
                    lVar2.a(lVar);
                    if (f13713f.c(this, lVar, lVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f13715a;
                            } else {
                                P(lVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof g))));
                        return E(obj);
                    }
                    lVar = this.f13717c;
                } while (lVar != l.f13741c);
                Object obj3 = this.f13715a;
                Objects.requireNonNull(obj3);
                return E(obj3);
            }
            Object obj32 = this.f13715a;
            Objects.requireNonNull(obj32);
            return E(obj32);
        }
        throw new InterruptedException();
    }
}
