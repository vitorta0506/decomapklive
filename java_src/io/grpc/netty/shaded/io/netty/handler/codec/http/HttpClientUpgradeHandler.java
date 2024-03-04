package io.grpc.netty.shaded.io.netty.handler.codec.http;

import java.net.SocketAddress;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes5.dex */
public class HttpClientUpgradeHandler extends a0 implements io.grpc.netty.shaded.io.netty.channel.t {

    /* renamed from: p  reason: collision with root package name */
    private final a f43847p;

    /* renamed from: q  reason: collision with root package name */
    private final b f43848q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f43849r;

    /* loaded from: classes5.dex */
    public enum UpgradeEvent {
        UPGRADE_ISSUED,
        UPGRADE_SUCCESSFUL,
        UPGRADE_REJECTED
    }

    /* loaded from: classes5.dex */
    public interface a {
        void f(io.grpc.netty.shaded.io.netty.channel.m mVar);

        void i(io.grpc.netty.shaded.io.netty.channel.m mVar);
    }

    /* loaded from: classes5.dex */
    public interface b {
        Collection<CharSequence> a(io.grpc.netty.shaded.io.netty.channel.m mVar, d0 d0Var);

        void b(io.grpc.netty.shaded.io.netty.channel.m mVar, n nVar) throws Exception;

        CharSequence protocol();
    }

    public HttpClientUpgradeHandler(a aVar, b bVar, int i9) {
        super(i9);
        this.f43847p = (a) io.grpc.netty.shaded.io.netty.util.internal.s.h(aVar, "sourceCodec");
        this.f43848q = (b) io.grpc.netty.shaded.io.netty.util.internal.s.h(bVar, "upgradeCodec");
    }

    private static void h0(io.grpc.netty.shaded.io.netty.channel.m mVar) {
        mVar.J().remove(mVar.name());
    }

    private void i0(io.grpc.netty.shaded.io.netty.channel.m mVar, d0 d0Var) {
        d0Var.h().O(r.f44017s0, this.f43848q.protocol());
        LinkedHashSet<CharSequence> linkedHashSet = new LinkedHashSet(2);
        linkedHashSet.addAll(this.f43848q.a(mVar, d0Var));
        StringBuilder sb2 = new StringBuilder();
        for (CharSequence charSequence : linkedHashSet) {
            sb2.append(charSequence);
            sb2.append(',');
        }
        sb2.append((CharSequence) s.Z);
        d0Var.h().d(r.f44016s, sb2.toString());
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void V(io.grpc.netty.shaded.io.netty.channel.m mVar, SocketAddress socketAddress, SocketAddress socketAddress2, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        mVar.Q(socketAddress, socketAddress2, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        if (!(obj instanceof d0)) {
            mVar.c(obj, yVar);
        } else if (this.f43849r) {
            yVar.u(new IllegalStateException("Attempting to write HTTP request with upgrade in progress"));
        } else {
            this.f43849r = true;
            i0(mVar, (d0) obj);
            mVar.c(obj, yVar);
            mVar.s(UpgradeEvent.UPGRADE_ISSUED);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pg.k, pg.l
    /* renamed from: g0 */
    public void u(io.grpc.netty.shaded.io.netty.channel.m mVar, z zVar, List<Object> list) throws Exception {
        n nVar;
        n nVar2 = null;
        try {
            if (this.f43849r) {
                if ((zVar instanceof f0) && !h0.f43927g.equals(((f0) zVar).t())) {
                    mVar.s(UpgradeEvent.UPGRADE_REJECTED);
                    h0(mVar);
                    mVar.p(zVar);
                    return;
                }
                if (zVar instanceof n) {
                    nVar = (n) zVar;
                    try {
                        nVar.retain();
                        list.add(nVar);
                    } catch (Throwable th2) {
                        nVar2 = nVar;
                        th = th2;
                        io.grpc.netty.shaded.io.netty.util.r.a(nVar2);
                        mVar.v(th);
                        h0(mVar);
                        return;
                    }
                } else {
                    super.u(mVar, zVar, list);
                    if (list.isEmpty()) {
                        return;
                    }
                    nVar = (n) list.get(0);
                }
                n nVar3 = nVar;
                String F = nVar3.h().F(r.f44017s0);
                if (F != null && !io.grpc.netty.shaded.io.netty.util.c.l(this.f43848q.protocol(), F)) {
                    throw new IllegalStateException("Switching Protocols response with unexpected UPGRADE protocol: " + ((Object) F));
                }
                this.f43847p.i(mVar);
                this.f43848q.b(mVar, nVar3);
                mVar.s(UpgradeEvent.UPGRADE_SUCCESSFUL);
                this.f43847p.f(mVar);
                nVar3.release();
                list.clear();
                h0(mVar);
                return;
            }
            throw new IllegalStateException("Read HTTP response without requesting protocol switch");
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void j(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        mVar.M(yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) throws Exception {
        mVar.L(yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void n(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        mVar.flush();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void o(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Exception {
        mVar.read();
    }
}
