package qg;

import io.grpc.netty.shaded.io.netty.channel.e;
import io.grpc.netty.shaded.io.netty.channel.g;
import io.grpc.netty.shaded.io.netty.channel.i;
import io.grpc.netty.shaded.io.netty.channel.j;
import io.grpc.netty.shaded.io.netty.channel.m;
import io.grpc.netty.shaded.io.netty.channel.u0;
import io.grpc.netty.shaded.io.netty.channel.y;
import io.grpc.netty.shaded.io.netty.handler.proxy.ProxyConnectException;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.net.SocketAddress;
import java.nio.channels.ConnectionPendingException;
import java.util.concurrent.TimeUnit;
import ug.h;
import ug.q;
import ug.r;
/* loaded from: classes5.dex */
public abstract class b extends g {

    /* renamed from: m  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f57318m = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(b.class);

    /* renamed from: b  reason: collision with root package name */
    private final SocketAddress f57319b;

    /* renamed from: c  reason: collision with root package name */
    private volatile SocketAddress f57320c;

    /* renamed from: e  reason: collision with root package name */
    private volatile m f57322e;

    /* renamed from: f  reason: collision with root package name */
    private u0 f57323f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f57324g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f57325h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f57326i;

    /* renamed from: k  reason: collision with root package name */
    private q<?> f57328k;

    /* renamed from: d  reason: collision with root package name */
    private volatile long f57321d = 10000;

    /* renamed from: j  reason: collision with root package name */
    private final c f57327j = new c(this, null);

    /* renamed from: l  reason: collision with root package name */
    private final j f57329l = new a();

    /* loaded from: classes5.dex */
    class a implements j {
        a() {
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(i iVar) throws Exception {
            if (iVar.p0()) {
                return;
            }
            b.this.S(iVar.L());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: qg.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0626b implements Runnable {
        RunnableC0626b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f57327j.isDone()) {
                return;
            }
            b.this.S(new ProxyConnectException(b.this.F("timeout")));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c extends h<e> {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.h
        public ug.j v() {
            if (b.this.f57322e != null) {
                return b.this.f57322e.m0();
            }
            throw new IllegalStateException();
        }

        /* synthetic */ c(b bVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(SocketAddress socketAddress) {
        this.f57319b = (SocketAddress) s.h(socketAddress, "proxyAddress");
    }

    private void G(Throwable th2) {
        u0 u0Var = this.f57323f;
        if (u0Var != null) {
            u0Var.g(th2);
            this.f57323f = null;
        }
    }

    private void H(Throwable th2) {
        G(th2);
        this.f57327j.z(th2);
        this.f57322e.v(th2);
        this.f57322e.close();
    }

    private static void L(m mVar) {
        if (mVar.d().b0().l()) {
            return;
        }
        mVar.read();
    }

    private boolean O() {
        try {
            M(this.f57322e);
            return true;
        } catch (Exception e10) {
            f57318m.warn("Failed to remove proxy decoders:", (Throwable) e10);
            return false;
        }
    }

    private boolean P() {
        try {
            N(this.f57322e);
            return true;
        } catch (Exception e10) {
            f57318m.warn("Failed to remove proxy encoders:", (Throwable) e10);
            return false;
        }
    }

    private void Q(m mVar) throws Exception {
        long j10 = this.f57321d;
        if (j10 > 0) {
            this.f57328k = mVar.m0().schedule((Runnable) new RunnableC0626b(), j10, TimeUnit.MILLISECONDS);
        }
        Object J = J(mVar);
        if (J != null) {
            R(J);
        }
        L(mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(Throwable th2) {
        this.f57324g = true;
        z();
        if (this.f57327j.isDone()) {
            return;
        }
        if (!(th2 instanceof ProxyConnectException)) {
            th2 = new ProxyConnectException(F(th2.toString()), th2);
        }
        O();
        P();
        H(th2);
    }

    private void T() {
        this.f57324g = true;
        z();
        if (this.f57327j.isDone()) {
            return;
        }
        boolean P = true & P();
        this.f57322e.s(new qg.a(K(), y(), this.f57319b, this.f57320c));
        if (P & O()) {
            U();
            if (this.f57326i) {
                this.f57322e.flush();
            }
            this.f57327j.B(this.f57322e.d());
            return;
        }
        H(new ProxyConnectException("failed to remove all codec handlers added by the proxy handler; bug?"));
    }

    private void U() {
        u0 u0Var = this.f57323f;
        if (u0Var != null) {
            u0Var.h();
            this.f57323f = null;
        }
    }

    private void x(m mVar, Object obj, y yVar) {
        u0 u0Var = this.f57323f;
        if (u0Var == null) {
            u0Var = new u0(mVar);
            this.f57323f = u0Var;
        }
        u0Var.a(obj, yVar);
    }

    private void z() {
        q<?> qVar = this.f57328k;
        if (qVar != null) {
            qVar.cancel(false);
            this.f57328k = null;
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k
    public final void A(m mVar) throws Exception {
        this.f57322e = mVar;
        w(mVar);
        if (mVar.d().isActive()) {
            Q(mVar);
        }
    }

    public final <T extends SocketAddress> T B() {
        return (T) this.f57320c;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public final void D(m mVar) throws Exception {
        Q(mVar);
        mVar.q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String F(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder(str.length() + 128);
        sb2.append(K());
        sb2.append(", ");
        sb2.append(y());
        sb2.append(", ");
        sb2.append(this.f57319b);
        sb2.append(" => ");
        sb2.append(this.f57320c);
        if (!str.isEmpty()) {
            sb2.append(", ");
            sb2.append(str);
        }
        return sb2.toString();
    }

    protected abstract boolean I(m mVar, Object obj) throws Exception;

    protected abstract Object J(m mVar) throws Exception;

    public abstract String K();

    protected abstract void M(m mVar) throws Exception;

    protected abstract void N(m mVar) throws Exception;

    protected final void R(Object obj) {
        this.f57322e.g(obj).c((r<? extends q<? super Void>>) this.f57329l);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public final void V(m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, y yVar) throws Exception {
        if (this.f57320c != null) {
            yVar.u(new ConnectionPendingException());
            return;
        }
        this.f57320c = socketAddress;
        mVar.Q(this.f57319b, socketAddress2, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public final void Z(m mVar) throws Exception {
        if (this.f57325h) {
            this.f57325h = false;
            L(mVar);
            return;
        }
        mVar.k();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.l, io.grpc.netty.shaded.io.netty.channel.k, io.grpc.netty.shaded.io.netty.channel.o
    public final void a(m mVar, Throwable th2) throws Exception {
        if (this.f57324g) {
            mVar.v(th2);
        } else {
            S(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public final void e(m mVar, Object obj, y yVar) throws Exception {
        if (this.f57324g) {
            U();
            mVar.c(obj, yVar);
            return;
        }
        x(mVar, obj, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public final void h(m mVar, Object obj) throws Exception {
        if (this.f57324g) {
            this.f57325h = false;
            mVar.p(obj);
            return;
        }
        this.f57325h = true;
        try {
            if (I(mVar, obj)) {
                T();
            }
            io.grpc.netty.shaded.io.netty.util.r.a(obj);
        } catch (Throwable th2) {
            io.grpc.netty.shaded.io.netty.util.r.a(obj);
            S(th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.g, io.grpc.netty.shaded.io.netty.channel.t
    public final void n(m mVar) throws Exception {
        if (this.f57324g) {
            U();
            mVar.flush();
            return;
        }
        this.f57326i = true;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public final void t(m mVar) throws Exception {
        if (this.f57324g) {
            mVar.n0();
        } else {
            S(new ProxyConnectException(F("disconnected")));
        }
    }

    protected abstract void w(m mVar) throws Exception;

    public abstract String y();
}
