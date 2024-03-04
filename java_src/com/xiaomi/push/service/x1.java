package com.xiaomi.push.service;

import android.os.SystemClock;
import com.facebook.AuthenticationTokenClaims;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes5.dex */
public class x1 {

    /* renamed from: c  reason: collision with root package name */
    private static long f37398c;

    /* renamed from: d  reason: collision with root package name */
    private static long f37399d;

    /* renamed from: a  reason: collision with root package name */
    private final c f37400a;

    /* renamed from: b  reason: collision with root package name */
    private final a f37401b;

    /* loaded from: classes5.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final c f37402a;

        a(c cVar) {
            this.f37402a = cVar;
        }

        protected void finalize() {
            try {
                synchronized (this.f37402a) {
                    this.f37402a.f37408e = true;
                    this.f37402a.notify();
                }
            } finally {
                super.finalize();
            }
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        protected int f37403a;

        public b(int i9) {
            this.f37403a = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c extends Thread {

        /* renamed from: d  reason: collision with root package name */
        private boolean f37407d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f37408e;

        /* renamed from: a  reason: collision with root package name */
        private volatile long f37404a = 0;

        /* renamed from: b  reason: collision with root package name */
        private volatile boolean f37405b = false;

        /* renamed from: c  reason: collision with root package name */
        private long f37406c = 50;

        /* renamed from: f  reason: collision with root package name */
        private a f37409f = new a();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes5.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private int f37410a;

            /* renamed from: b  reason: collision with root package name */
            private d[] f37411b;

            /* renamed from: c  reason: collision with root package name */
            private int f37412c;

            /* renamed from: d  reason: collision with root package name */
            private int f37413d;

            private a() {
                this.f37410a = 256;
                this.f37411b = new d[256];
                this.f37412c = 0;
                this.f37413d = 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int b(d dVar) {
                int i9 = 0;
                while (true) {
                    d[] dVarArr = this.f37411b;
                    if (i9 >= dVarArr.length) {
                        return -1;
                    }
                    if (dVarArr[i9] == dVar) {
                        return i9;
                    }
                    i9++;
                }
            }

            private void l() {
                int i9 = this.f37412c - 1;
                int i10 = (i9 - 1) / 2;
                while (true) {
                    d[] dVarArr = this.f37411b;
                    if (dVarArr[i9].f37416c >= dVarArr[i10].f37416c) {
                        return;
                    }
                    d dVar = dVarArr[i9];
                    dVarArr[i9] = dVarArr[i10];
                    dVarArr[i10] = dVar;
                    int i11 = i10;
                    i10 = (i10 - 1) / 2;
                    i9 = i11;
                }
            }

            private void m(int i9) {
                int i10 = (i9 * 2) + 1;
                while (true) {
                    int i11 = this.f37412c;
                    if (i10 >= i11 || i11 <= 0) {
                        return;
                    }
                    int i12 = i10 + 1;
                    if (i12 < i11) {
                        d[] dVarArr = this.f37411b;
                        if (dVarArr[i12].f37416c < dVarArr[i10].f37416c) {
                            i10 = i12;
                        }
                    }
                    d[] dVarArr2 = this.f37411b;
                    if (dVarArr2[i9].f37416c < dVarArr2[i10].f37416c) {
                        return;
                    }
                    d dVar = dVarArr2[i9];
                    dVarArr2[i9] = dVarArr2[i10];
                    dVarArr2[i10] = dVar;
                    int i13 = i10;
                    i10 = (i10 * 2) + 1;
                    i9 = i13;
                }
            }

            public d c() {
                return this.f37411b[0];
            }

            public void d() {
                this.f37411b = new d[this.f37410a];
                this.f37412c = 0;
            }

            public void e(int i9) {
                for (int i10 = 0; i10 < this.f37412c; i10++) {
                    d[] dVarArr = this.f37411b;
                    if (dVarArr[i10].f37418e == i9) {
                        dVarArr[i10].b();
                    }
                }
                j();
            }

            public void f(int i9, b bVar) {
                for (int i10 = 0; i10 < this.f37412c; i10++) {
                    d[] dVarArr = this.f37411b;
                    if (dVarArr[i10].f37417d == bVar) {
                        dVarArr[i10].b();
                    }
                }
                j();
            }

            public void g(d dVar) {
                d[] dVarArr = this.f37411b;
                int length = dVarArr.length;
                int i9 = this.f37412c;
                if (length == i9) {
                    d[] dVarArr2 = new d[i9 * 2];
                    System.arraycopy(dVarArr, 0, dVarArr2, 0, i9);
                    this.f37411b = dVarArr2;
                }
                d[] dVarArr3 = this.f37411b;
                int i10 = this.f37412c;
                this.f37412c = i10 + 1;
                dVarArr3[i10] = dVar;
                l();
            }

            public boolean h() {
                return this.f37412c == 0;
            }

            public boolean i(int i9) {
                for (int i10 = 0; i10 < this.f37412c; i10++) {
                    if (this.f37411b[i10].f37418e == i9) {
                        return true;
                    }
                }
                return false;
            }

            public void j() {
                int i9 = 0;
                while (i9 < this.f37412c) {
                    if (this.f37411b[i9].f37415b) {
                        this.f37413d++;
                        k(i9);
                        i9--;
                    }
                    i9++;
                }
            }

            public void k(int i9) {
                int i10;
                if (i9 < 0 || i9 >= (i10 = this.f37412c)) {
                    return;
                }
                d[] dVarArr = this.f37411b;
                int i11 = i10 - 1;
                this.f37412c = i11;
                dVarArr[i9] = dVarArr[i11];
                dVarArr[i11] = null;
                m(i9);
            }
        }

        c(String str, boolean z10) {
            setName(str);
            setDaemon(z10);
            start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(d dVar) {
            this.f37409f.g(dVar);
            notify();
        }

        public synchronized void c() {
            this.f37407d = true;
            this.f37409f.d();
            notify();
        }

        public boolean g() {
            return this.f37405b && SystemClock.uptimeMillis() - this.f37404a > AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED;
        }

        /* JADX WARN: Code restructure failed: missing block: B:50:0x008e, code lost:
            r10.f37404a = android.os.SystemClock.uptimeMillis();
            r10.f37405b = true;
            r2.f37417d.run();
            r10.f37405b = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x009f, code lost:
            r1 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00a0, code lost:
            monitor-enter(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00a1, code lost:
            r10.f37407d = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00a4, code lost:
            throw r1;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r10 = this;
            L0:
                monitor-enter(r10)
                boolean r0 = r10.f37407d     // Catch: java.lang.Throwable -> Lae
                if (r0 == 0) goto L7
                monitor-exit(r10)     // Catch: java.lang.Throwable -> Lae
                return
            L7:
                com.xiaomi.push.service.x1$c$a r0 = r10.f37409f     // Catch: java.lang.Throwable -> Lae
                boolean r0 = r0.h()     // Catch: java.lang.Throwable -> Lae
                if (r0 == 0) goto L1a
                boolean r0 = r10.f37408e     // Catch: java.lang.Throwable -> Lae
                if (r0 == 0) goto L15
                monitor-exit(r10)     // Catch: java.lang.Throwable -> Lae
                return
            L15:
                r10.wait()     // Catch: java.lang.InterruptedException -> L18 java.lang.Throwable -> Lae
            L18:
                monitor-exit(r10)     // Catch: java.lang.Throwable -> Lae
                goto L0
            L1a:
                long r0 = com.xiaomi.push.service.x1.a()     // Catch: java.lang.Throwable -> Lae
                com.xiaomi.push.service.x1$c$a r2 = r10.f37409f     // Catch: java.lang.Throwable -> Lae
                com.xiaomi.push.service.x1$d r2 = r2.c()     // Catch: java.lang.Throwable -> Lae
                java.lang.Object r3 = r2.f37414a     // Catch: java.lang.Throwable -> Lae
                monitor-enter(r3)     // Catch: java.lang.Throwable -> Lae
                boolean r4 = r2.f37415b     // Catch: java.lang.Throwable -> Lab
                r5 = 0
                if (r4 == 0) goto L33
                com.xiaomi.push.service.x1$c$a r0 = r10.f37409f     // Catch: java.lang.Throwable -> Lab
                r0.k(r5)     // Catch: java.lang.Throwable -> Lab
                monitor-exit(r3)     // Catch: java.lang.Throwable -> Lab
                goto L18
            L33:
                long r6 = r2.f37416c     // Catch: java.lang.Throwable -> Lab
                long r6 = r6 - r0
                monitor-exit(r3)     // Catch: java.lang.Throwable -> Lab
                r0 = 50
                r3 = 0
                int r8 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
                if (r8 <= 0) goto L55
                long r2 = r10.f37406c     // Catch: java.lang.Throwable -> Lae
                int r4 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
                if (r4 <= 0) goto L46
                r6 = r2
            L46:
                long r2 = r2 + r0
                r10.f37406c = r2     // Catch: java.lang.Throwable -> Lae
                r0 = 500(0x1f4, double:2.47E-321)
                int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r4 <= 0) goto L51
                r10.f37406c = r0     // Catch: java.lang.Throwable -> Lae
            L51:
                r10.wait(r6)     // Catch: java.lang.InterruptedException -> L18 java.lang.Throwable -> Lae
                goto L18
            L55:
                r10.f37406c = r0     // Catch: java.lang.Throwable -> Lae
                java.lang.Object r0 = r2.f37414a     // Catch: java.lang.Throwable -> Lae
                monitor-enter(r0)     // Catch: java.lang.Throwable -> Lae
                com.xiaomi.push.service.x1$c$a r1 = r10.f37409f     // Catch: java.lang.Throwable -> La8
                com.xiaomi.push.service.x1$d r1 = r1.c()     // Catch: java.lang.Throwable -> La8
                long r6 = r1.f37416c     // Catch: java.lang.Throwable -> La8
                long r8 = r2.f37416c     // Catch: java.lang.Throwable -> La8
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 == 0) goto L6f
                com.xiaomi.push.service.x1$c$a r1 = r10.f37409f     // Catch: java.lang.Throwable -> La8
                int r1 = com.xiaomi.push.service.x1.c.a.a(r1, r2)     // Catch: java.lang.Throwable -> La8
                goto L70
            L6f:
                r1 = 0
            L70:
                boolean r6 = r2.f37415b     // Catch: java.lang.Throwable -> La8
                if (r6 == 0) goto L7f
                com.xiaomi.push.service.x1$c$a r1 = r10.f37409f     // Catch: java.lang.Throwable -> La8
                int r2 = com.xiaomi.push.service.x1.c.a.a(r1, r2)     // Catch: java.lang.Throwable -> La8
                r1.k(r2)     // Catch: java.lang.Throwable -> La8
                monitor-exit(r0)     // Catch: java.lang.Throwable -> La8
                goto L18
            L7f:
                long r6 = r2.f37416c     // Catch: java.lang.Throwable -> La8
                r2.a(r6)     // Catch: java.lang.Throwable -> La8
                com.xiaomi.push.service.x1$c$a r6 = r10.f37409f     // Catch: java.lang.Throwable -> La8
                r6.k(r1)     // Catch: java.lang.Throwable -> La8
                r2.f37416c = r3     // Catch: java.lang.Throwable -> La8
                monitor-exit(r0)     // Catch: java.lang.Throwable -> La8
                monitor-exit(r10)     // Catch: java.lang.Throwable -> Lae
                r0 = 1
                long r3 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> L9f
                r10.f37404a = r3     // Catch: java.lang.Throwable -> L9f
                r10.f37405b = r0     // Catch: java.lang.Throwable -> L9f
                com.xiaomi.push.service.x1$b r1 = r2.f37417d     // Catch: java.lang.Throwable -> L9f
                r1.run()     // Catch: java.lang.Throwable -> L9f
                r10.f37405b = r5     // Catch: java.lang.Throwable -> L9f
                goto L0
            L9f:
                r1 = move-exception
                monitor-enter(r10)
                r10.f37407d = r0     // Catch: java.lang.Throwable -> La5
                monitor-exit(r10)     // Catch: java.lang.Throwable -> La5
                throw r1
            La5:
                r0 = move-exception
                monitor-exit(r10)     // Catch: java.lang.Throwable -> La5
                throw r0
            La8:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> La8
                throw r1     // Catch: java.lang.Throwable -> Lae
            Lab:
                r0 = move-exception
                monitor-exit(r3)     // Catch: java.lang.Throwable -> Lab
                throw r0     // Catch: java.lang.Throwable -> Lae
            Lae:
                r0 = move-exception
                monitor-exit(r10)     // Catch: java.lang.Throwable -> Lae
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.x1.c.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        final Object f37414a = new Object();

        /* renamed from: b  reason: collision with root package name */
        boolean f37415b;

        /* renamed from: c  reason: collision with root package name */
        long f37416c;

        /* renamed from: d  reason: collision with root package name */
        b f37417d;

        /* renamed from: e  reason: collision with root package name */
        int f37418e;

        /* renamed from: f  reason: collision with root package name */
        private long f37419f;

        d() {
        }

        void a(long j10) {
            synchronized (this.f37414a) {
                this.f37419f = j10;
            }
        }

        public boolean b() {
            boolean z10;
            synchronized (this.f37414a) {
                z10 = !this.f37415b && this.f37416c > 0;
                this.f37415b = true;
            }
            return z10;
        }
    }

    static {
        long elapsedRealtime = SystemClock.elapsedRealtime() > 0 ? SystemClock.elapsedRealtime() : 0L;
        f37398c = elapsedRealtime;
        f37399d = elapsedRealtime;
    }

    public x1(String str) {
        this(str, false);
    }

    public x1(String str, boolean z10) {
        Objects.requireNonNull(str, "name == null");
        c cVar = new c(str, z10);
        this.f37400a = cVar;
        this.f37401b = new a(cVar);
    }

    static synchronized long a() {
        long j10;
        synchronized (x1.class) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j11 = f37399d;
            if (elapsedRealtime > j11) {
                f37398c += elapsedRealtime - j11;
            }
            f37399d = elapsedRealtime;
            j10 = f37398c;
        }
        return j10;
    }

    private void j(b bVar, long j10) {
        synchronized (this.f37400a) {
            if (this.f37400a.f37407d) {
                throw new IllegalStateException("Timer was canceled");
            }
            long a10 = j10 + a();
            if (a10 < 0) {
                throw new IllegalArgumentException("Illegal delay to start the TimerTask: " + a10);
            }
            d dVar = new d();
            dVar.f37418e = bVar.f37403a;
            dVar.f37417d = bVar;
            dVar.f37416c = a10;
            this.f37400a.f(dVar);
        }
    }

    public void b() {
        tf.c.l("quit. finalizer:" + this.f37401b);
        this.f37400a.c();
    }

    public void c(int i9) {
        synchronized (this.f37400a) {
            this.f37400a.f37409f.e(i9);
        }
    }

    public void d(int i9, b bVar) {
        synchronized (this.f37400a) {
            this.f37400a.f37409f.f(i9, bVar);
        }
    }

    public void e(b bVar) {
        if (tf.c.a() >= 1 || Thread.currentThread() == this.f37400a) {
            bVar.run();
        } else {
            tf.c.u("run job outside job job thread");
            throw new RejectedExecutionException("Run job outside job thread");
        }
    }

    public void f(b bVar, long j10) {
        if (j10 >= 0) {
            j(bVar, j10);
            return;
        }
        throw new IllegalArgumentException("delay < 0: " + j10);
    }

    public boolean g() {
        return this.f37400a.g();
    }

    public boolean h(int i9) {
        boolean i10;
        synchronized (this.f37400a) {
            i10 = this.f37400a.f37409f.i(i9);
        }
        return i10;
    }

    public void i() {
        synchronized (this.f37400a) {
            this.f37400a.f37409f.d();
        }
    }
}
