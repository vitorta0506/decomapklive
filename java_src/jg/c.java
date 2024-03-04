package jg;

import java.net.SocketAddress;
/* loaded from: classes5.dex */
public class c extends a<c, io.grpc.netty.shaded.io.netty.channel.e> {

    /* renamed from: l  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f53248l = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(c.class);

    /* renamed from: m  reason: collision with root package name */
    private static final sg.b<?> f53249m = sg.c.f57910d;

    /* renamed from: i  reason: collision with root package name */
    private final d f53250i;

    /* renamed from: j  reason: collision with root package name */
    private volatile sg.b<SocketAddress> f53251j;

    /* renamed from: k  reason: collision with root package name */
    private volatile SocketAddress f53252k;

    public c() {
        this.f53250i = new d(this);
        this.f53251j = f53249m;
    }

    @Override // jg.a
    /* renamed from: C */
    public c g() {
        return new c(this);
    }

    @Override // jg.a
    /* renamed from: D */
    public final d h() {
        return this.f53250i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SocketAddress E() {
        return this.f53252k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final sg.b<?> G() {
        return this.f53251j;
    }

    @Override // jg.a
    /* renamed from: H */
    public c B() {
        super.B();
        if (this.f53250i.d() != null) {
            return this;
        }
        throw new IllegalStateException("handler not set");
    }

    @Override // jg.a
    void n(io.grpc.netty.shaded.io.netty.channel.e eVar) {
        eVar.J().U(this.f53250i.d());
        a.A(eVar, s(), f53248l);
        a.y(eVar, q());
    }

    private c(c cVar) {
        super(cVar);
        this.f53250i = new d(this);
        this.f53251j = f53249m;
        this.f53251j = cVar.f53251j;
        this.f53252k = cVar.f53252k;
    }
}
