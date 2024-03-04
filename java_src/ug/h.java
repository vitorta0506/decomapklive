package ug;

import io.grpc.netty.shaded.io.netty.util.concurrent.BlockingOperationException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes5.dex */
public class h<V> extends ug.c<V> implements x<V> {

    /* renamed from: f  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f58466f = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(h.class);

    /* renamed from: g  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f58467g = io.grpc.netty.shaded.io.netty.util.internal.logging.c.c(h.class.getName() + ".rejectedExecution");

    /* renamed from: h  reason: collision with root package name */
    private static final int f58468h = Math.min(8, io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.defaultPromise.maxListenerStackDepth", 8));

    /* renamed from: i  reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater<h, Object> f58469i = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "a");

    /* renamed from: j  reason: collision with root package name */
    private static final Object f58470j = new Object();

    /* renamed from: k  reason: collision with root package name */
    private static final Object f58471k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static final c f58472l;

    /* renamed from: m  reason: collision with root package name */
    private static final StackTraceElement[] f58473m;

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f58474a;

    /* renamed from: b  reason: collision with root package name */
    private final j f58475b;

    /* renamed from: c  reason: collision with root package name */
    private Object f58476c;

    /* renamed from: d  reason: collision with root package name */
    private short f58477d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f58478e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.W();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q f58480a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ r f58481b;

        b(q qVar, r rVar) {
            this.f58480a = qVar;
            this.f58481b = rVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            h.M(this.f58480a, this.f58481b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final Throwable f58482a;

        c(Throwable th2) {
            this.f58482a = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d extends CancellationException {
        private static final long serialVersionUID = 2794674970981187807L;

        private d() {
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            setStackTrace(h.f58473m);
            return this;
        }

        @Override // java.lang.Throwable
        public String toString() {
            return CancellationException.class.getName();
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private static final class e extends CancellationException {
        private static final long serialVersionUID = -2974906711413716191L;

        private e() {
        }

        static e a(Class<?> cls, String str) {
            return (e) io.grpc.netty.shaded.io.netty.util.internal.e0.f(new e(), cls, str);
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    static {
        c cVar = new c(e.a(h.class, "cancel(...)"));
        f58472l = cVar;
        f58473m = cVar.f58482a.getStackTrace();
    }

    public h(j jVar) {
        this.f58475b = (j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "executor");
    }

    private static boolean A(Object obj) {
        return (obj == null || obj == f58471k) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void C(j jVar, q<?> qVar, r<?> rVar) {
        T((j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "eventExecutor"), (q) io.grpc.netty.shaded.io.netty.util.internal.s.h(qVar, "future"), (r) io.grpc.netty.shaded.io.netty.util.internal.s.h(rVar, "listener"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void M(q qVar, r rVar) {
        try {
            rVar.e(qVar);
        } catch (Throwable th2) {
            if (f58466f.isWarnEnabled()) {
                io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = f58466f;
                bVar.warn("An exception was thrown by " + rVar.getClass().getName() + ".operationComplete()", th2);
            }
        }
    }

    private static void T(j jVar, q<?> qVar, r<?> rVar) {
        io.grpc.netty.shaded.io.netty.util.internal.k e10;
        int d10;
        if (jVar.Y() && (d10 = (e10 = io.grpc.netty.shaded.io.netty.util.internal.k.e()).d()) < f58468h) {
            e10.n(d10 + 1);
            try {
                M(qVar, rVar);
                return;
            } finally {
                e10.n(d10);
            }
        }
        Z(jVar, new b(qVar, rVar));
    }

    private void U() {
        io.grpc.netty.shaded.io.netty.util.internal.k e10;
        int d10;
        j v10 = v();
        if (v10.Y() && (d10 = (e10 = io.grpc.netty.shaded.io.netty.util.internal.k.e()).d()) < f58468h) {
            e10.n(d10 + 1);
            try {
                W();
                return;
            } finally {
                e10.n(d10);
            }
        }
        Z(v10, new a());
    }

    private void V(g gVar) {
        r<? extends q<?>>[] b10 = gVar.b();
        int d10 = gVar.d();
        for (int i9 = 0; i9 < d10; i9++) {
            M(this, b10[i9]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        Object obj;
        synchronized (this) {
            if (!this.f58478e && (obj = this.f58476c) != null) {
                this.f58478e = true;
                this.f58476c = null;
                while (true) {
                    if (obj instanceof g) {
                        V((g) obj);
                    } else {
                        M(this, (r) obj);
                    }
                    synchronized (this) {
                        obj = this.f58476c;
                        if (obj == null) {
                            this.f58478e = false;
                            return;
                        }
                        this.f58476c = null;
                    }
                }
            }
        }
    }

    private void Y(r<? extends q<? super V>> rVar) {
        Object obj = this.f58476c;
        if (obj instanceof g) {
            ((g) obj).c(rVar);
        } else if (obj == rVar) {
            this.f58476c = null;
        }
    }

    private static void Z(j jVar, Runnable runnable) {
        try {
            jVar.execute(runnable);
        } catch (Throwable th2) {
            f58467g.error("Failed to submit a listener notification task. Event loop shut down?", th2);
        }
    }

    private boolean g0(Throwable th2) {
        return i0(new c((Throwable) io.grpc.netty.shaded.io.netty.util.internal.s.h(th2, "cause")));
    }

    private boolean h0(V v10) {
        if (v10 == null) {
            v10 = (V) f58470j;
        }
        return i0(v10);
    }

    private boolean i0(Object obj) {
        AtomicReferenceFieldUpdater<h, Object> atomicReferenceFieldUpdater = f58469i;
        if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, null, obj) || androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, f58471k, obj)) {
            if (s()) {
                U();
                return true;
            }
            return true;
        }
        return false;
    }

    private void l(r<? extends q<? super V>> rVar) {
        Object obj = this.f58476c;
        if (obj == null) {
            this.f58476c = rVar;
        } else if (obj instanceof g) {
            ((g) obj).a(rVar);
        } else {
            this.f58476c = new g((r) obj, rVar);
        }
    }

    private boolean p(long j10, boolean z10) throws InterruptedException {
        boolean z11 = true;
        if (isDone()) {
            return true;
        }
        if (j10 <= 0) {
            return isDone();
        }
        if (z10 && Thread.interrupted()) {
            throw new InterruptedException(toString());
        }
        r();
        long nanoTime = System.nanoTime();
        synchronized (this) {
            boolean z12 = false;
            long j11 = j10;
            while (!isDone() && j11 > 0) {
                try {
                    w();
                    try {
                        wait(j11 / 1000000, (int) (j11 % 1000000));
                        t();
                    } catch (InterruptedException e10) {
                        if (z10) {
                            throw e10;
                        }
                        try {
                            t();
                            z12 = true;
                        } catch (Throwable th2) {
                            th = th2;
                            if (z11) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    }
                    if (isDone()) {
                        if (z12) {
                            Thread.currentThread().interrupt();
                        }
                        return true;
                    }
                    j11 = j10 - (System.nanoTime() - nanoTime);
                } catch (Throwable th3) {
                    th = th3;
                    z11 = z12;
                }
            }
            boolean isDone = isDone();
            if (z12) {
                Thread.currentThread().interrupt();
            }
            return isDone;
        }
    }

    private Throwable q(Object obj) {
        if (obj instanceof c) {
            c cVar = f58472l;
            if (obj == cVar) {
                d dVar = new d(null);
                if (androidx.concurrent.futures.a.a(f58469i, this, cVar, new c(dVar))) {
                    return dVar;
                }
                obj = this.f58474a;
            }
            return ((c) obj).f58482a;
        }
        return null;
    }

    private synchronized boolean s() {
        if (this.f58477d > 0) {
            notifyAll();
        }
        return this.f58476c != null;
    }

    private void t() {
        this.f58477d = (short) (this.f58477d - 1);
    }

    private void w() {
        short s10 = this.f58477d;
        if (s10 != Short.MAX_VALUE) {
            this.f58477d = (short) (s10 + 1);
            return;
        }
        throw new IllegalStateException("too many waiters: " + this);
    }

    private static boolean y(Object obj) {
        return (obj instanceof c) && (((c) obj).f58482a instanceof CancellationException);
    }

    public boolean B(V v10) {
        return h0(v10);
    }

    @Override // ug.q
    public Throwable L() {
        return q(this.f58474a);
    }

    @Override // ug.q
    public V Q() {
        V v10 = (V) this.f58474a;
        if ((v10 instanceof c) || v10 == f58470j || v10 == f58471k) {
            return null;
        }
        return v10;
    }

    @Override // ug.q
    /* renamed from: X */
    public x<V> f(r<? extends q<? super V>> rVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(rVar, "listener");
        synchronized (this) {
            Y(rVar);
        }
        return this;
    }

    @Override // ug.q
    public boolean await(long j10, TimeUnit timeUnit) throws InterruptedException {
        return p(timeUnit.toNanos(j10), true);
    }

    @Override // ug.q, java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        if (androidx.concurrent.futures.a.a(f58469i, this, null, f58472l)) {
            if (s()) {
                U();
                return true;
            }
            return true;
        }
        return false;
    }

    public x<V> d0(Throwable th2) {
        if (g0(th2)) {
            return this;
        }
        throw new IllegalStateException("complete already: " + this, th2);
    }

    @Override // ug.x
    public boolean g() {
        if (androidx.concurrent.futures.a.a(f58469i, this, null, f58471k)) {
            return true;
        }
        Object obj = this.f58474a;
        return (A(obj) && y(obj)) ? false : true;
    }

    @Override // ug.c, java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        V v10 = (V) this.f58474a;
        if (!A(v10)) {
            c0();
            v10 = (V) this.f58474a;
        }
        if (v10 == f58470j || v10 == f58471k) {
            return null;
        }
        Throwable q10 = q(v10);
        if (q10 == null) {
            return v10;
        }
        if (q10 instanceof CancellationException) {
            throw ((CancellationException) q10);
        }
        throw new ExecutionException(q10);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return y(this.f58474a);
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return A(this.f58474a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StringBuilder j0() {
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.m(this));
        sb2.append('@');
        sb2.append(Integer.toHexString(hashCode()));
        Object obj = this.f58474a;
        if (obj == f58470j) {
            sb2.append("(success)");
        } else if (obj == f58471k) {
            sb2.append("(uncancellable)");
        } else if (obj instanceof c) {
            sb2.append("(failure: ");
            sb2.append(((c) obj).f58482a);
            sb2.append(')');
        } else if (obj != null) {
            sb2.append("(success: ");
            sb2.append(obj);
            sb2.append(')');
        } else {
            sb2.append("(incomplete)");
        }
        return sb2;
    }

    public x<V> m0(V v10) {
        if (h0(v10)) {
            return this;
        }
        throw new IllegalStateException("complete already: " + this);
    }

    @Override // ug.q
    /* renamed from: o */
    public x<V> c0() throws InterruptedException {
        if (isDone()) {
            return this;
        }
        if (!Thread.interrupted()) {
            r();
            synchronized (this) {
                while (!isDone()) {
                    w();
                    wait();
                    t();
                }
            }
            return this;
        }
        throw new InterruptedException(toString());
    }

    @Override // ug.q
    public boolean p0() {
        Object obj = this.f58474a;
        return (obj == null || obj == f58471k || (obj instanceof c)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r() {
        j v10 = v();
        if (v10 != null && v10.Y()) {
            throw new BlockingOperationException(toString());
        }
    }

    public String toString() {
        return j0().toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j v() {
        return this.f58475b;
    }

    public boolean z(Throwable th2) {
        return g0(th2);
    }

    @Override // ug.q, io.grpc.netty.shaded.io.netty.channel.i
    public x<V> c(r<? extends q<? super V>> rVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(rVar, "listener");
        synchronized (this) {
            l(rVar);
        }
        if (isDone()) {
            U();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h() {
        this.f58475b = null;
    }

    @Override // ug.c, java.util.concurrent.Future
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        V v10 = (V) this.f58474a;
        if (!A(v10)) {
            if (await(j10, timeUnit)) {
                v10 = (V) this.f58474a;
            } else {
                throw new TimeoutException();
            }
        }
        if (v10 == f58470j || v10 == f58471k) {
            return null;
        }
        Throwable q10 = q(v10);
        if (q10 == null) {
            return v10;
        }
        if (q10 instanceof CancellationException) {
            throw ((CancellationException) q10);
        }
        throw new ExecutionException(q10);
    }
}
