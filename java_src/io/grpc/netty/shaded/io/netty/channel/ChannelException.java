package io.grpc.netty.shaded.io.netty.channel;
/* loaded from: classes5.dex */
public class ChannelException extends RuntimeException {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 2908618315971075004L;

    /* loaded from: classes5.dex */
    private static final class a extends ChannelException {
        private static final long serialVersionUID = -6384642137753538579L;

        a(String str, Throwable th2) {
            super(str, th2);
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }

        a(String str, Throwable th2, boolean z10) {
            super(str, th2, z10);
        }
    }

    public ChannelException() {
    }

    static ChannelException newStatic(String str, Class<?> cls, String str2) {
        a aVar;
        if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 7) {
            aVar = new a(str, null, true);
        } else {
            aVar = new a(str, null);
        }
        return (ChannelException) io.grpc.netty.shaded.io.netty.util.internal.e0.f(aVar, cls, str2);
    }

    public ChannelException(String str, Throwable th2) {
        super(str, th2);
    }

    public ChannelException(String str) {
        super(str);
    }

    public ChannelException(Throwable th2) {
        super(th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ChannelException(String str, Throwable th2, boolean z10) {
        super(str, th2, false, true);
    }
}
