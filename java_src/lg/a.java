package lg;

import io.grpc.netty.shaded.io.netty.channel.epoll.Native;
import io.grpc.netty.shaded.io.netty.channel.unix.FileDescriptor;
import io.grpc.netty.shaded.io.netty.util.internal.c0;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Throwable f54325a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f54326b = 0;

    static {
        FileDescriptor fileDescriptor;
        FileDescriptor k10;
        UnsupportedOperationException th2 = null;
        try {
            if (c0.d("io.grpc.netty.shaded.io.netty.transport.noNative", false)) {
                th2 = new UnsupportedOperationException("Native transport was explicit disabled with -Dio.netty.transport.noNative=true");
            } else {
                try {
                    fileDescriptor = Native.j();
                    try {
                        k10 = Native.k();
                        if (fileDescriptor != null) {
                            try {
                                fileDescriptor.b();
                            } catch (Exception unused) {
                            }
                        }
                    } catch (Throwable th3) {
                        th2 = th3;
                        if (fileDescriptor != null) {
                            fileDescriptor.b();
                        }
                        f54325a = th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    fileDescriptor = null;
                }
                if (k10 != null) {
                    k10.b();
                }
            }
        } catch (Exception unused2) {
        }
        f54325a = th2;
    }

    private a() {
    }

    public static void a() {
        Throwable th2 = f54325a;
        if (th2 != null) {
            throw ((Error) new UnsatisfiedLinkError("failed to load the required native library").initCause(th2));
        }
    }
}
