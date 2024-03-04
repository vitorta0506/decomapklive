package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public interface u0 {

    /* renamed from: a  reason: collision with root package name */
    public static final u0 f44451a = new a();

    /* loaded from: classes5.dex */
    static class a implements u0 {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.u0
        public boolean a(io.grpc.netty.shaded.io.netty.channel.m mVar, Http2Headers http2Headers) {
            return true;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.u0
        public boolean b(Http2Headers http2Headers) {
            return true;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.u0
        public boolean c(Http2Headers http2Headers) {
            return true;
        }
    }

    boolean a(io.grpc.netty.shaded.io.netty.channel.m mVar, Http2Headers http2Headers);

    boolean b(Http2Headers http2Headers);

    boolean c(Http2Headers http2Headers);
}
