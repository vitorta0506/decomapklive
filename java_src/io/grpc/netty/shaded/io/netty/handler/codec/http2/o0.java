package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public interface o0 {

    /* renamed from: a  reason: collision with root package name */
    public static final d f44401a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final d f44402b = new b();

    /* loaded from: classes5.dex */
    static class a implements d {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.o0.d
        public boolean a(CharSequence charSequence, CharSequence charSequence2) {
            return false;
        }
    }

    /* loaded from: classes5.dex */
    static class b implements d {
        b() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.o0.d
        public boolean a(CharSequence charSequence, CharSequence charSequence2) {
            return true;
        }
    }

    /* loaded from: classes5.dex */
    public interface c {
        void a(long j10) throws Http2Exception;

        void b(long j10) throws Http2Exception;
    }

    /* loaded from: classes5.dex */
    public interface d {
        boolean a(CharSequence charSequence, CharSequence charSequence2);
    }

    void c(int i9, Http2Headers http2Headers, kg.j jVar) throws Http2Exception;

    c configuration();
}
