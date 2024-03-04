package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.b1;
import io.grpc.netty.shaded.io.netty.channel.epoll.a;
import io.grpc.netty.shaded.io.netty.channel.m0;
import io.grpc.netty.shaded.io.netty.channel.n0;
import io.grpc.netty.shaded.io.netty.channel.unix.FileDescriptor;
import io.grpc.netty.shaded.io.netty.channel.x0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.io.IOException;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import ug.b0;
/* loaded from: classes5.dex */
class h extends b1 {
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b R = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(h.class);
    private final FileDescriptor F;
    private final FileDescriptor G;
    private final FileDescriptor H;
    private final tg.e<io.grpc.netty.shaded.io.netty.channel.epoll.a> I;
    private final boolean J;
    private final g K;
    private io.grpc.netty.shaded.io.netty.channel.unix.a L;
    private final x0 M;
    private final io.grpc.netty.shaded.io.netty.util.m N;
    private final AtomicLong O;
    private boolean P;
    private volatile int Q;

    /* loaded from: classes5.dex */
    class a implements io.grpc.netty.shaded.io.netty.util.m {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.m
        public int get() throws Exception {
            return h.this.j1();
        }
    }

    static {
        lg.a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(m0 m0Var, Executor executor, int i9, x0 x0Var, b0 b0Var, n0 n0Var, n0 n0Var2) {
        super(m0Var, executor, false, n1(n0Var), n1(n0Var2), b0Var);
        FileDescriptor fileDescriptor;
        FileDescriptor fileDescriptor2;
        this.I = new tg.d(4096);
        this.N = new a();
        this.O = new AtomicLong(-1L);
        this.Q = 50;
        this.M = (x0) s.h(x0Var, "strategy");
        if (i9 == 0) {
            this.J = true;
            this.K = new g(4096);
        } else {
            this.J = false;
            this.K = new g(i9);
        }
        FileDescriptor fileDescriptor3 = null;
        try {
            FileDescriptor j10 = Native.j();
            try {
                this.F = j10;
                fileDescriptor2 = Native.k();
                try {
                    this.G = fileDescriptor2;
                    try {
                        int d10 = j10.d();
                        int d11 = fileDescriptor2.d();
                        int i10 = Native.f43620b;
                        int i11 = Native.f43623e;
                        Native.c(d10, d11, i10 | i11);
                        fileDescriptor3 = Native.l();
                        this.H = fileDescriptor3;
                        try {
                            Native.c(j10.d(), fileDescriptor3.d(), i10 | i11);
                        } catch (IOException e10) {
                            throw new IllegalStateException("Unable to add timerFd filedescriptor to epoll", e10);
                        }
                    } catch (IOException e11) {
                        throw new IllegalStateException("Unable to add eventFd filedescriptor to epoll", e11);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileDescriptor = fileDescriptor3;
                    fileDescriptor3 = j10;
                    if (fileDescriptor3 != null) {
                        try {
                            fileDescriptor3.b();
                        } catch (Exception unused) {
                        }
                    }
                    if (fileDescriptor2 != null) {
                        try {
                            fileDescriptor2.b();
                        } catch (Exception unused2) {
                        }
                    }
                    if (fileDescriptor != null) {
                        try {
                            fileDescriptor.b();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileDescriptor2 = null;
                fileDescriptor3 = j10;
                fileDescriptor = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileDescriptor = null;
            fileDescriptor2 = null;
        }
    }

    private void f1() {
        io.grpc.netty.shaded.io.netty.channel.epoll.a[] aVarArr;
        for (io.grpc.netty.shaded.io.netty.channel.epoll.a aVar : (io.grpc.netty.shaded.io.netty.channel.epoll.a[]) this.I.values().toArray(new io.grpc.netty.shaded.io.netty.channel.epoll.a[0])) {
            aVar.k0().L(aVar.k0().N());
        }
    }

    private int g1() throws IOException {
        return Native.b(this.F, this.K);
    }

    private int h1(long j10) throws IOException {
        if (j10 == Long.MAX_VALUE) {
            return Native.g(this.F, this.K, this.H, Integer.MAX_VALUE, 0);
        }
        long u10 = ug.d.u(j10);
        int min = (int) Math.min(u10 / 1000000000, 2147483647L);
        return Native.g(this.F, this.K, this.H, min, (int) Math.min(u10 - (min * 1000000000), 999999999L));
    }

    private int i1() throws IOException {
        return Native.h(this.F, this.K, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int j1() throws IOException {
        return Native.h(this.F, this.K, true);
    }

    private int k1() throws IOException {
        return Native.f(this.F, this.K, 1000);
    }

    private static Queue<Runnable> n1(n0 n0Var) {
        if (n0Var == null) {
            return o1(b1.E);
        }
        return n0Var.a(b1.E);
    }

    private static Queue<Runnable> o1(int i9) {
        if (i9 == Integer.MAX_VALUE) {
            return t.s0();
        }
        return t.t0(i9);
    }

    private boolean p1(g gVar, int i9) {
        boolean z10 = false;
        for (int i10 = 0; i10 < i9; i10++) {
            int c10 = gVar.c(i10);
            if (c10 == this.G.d()) {
                this.P = false;
            } else if (c10 == this.H.d()) {
                z10 = true;
            } else {
                long b10 = gVar.b(i10);
                io.grpc.netty.shaded.io.netty.channel.epoll.a aVar = this.I.get(c10);
                if (aVar != null) {
                    a.c cVar = (a.c) aVar.k0();
                    int i11 = Native.f43624f;
                    if (((Native.f43621c | i11) & b10) != 0) {
                        cVar.G();
                    }
                    if (((i11 | Native.f43620b) & b10) != 0) {
                        cVar.F();
                    }
                    if ((b10 & Native.f43622d) != 0) {
                        cVar.I();
                    }
                } else {
                    try {
                        Native.d(this.F.d(), c10);
                    } catch (IOException unused) {
                    }
                }
            }
        }
        return z10;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:(2:5|(3:22|23|(11:25|(2:27|(2:70|71)(2:29|(2:31|32)))|72|(1:74)|75|76|77|78|(1:104)(2:80|(2:102|103)(4:82|83|85|86))|87|(1:91))(2:107|108))(4:7|8|(3:10|11|(2:13|14)(1:16))(1:18)|17))(2:109|110)|46|47|49|(3:51|52|(2:54|55)(1:56))(1:57)|17) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a5, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a6, code lost:
        l1(r4);
     */
    @Override // ug.f0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void F0() {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.channel.epoll.h.F0():void");
    }

    @Override // ug.f0
    protected void Y0(boolean z10) {
        if (z10 || this.O.getAndSet(-1L) == -1) {
            return;
        }
        Native.eventFdWrite(this.G.d(), 1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d1(io.grpc.netty.shaded.io.netty.channel.epoll.a aVar) throws IOException {
        int d10 = aVar.f43634s.d();
        Native.c(this.F.d(), d10, aVar.f43640y);
        this.I.n0(d10, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.grpc.netty.shaded.io.netty.channel.unix.a e1() {
        io.grpc.netty.shaded.io.netty.channel.unix.a aVar = this.L;
        if (aVar == null) {
            this.L = new io.grpc.netty.shaded.io.netty.channel.unix.a();
        } else {
            aVar.d();
        }
        return this.L;
    }

    @Override // ug.f0
    protected void f0() {
        int k12;
        while (true) {
            try {
                if (this.P) {
                    try {
                        k12 = k1();
                    } catch (IOException unused) {
                    }
                    if (k12 == 0) {
                        break;
                    }
                    int i9 = 0;
                    while (true) {
                        if (i9 >= k12) {
                            break;
                        } else if (this.K.c(i9) == this.G.d()) {
                            this.P = false;
                            break;
                        } else {
                            i9++;
                        }
                    }
                }
            } finally {
                io.grpc.netty.shaded.io.netty.channel.unix.a aVar = this.L;
                if (aVar != null) {
                    aVar.j();
                    this.L = null;
                }
                this.K.d();
            }
        }
        try {
            this.G.b();
        } catch (IOException e10) {
            R.warn("Failed to close the event fd.", (Throwable) e10);
        }
        try {
            this.H.b();
        } catch (IOException e11) {
            R.warn("Failed to close the timer fd.", (Throwable) e11);
        }
        try {
            this.F.b();
        } catch (IOException e12) {
            R.warn("Failed to close the epoll fd.", (Throwable) e12);
        }
    }

    @Override // ug.d
    protected boolean g(long j10) {
        return j10 < this.O.get();
    }

    void l1(Throwable th2) {
        R.warn("Unexpected exception in the selector loop.", th2);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException unused) {
        }
    }

    @Override // ug.d
    protected boolean m(long j10) {
        return j10 < this.O.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m1(io.grpc.netty.shaded.io.netty.channel.epoll.a aVar) throws IOException {
        Native.e(this.F.d(), aVar.f43634s.d(), aVar.f43640y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q1(io.grpc.netty.shaded.io.netty.channel.epoll.a aVar) throws IOException {
        int d10 = aVar.f43634s.d();
        io.grpc.netty.shaded.io.netty.channel.epoll.a remove = this.I.remove(d10);
        if (remove != null && remove != aVar) {
            this.I.n0(d10, remove);
        } else if (aVar.isOpen()) {
            Native.d(this.F.d(), d10);
        }
    }
}
