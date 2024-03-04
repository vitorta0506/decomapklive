package mg;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.b1;
import io.grpc.netty.shaded.io.netty.channel.n0;
import io.grpc.netty.shaded.io.netty.channel.x0;
import io.grpc.netty.shaded.io.netty.util.internal.c0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import io.grpc.netty.shaded.io.netty.util.internal.z;
import io.grpc.netty.shaded.io.netty.util.m;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelector;
import java.nio.channels.spi.SelectorProvider;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import mg.b;
import ug.b0;
/* loaded from: classes5.dex */
public final class d extends b1 {
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b P = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(d.class);
    private static final boolean Q = c0.d("io.grpc.netty.shaded.io.netty.noKeySetOptimization", false);
    private static final int R;
    private final m F;
    private Selector G;
    private Selector H;
    private g I;
    private final SelectorProvider J;
    private final AtomicLong K;
    private final x0 L;
    private volatile int M;
    private int N;
    private boolean O;

    /* loaded from: classes5.dex */
    class a implements m {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.m
        public int get() throws Exception {
            return d.this.t1();
        }
    }

    /* loaded from: classes5.dex */
    static class b implements PrivilegedAction<Void> {
        b() {
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public Void run() {
            System.setProperty("sun.nio.ch.bugLevel", "");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements PrivilegedAction<Object> {
        c() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return Class.forName("sun.nio.ch.SelectorImpl", false, t.P());
            } catch (Throwable th2) {
                return th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: mg.d$d  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0575d implements PrivilegedAction<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f55094a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Selector f55095b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g f55096c;

        C0575d(Class cls, Selector selector, g gVar) {
            this.f55094a = cls;
            this.f55095b = selector;
            this.f55096c = gVar;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                Field declaredField = this.f55094a.getDeclaredField("selectedKeys");
                Field declaredField2 = this.f55094a.getDeclaredField("publicSelectedKeys");
                if (t.l0() >= 9 && t.T()) {
                    long C0 = t.C0(declaredField);
                    long C02 = t.C0(declaredField2);
                    if (C0 != -1 && C02 != -1) {
                        t.K0(this.f55095b, C0, this.f55096c);
                        t.K0(this.f55095b, C02, this.f55096c);
                        return null;
                    }
                }
                Throwable b10 = z.b(declaredField, true);
                if (b10 != null) {
                    return b10;
                }
                Throwable b11 = z.b(declaredField2, true);
                if (b11 != null) {
                    return b11;
                }
                declaredField.set(this.f55095b, this.f55096c);
                declaredField2.set(this.f55095b, this.f55096c);
                return null;
            } catch (IllegalAccessException e10) {
                return e10;
            } catch (NoSuchFieldException e11) {
                return e11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.q1();
        }
    }

    static {
        if (t.l0() < 7 && c0.b("sun.nio.ch.bugLevel") == null) {
            try {
                AccessController.doPrivileged(new b());
            } catch (SecurityException e10) {
                P.debug("Unable to get/set System Property: sun.nio.ch.bugLevel", (Throwable) e10);
            }
        }
        int e11 = c0.e("io.grpc.netty.shaded.io.netty.selectorAutoRebuildThreshold", 512);
        int i9 = e11 >= 3 ? e11 : 0;
        R = i9;
        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = P;
        if (bVar.isDebugEnabled()) {
            bVar.debug("-Dio.netty.noKeySetOptimization: {}", Boolean.valueOf(Q));
            bVar.debug("-Dio.netty.selectorAutoRebuildThreshold: {}", Integer.valueOf(i9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(mg.e eVar, Executor executor, SelectorProvider selectorProvider, x0 x0Var, b0 b0Var, n0 n0Var, n0 n0Var2) {
        super(eVar, executor, false, h1(n0Var), h1(n0Var2), b0Var);
        this.F = new a();
        this.K = new AtomicLong(-1L);
        this.M = 50;
        this.J = (SelectorProvider) s.h(selectorProvider, "selectorProvider");
        this.L = (x0) s.h(x0Var, "selectStrategy");
        f j12 = j1();
        this.G = j12.f55100b;
        this.H = j12.f55099a;
    }

    private void e1() {
        s1();
        Set<SelectionKey> keys = this.G.keys();
        ArrayList<mg.b> arrayList = new ArrayList(keys.size());
        for (SelectionKey selectionKey : keys) {
            Object attachment = selectionKey.attachment();
            if (attachment instanceof mg.b) {
                arrayList.add((mg.b) attachment);
            } else {
                selectionKey.cancel();
                g1((mg.f) attachment, selectionKey, null);
            }
        }
        for (mg.b bVar : arrayList) {
            bVar.k0().L(bVar.k0().N());
        }
    }

    private static void f1(Throwable th2) {
        P.warn("Unexpected exception in the selector loop.", th2);
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException unused) {
        }
    }

    private static void g1(mg.f<SelectableChannel> fVar, SelectionKey selectionKey, Throwable th2) {
        try {
            fVar.a(selectionKey.channel(), th2);
        } catch (Exception e10) {
            P.warn("Unexpected exception while running NioTask.channelUnregistered()", (Throwable) e10);
        }
    }

    private static Queue<Runnable> h1(n0 n0Var) {
        if (n0Var == null) {
            return i1(b1.E);
        }
        return n0Var.a(b1.E);
    }

    private static Queue<Runnable> i1(int i9) {
        if (i9 == Integer.MAX_VALUE) {
            return t.s0();
        }
        return t.t0(i9);
    }

    private f j1() {
        try {
            AbstractSelector openSelector = this.J.openSelector();
            if (Q) {
                return new f(openSelector);
            }
            Object doPrivileged = AccessController.doPrivileged(new c());
            if (doPrivileged instanceof Class) {
                Class cls = (Class) doPrivileged;
                if (cls.isAssignableFrom(openSelector.getClass())) {
                    g gVar = new g();
                    Object doPrivileged2 = AccessController.doPrivileged(new C0575d(cls, openSelector, gVar));
                    if (doPrivileged2 instanceof Exception) {
                        this.I = null;
                        P.trace("failed to instrument a special java.util.Set into: {}", openSelector, (Exception) doPrivileged2);
                        return new f(openSelector);
                    }
                    this.I = gVar;
                    P.trace("instrumented a special java.util.Set into: {}", openSelector);
                    return new f(openSelector, new h(openSelector, gVar));
                }
            }
            if (doPrivileged instanceof Throwable) {
                P.trace("failed to instrument a special java.util.Set into: {}", openSelector, (Throwable) doPrivileged);
            }
            return new f(openSelector);
        } catch (IOException e10) {
            throw new ChannelException("failed to open a new selector", e10);
        }
    }

    private void k1(SelectionKey selectionKey, mg.b bVar) {
        b.c k02 = bVar.k0();
        if (!selectionKey.isValid()) {
            try {
                if (bVar.a0() == this) {
                    k02.L(k02.N());
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        try {
            int readyOps = selectionKey.readyOps();
            if ((readyOps & 8) != 0) {
                selectionKey.interestOps(selectionKey.interestOps() & (-9));
                k02.b();
            }
            if ((readyOps & 4) != 0) {
                bVar.k0().a();
            }
            if ((readyOps & 17) != 0 || readyOps == 0) {
                k02.read();
            }
        } catch (CancelledKeyException unused2) {
            k02.L(k02.N());
        }
    }

    private static void l1(SelectionKey selectionKey, mg.f<SelectableChannel> fVar) {
        try {
            try {
                fVar.b(selectionKey.channel(), selectionKey);
                if (selectionKey.isValid()) {
                    return;
                }
                g1(fVar, selectionKey, null);
            } catch (Exception e10) {
                selectionKey.cancel();
                g1(fVar, selectionKey, e10);
            }
        } catch (Throwable th2) {
            selectionKey.cancel();
            g1(fVar, selectionKey, null);
            throw th2;
        }
    }

    private void m1() {
        if (this.I != null) {
            n1();
        } else {
            o1(this.G.selectedKeys());
        }
    }

    private void n1() {
        int i9 = 0;
        while (true) {
            g gVar = this.I;
            if (i9 >= gVar.f55102b) {
                return;
            }
            SelectionKey[] selectionKeyArr = gVar.f55101a;
            SelectionKey selectionKey = selectionKeyArr[i9];
            selectionKeyArr[i9] = null;
            Object attachment = selectionKey.attachment();
            if (attachment instanceof mg.b) {
                k1(selectionKey, (mg.b) attachment);
            } else {
                l1(selectionKey, (mg.f) attachment);
            }
            if (this.O) {
                this.I.g(i9 + 1);
                s1();
                i9 = -1;
            }
            i9++;
        }
    }

    private void o1(Set<SelectionKey> set) {
        if (set.isEmpty()) {
            return;
        }
        Iterator<SelectionKey> it = set.iterator();
        while (true) {
            SelectionKey next = it.next();
            Object attachment = next.attachment();
            it.remove();
            if (attachment instanceof mg.b) {
                k1(next, (mg.b) attachment);
            } else {
                l1(next, (mg.f) attachment);
            }
            if (!it.hasNext()) {
                return;
            }
            if (this.O) {
                s1();
                Set<SelectionKey> selectedKeys = this.G.selectedKeys();
                if (selectedKeys.isEmpty()) {
                    return;
                }
                it = selectedKeys.iterator();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q1() {
        Selector selector = this.G;
        if (selector == null) {
            return;
        }
        try {
            f j12 = j1();
            int i9 = 0;
            for (SelectionKey selectionKey : selector.keys()) {
                Object attachment = selectionKey.attachment();
                try {
                    if (selectionKey.isValid() && selectionKey.channel().keyFor(j12.f55099a) == null) {
                        int interestOps = selectionKey.interestOps();
                        selectionKey.cancel();
                        SelectionKey register = selectionKey.channel().register(j12.f55099a, interestOps, attachment);
                        if (attachment instanceof mg.b) {
                            ((mg.b) attachment).f55079u = register;
                        }
                        i9++;
                    }
                } catch (Exception e10) {
                    P.warn("Failed to re-register a Channel to the new Selector.", (Throwable) e10);
                    if (attachment instanceof mg.b) {
                        mg.b bVar = (mg.b) attachment;
                        bVar.k0().L(bVar.k0().N());
                    } else {
                        g1((mg.f) attachment, selectionKey, e10);
                    }
                }
            }
            this.G = j12.f55100b;
            this.H = j12.f55099a;
            try {
                selector.close();
            } catch (Throwable th2) {
                if (P.isWarnEnabled()) {
                    P.warn("Failed to close the old Selector.", th2);
                }
            }
            io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar2 = P;
            if (bVar2.isInfoEnabled()) {
                bVar2.info("Migrated " + i9 + " channel(s) to the new Selector.");
            }
        } catch (Exception e11) {
            P.warn("Failed to create a new Selector.", (Throwable) e11);
        }
    }

    private int r1(long j10) throws IOException {
        if (j10 == Long.MAX_VALUE) {
            return this.G.select();
        }
        long u10 = ug.d.u(j10 + 995000) / 1000000;
        return u10 <= 0 ? this.G.selectNow() : this.G.select(u10);
    }

    private void s1() {
        this.O = false;
        try {
            this.G.selectNow();
        } catch (Throwable th2) {
            P.warn("Failed to update SelectionKeys.", th2);
        }
    }

    private boolean u1(int i9) {
        if (Thread.interrupted()) {
            io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = P;
            if (bVar.isDebugEnabled()) {
                bVar.debug("Selector.select() returned prematurely because Thread.currentThread().interrupt() was called. Use NioEventLoop.shutdownGracefully() to shutdown the NioEventLoop.");
            }
            return true;
        }
        int i10 = R;
        if (i10 <= 0 || i9 < i10) {
            return false;
        }
        P.warn("Selector.select() returned prematurely {} times in a row; rebuilding Selector {}.", Integer.valueOf(i9), this.G);
        p1();
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:(3:3|4|5)|(1:95)(2:7|(3:24|25|(14:94|38|39|40|(2:(2:73|74)|43)(1:(4:80|81|82|83)(1:88))|(7:47|(2:49|50)|51|52|54|(3:56|57|(2:59|60)(1:61))(1:62)|19)|68|(2:70|(1:72))|50|51|52|54|(0)(0)|19))(4:9|10|(3:12|13|(2:15|16)(1:18))(1:20)|19))|(7:47|(0)|51|52|54|(0)(0)|19)|51|52|54|(0)(0)|19) */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0028, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0029, code lost:
        f1(r2);
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0126 A[Catch: all -> 0x0154, TRY_LEAVE, TryCatch #9 {all -> 0x0154, blocks: (B:92:0x0108, B:100:0x011d, B:101:0x011e, B:103:0x0126, B:4:0x0002, B:30:0x0054, B:39:0x0069, B:51:0x00a4, B:56:0x00ae, B:58:0x00b6, B:37:0x0065, B:38:0x0068, B:41:0x0070, B:43:0x0077, B:45:0x0089, B:46:0x0098, B:47:0x0099, B:21:0x002f, B:24:0x003e, B:28:0x004d, B:68:0x00d7, B:69:0x00dc, B:77:0x00e4, B:78:0x00e7), top: B:131:0x0108, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ae A[Catch: all -> 0x00dd, Error -> 0x00df, CancelledKeyException -> 0x00e1, TryCatch #8 {Error -> 0x00df, blocks: (B:4:0x0002, B:30:0x0054, B:39:0x0069, B:51:0x00a4, B:56:0x00ae, B:58:0x00b6, B:37:0x0065, B:38:0x0068, B:41:0x0070, B:43:0x0077, B:45:0x0089, B:46:0x0098, B:47:0x0099, B:21:0x002f, B:24:0x003e, B:28:0x004d, B:68:0x00d7, B:69:0x00dc, B:77:0x00e4, B:78:0x00e7), top: B:130:0x0002, outer: #9 }] */
    @Override // ug.f0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void F0() {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: mg.d.F0():void");
    }

    @Override // ug.f0
    protected void Y0(boolean z10) {
        if (z10 || this.K.getAndSet(-1L) == -1) {
            return;
        }
        this.G.wakeup();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d1(SelectionKey selectionKey) {
        selectionKey.cancel();
        int i9 = this.N + 1;
        this.N = i9;
        if (i9 >= 256) {
            this.N = 0;
            this.O = true;
        }
    }

    @Override // ug.f0
    protected void f0() {
        try {
            this.G.close();
        } catch (IOException e10) {
            P.warn("Failed to close a selector.", (Throwable) e10);
        }
    }

    @Override // ug.d
    protected boolean g(long j10) {
        return j10 < this.K.get();
    }

    @Override // ug.d
    protected boolean m(long j10) {
        return j10 < this.K.get();
    }

    public void p1() {
        if (!Y()) {
            execute(new e());
        } else {
            q1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int t1() throws IOException {
        return this.G.selectNow();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Selector v1() {
        return this.H;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        final Selector f55099a;

        /* renamed from: b  reason: collision with root package name */
        final Selector f55100b;

        f(Selector selector) {
            this.f55099a = selector;
            this.f55100b = selector;
        }

        f(Selector selector, Selector selector2) {
            this.f55099a = selector;
            this.f55100b = selector2;
        }
    }
}
