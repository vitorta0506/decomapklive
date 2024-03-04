package ig;

import io.grpc.ChannelLogger;
import io.grpc.c0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.x0;
/* loaded from: classes5.dex */
public abstract class j extends io.grpc.netty.shaded.io.netty.handler.codec.http2.c0 {

    /* renamed from: v  reason: collision with root package name */
    protected final io.grpc.netty.shaded.io.netty.channel.y f41201v;

    /* renamed from: w  reason: collision with root package name */
    private final ChannelLogger f41202w;

    /* JADX INFO: Access modifiers changed from: protected */
    public j(io.grpc.netty.shaded.io.netty.channel.y yVar, io.grpc.netty.shaded.io.netty.handler.codec.http2.a0 a0Var, io.grpc.netty.shaded.io.netty.handler.codec.http2.b0 b0Var, x0 x0Var, ChannelLogger channelLogger) {
        super(a0Var, b0Var, x0Var);
        this.f41201v = yVar;
        this.f41202w = channelLogger;
    }

    public void A0(io.grpc.a aVar, c0.c cVar) {
    }

    public String x0() {
        throw new UnsupportedOperationException();
    }

    public io.grpc.a y0() {
        return io.grpc.a.f41743c;
    }

    public ChannelLogger z0() {
        com.google.common.base.o.A(this.f41202w != null, "NegotiationLogger must not be null");
        return this.f41202w;
    }
}
