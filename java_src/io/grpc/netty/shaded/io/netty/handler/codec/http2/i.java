package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import pg.g;
/* loaded from: classes5.dex */
public class i extends pg.g<CharSequence, CharSequence, Http2Headers> implements Http2Headers {

    /* renamed from: h  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.g f44316h = new a();

    /* renamed from: i  reason: collision with root package name */
    static final g.d<CharSequence> f44317i = new b();

    /* loaded from: classes5.dex */
    static class a implements io.grpc.netty.shaded.io.netty.util.g {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.g
        public boolean a(byte b10) {
            return !io.grpc.netty.shaded.io.netty.util.c.x(b10);
        }
    }

    /* loaded from: classes5.dex */
    static class b implements g.d<CharSequence> {
        b() {
        }

        @Override // pg.g.d
        /* renamed from: b */
        public void a(CharSequence charSequence) {
            if (charSequence == null || charSequence.length() == 0) {
                io.grpc.netty.shaded.io.netty.util.internal.t.R0(Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "empty headers are not allowed [%s]", charSequence));
            }
            if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
                try {
                    if (((io.grpc.netty.shaded.io.netty.util.c) charSequence).q(i.f44316h) != -1) {
                        io.grpc.netty.shaded.io.netty.util.internal.t.R0(Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "invalid header name [%s]", charSequence));
                        return;
                    }
                    return;
                } catch (Http2Exception e10) {
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
                    return;
                } catch (Throwable th2) {
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, th2, "unexpected error. invalid header name [%s]", charSequence));
                    return;
                }
            }
            for (int i9 = 0; i9 < charSequence.length(); i9++) {
                if (io.grpc.netty.shaded.io.netty.util.c.y(charSequence.charAt(i9))) {
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "invalid header name [%s]", charSequence));
                }
            }
        }
    }
}
