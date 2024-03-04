package io.grpc.netty.shaded.io.netty.handler.codec.spdy;

import io.grpc.netty.shaded.io.netty.util.internal.e0;
import io.grpc.netty.shaded.io.netty.util.internal.t;
/* loaded from: classes5.dex */
public class SpdyProtocolException extends Exception {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 7870000537743847264L;

    /* loaded from: classes5.dex */
    private static final class b extends SpdyProtocolException {
        private static final long serialVersionUID = -6302754207557485099L;

        b(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }

        b(String str, boolean z10) {
            super(str, z10);
        }
    }

    static SpdyProtocolException newStatic(String str, Class<?> cls, String str2) {
        b bVar;
        if (t.l0() >= 7) {
            bVar = new b(str, true);
        } else {
            bVar = new b(str);
        }
        return (SpdyProtocolException) e0.f(bVar, cls, str2);
    }

    public SpdyProtocolException() {
    }

    public SpdyProtocolException(String str, Throwable th2) {
        super(str, th2);
    }

    public SpdyProtocolException(String str) {
        super(str);
    }

    public SpdyProtocolException(Throwable th2) {
        super(th2);
    }

    private SpdyProtocolException(String str, boolean z10) {
        super(str, null, false, true);
    }
}
