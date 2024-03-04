package com.google.android.gms.internal.recaptcha;

import com.tencent.bugly.Bugly;
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
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2.dex */
public abstract class cb<V> extends de implements nd<V> {

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f8559d;

    /* renamed from: e  reason: collision with root package name */
    private static final Logger f8560e;

    /* renamed from: f  reason: collision with root package name */
    private static final db f8561f;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f8562g;
    @NullableDecl

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f8563a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    private volatile gb f8564b;
    @NullableDecl

    /* renamed from: c  reason: collision with root package name */
    private volatile ob f8565c;

    static {
        boolean z10;
        Throwable th2;
        Throwable th3;
        db jbVar;
        try {
            z10 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", Bugly.SDK_IS_DEV));
        } catch (SecurityException unused) {
            z10 = false;
        }
        f8559d = z10;
        f8560e = Logger.getLogger(cb.class.getName());
        try {
            jbVar = new nb(null);
            th3 = null;
            th2 = null;
        } catch (Throwable th4) {
            try {
                th3 = th4;
                jbVar = new hb(AtomicReferenceFieldUpdater.newUpdater(ob.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(ob.class, ob.class, "b"), AtomicReferenceFieldUpdater.newUpdater(cb.class, ob.class, com.huawei.hms.opendevice.c.f27627a), AtomicReferenceFieldUpdater.newUpdater(cb.class, gb.class, "b"), AtomicReferenceFieldUpdater.newUpdater(cb.class, Object.class, "a"));
                th2 = null;
            } catch (Throwable th5) {
                th2 = th5;
                th3 = th4;
                jbVar = new jb(null);
            }
        }
        f8561f = jbVar;
        if (th2 != null) {
            Logger logger = f8560e;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th3);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
        f8562g = new Object();
    }

    private final void M(StringBuilder sb2) {
        try {
            Object p10 = p(this);
            sb2.append("SUCCESS, result=[");
            if (p10 == null) {
                sb2.append("null");
            } else if (p10 == this) {
                sb2.append("this future");
            } else {
                sb2.append(p10.getClass().getName());
                sb2.append("@");
                sb2.append(Integer.toHexString(System.identityHashCode(p10)));
            }
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

    private final void O(StringBuilder sb2) {
        String sb3;
        int length = sb2.length();
        sb2.append("PENDING");
        Object obj = this.f8563a;
        if (obj instanceof ib) {
            sb2.append(", setFuture=[");
            P(sb2, ((ib) obj).f8760b);
            sb2.append("]");
        } else {
            try {
                sb3 = g8.a(k());
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
            M(sb2);
        }
    }

    private final void P(StringBuilder sb2, Object obj) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.android.gms.internal.recaptcha.db] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.recaptcha.cb<?>] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.recaptcha.cb] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v7, types: [com.google.android.gms.internal.recaptcha.cb, com.google.android.gms.internal.recaptcha.cb<V>] */
    public static void R(cb<?> cbVar) {
        gb gbVar;
        gb gbVar2;
        gb gbVar3 = null;
        while (true) {
            ob obVar = ((cb) cbVar).f8565c;
            if (f8561f.e((cb) cbVar, obVar, ob.f8942c)) {
                while (obVar != null) {
                    Thread thread = obVar.f8943a;
                    if (thread != null) {
                        obVar.f8943a = null;
                        LockSupport.unpark(thread);
                    }
                    obVar = obVar.f8944b;
                }
                ((cb) cbVar).l();
                do {
                    gbVar = ((cb) cbVar).f8564b;
                } while (!f8561f.c((cb) cbVar, gbVar, gb.f8708d));
                while (true) {
                    gbVar2 = gbVar3;
                    gbVar3 = gbVar;
                    if (gbVar3 == null) {
                        break;
                    }
                    gbVar = gbVar3.f8711c;
                    gbVar3.f8711c = gbVar2;
                }
                while (gbVar2 != null) {
                    gbVar3 = gbVar2.f8711c;
                    Runnable runnable = gbVar2.f8709a;
                    if (runnable instanceof ib) {
                        ib ibVar = (ib) runnable;
                        cbVar = ibVar.f8759a;
                        if (((cb) cbVar).f8563a == ibVar) {
                            if (f8561f.d(cbVar, ibVar, o(ibVar.f8760b))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        h(runnable, gbVar2.f8710b);
                    }
                    gbVar2 = gbVar3;
                }
                return;
            }
        }
    }

    private static void h(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            Logger logger = f8560e;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb2.append("RuntimeException while executing runnable ");
            sb2.append(valueOf);
            sb2.append(" with executor ");
            sb2.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb2.toString(), (Throwable) e10);
        }
    }

    private final void i(ob obVar) {
        obVar.f8943a = null;
        while (true) {
            ob obVar2 = this.f8565c;
            if (obVar2 != ob.f8942c) {
                ob obVar3 = null;
                while (obVar2 != null) {
                    ob obVar4 = obVar2.f8944b;
                    if (obVar2.f8943a != null) {
                        obVar3 = obVar2;
                    } else if (obVar3 != null) {
                        obVar3.f8944b = obVar4;
                        if (obVar3.f8943a == null) {
                            break;
                        }
                    } else if (!f8561f.e(this, obVar2, obVar4)) {
                        break;
                    }
                    obVar2 = obVar4;
                }
                return;
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final V j(Object obj) throws ExecutionException {
        if (!(obj instanceof eb)) {
            if (obj instanceof fb) {
                throw new ExecutionException(((fb) obj).f8680a);
            }
            if (obj == f8562g) {
                return null;
            }
            return obj;
        }
        Throwable th2 = ((eb) obj).f8646b;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th2);
        throw cancellationException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object o(nd<?> ndVar) {
        Throwable b10;
        if (ndVar instanceof kb) {
            Object obj = ((cb) ndVar).f8563a;
            if (obj instanceof eb) {
                eb ebVar = (eb) obj;
                if (ebVar.f8645a) {
                    Throwable th2 = ebVar.f8646b;
                    return th2 != null ? new eb(false, th2) : eb.f8644d;
                }
                return obj;
            }
            return obj;
        } else if ((ndVar instanceof de) && (b10 = ((de) ndVar).b()) != null) {
            return new fb(b10);
        } else {
            boolean isCancelled = ndVar.isCancelled();
            if ((!f8559d) & isCancelled) {
                return eb.f8644d;
            }
            try {
                Object p10 = p(ndVar);
                if (!isCancelled) {
                    return p10 == null ? f8562g : p10;
                }
                String valueOf = String.valueOf(ndVar);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 84);
                sb2.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb2.append(valueOf);
                return new eb(false, new IllegalArgumentException(sb2.toString()));
            } catch (CancellationException e10) {
                if (!isCancelled) {
                    String valueOf2 = String.valueOf(ndVar);
                    StringBuilder sb3 = new StringBuilder(valueOf2.length() + 77);
                    sb3.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
                    sb3.append(valueOf2);
                    return new fb(new IllegalArgumentException(sb3.toString(), e10));
                }
                return new eb(false, e10);
            } catch (ExecutionException e11) {
                if (isCancelled) {
                    String valueOf3 = String.valueOf(ndVar);
                    StringBuilder sb4 = new StringBuilder(valueOf3.length() + 84);
                    sb4.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                    sb4.append(valueOf3);
                    return new eb(false, new IllegalArgumentException(sb4.toString(), e11));
                }
                return new fb(e11.getCause());
            } catch (Throwable th3) {
                return new fb(th3);
            }
        }
    }

    private static <V> V p(Future<V> future) throws ExecutionException {
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

    protected void D() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void E(@NullableDecl Future<?> future) {
        if ((future != null) && (this.f8563a instanceof eb)) {
            future.cancel(K());
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.nd
    public final void F(Runnable runnable, Executor executor) {
        gb gbVar;
        z7.c(runnable, "Runnable was null.");
        z7.c(executor, "Executor was null.");
        if (!isDone() && (gbVar = this.f8564b) != gb.f8708d) {
            gb gbVar2 = new gb(runnable, executor);
            do {
                gbVar2.f8711c = gbVar;
                if (f8561f.c(this, gbVar, gbVar2)) {
                    return;
                }
                gbVar = this.f8564b;
            } while (gbVar != gb.f8708d);
            h(runnable, executor);
        }
        h(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean H(@NullableDecl V v10) {
        if (v10 == null) {
            v10 = (V) f8562g;
        }
        if (f8561f.d(this, null, v10)) {
            R(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean J(Throwable th2) {
        Objects.requireNonNull(th2);
        if (f8561f.d(this, null, new fb(th2))) {
            R(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean K() {
        Object obj = this.f8563a;
        return (obj instanceof eb) && ((eb) obj).f8645a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.recaptcha.de
    @NullableDecl
    public final Throwable b() {
        if (this instanceof kb) {
            Object obj = this.f8563a;
            if (obj instanceof fb) {
                return ((fb) obj).f8680a;
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0058, code lost:
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f8563a
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L8
            r3 = 1
            goto L9
        L8:
            r3 = 0
        L9:
            boolean r4 = r0 instanceof com.google.android.gms.internal.recaptcha.ib
            r3 = r3 | r4
            if (r3 == 0) goto L61
            boolean r3 = com.google.android.gms.internal.recaptcha.cb.f8559d
            if (r3 == 0) goto L1f
            com.google.android.gms.internal.recaptcha.eb r3 = new com.google.android.gms.internal.recaptcha.eb
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r3.<init>(r8, r4)
            goto L26
        L1f:
            if (r8 == 0) goto L24
            com.google.android.gms.internal.recaptcha.eb r3 = com.google.android.gms.internal.recaptcha.eb.f8643c
            goto L26
        L24:
            com.google.android.gms.internal.recaptcha.eb r3 = com.google.android.gms.internal.recaptcha.eb.f8644d
        L26:
            r5 = 0
            r4 = r7
        L28:
            com.google.android.gms.internal.recaptcha.db r6 = com.google.android.gms.internal.recaptcha.cb.f8561f
            boolean r6 = r6.d(r4, r0, r3)
            if (r6 == 0) goto L5a
            if (r8 == 0) goto L35
            r4.D()
        L35:
            R(r4)
            boolean r4 = r0 instanceof com.google.android.gms.internal.recaptcha.ib
            if (r4 == 0) goto L58
            com.google.android.gms.internal.recaptcha.ib r0 = (com.google.android.gms.internal.recaptcha.ib) r0
            com.google.android.gms.internal.recaptcha.nd<? extends V> r0 = r0.f8760b
            boolean r4 = r0 instanceof com.google.android.gms.internal.recaptcha.kb
            if (r4 == 0) goto L55
            r4 = r0
            com.google.android.gms.internal.recaptcha.cb r4 = (com.google.android.gms.internal.recaptcha.cb) r4
            java.lang.Object r0 = r4.f8563a
            if (r0 != 0) goto L4d
            r5 = 1
            goto L4e
        L4d:
            r5 = 0
        L4e:
            boolean r6 = r0 instanceof com.google.android.gms.internal.recaptcha.ib
            r5 = r5 | r6
            if (r5 == 0) goto L58
            r5 = 1
            goto L28
        L55:
            r0.cancel(r8)
        L58:
            r1 = 1
            goto L61
        L5a:
            java.lang.Object r0 = r4.f8563a
            boolean r6 = r0 instanceof com.google.android.gms.internal.recaptcha.ib
            if (r6 != 0) goto L28
            r1 = r5
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.cb.cancel(boolean):boolean");
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f8563a;
            if ((obj2 != null) && (!(obj2 instanceof ib))) {
                return (V) j(obj2);
            }
            ob obVar = this.f8565c;
            if (obVar != ob.f8942c) {
                ob obVar2 = new ob();
                do {
                    db dbVar = f8561f;
                    dbVar.a(obVar2, obVar);
                    if (dbVar.e(this, obVar, obVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f8563a;
                            } else {
                                i(obVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof ib))));
                        return (V) j(obj);
                    }
                    obVar = this.f8565c;
                } while (obVar != ob.f8942c);
                return (V) j(this.f8563a);
            }
            return (V) j(this.f8563a);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f8563a instanceof eb;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f8563a;
        return (!(obj instanceof ib)) & (obj != null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NullableDecl
    public String k() {
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

    protected void l() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean n(nd<? extends V> ndVar) {
        fb fbVar;
        Objects.requireNonNull(ndVar);
        Object obj = this.f8563a;
        if (obj == null) {
            if (ndVar.isDone()) {
                if (f8561f.d(this, null, o(ndVar))) {
                    R(this);
                    return true;
                }
                return false;
            }
            ib ibVar = new ib(this, ndVar);
            if (f8561f.d(this, null, ibVar)) {
                try {
                    ndVar.F(ibVar, kc.INSTANCE);
                } catch (Throwable th2) {
                    try {
                        fbVar = new fb(th2);
                    } catch (Throwable unused) {
                        fbVar = fb.f8679b;
                    }
                    f8561f.d(this, ibVar, fbVar);
                }
                return true;
            }
            obj = this.f8563a;
        }
        if (obj instanceof eb) {
            ndVar.cancel(((eb) obj).f8645a);
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb2.append(getClass().getSimpleName());
        } else {
            sb2.append(getClass().getName());
        }
        sb2.append('@');
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append("[status=");
        if (this.f8563a instanceof eb) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            M(sb2);
        } else {
            O(sb2);
        }
        sb2.append("]");
        return sb2.toString();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j10);
        if (!Thread.interrupted()) {
            Object obj = this.f8563a;
            boolean z10 = true;
            if ((obj != null) & (!(obj instanceof ib))) {
                return (V) j(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                ob obVar = this.f8565c;
                if (obVar != ob.f8942c) {
                    ob obVar2 = new ob();
                    do {
                        db dbVar = f8561f;
                        dbVar.a(obVar2, obVar);
                        if (dbVar.e(this, obVar, obVar2)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f8563a;
                                    if ((obj2 != null) & (!(obj2 instanceof ib))) {
                                        return (V) j(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    i(obVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            i(obVar2);
                        } else {
                            obVar = this.f8565c;
                        }
                    } while (obVar != ob.f8942c);
                    return (V) j(this.f8563a);
                }
                return (V) j(this.f8563a);
            }
            while (nanos > 0) {
                Object obj3 = this.f8563a;
                if ((obj3 != null) & (!(obj3 instanceof ib))) {
                    return (V) j(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String cbVar = toString();
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
                if (i9 != 0 && nanos2 <= 1000) {
                    z10 = false;
                }
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
            StringBuilder sb7 = new StringBuilder(String.valueOf(sb3).length() + 5 + String.valueOf(cbVar).length());
            sb7.append(sb3);
            sb7.append(" for ");
            sb7.append(cbVar);
            throw new TimeoutException(sb7.toString());
        }
        throw new InterruptedException();
    }
}
