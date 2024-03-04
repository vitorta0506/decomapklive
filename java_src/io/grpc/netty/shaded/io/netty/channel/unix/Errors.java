package io.grpc.netty.shaded.io.netty.channel.unix;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.nio.channels.AlreadyConnectedException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.NotYetConnectedException;
/* loaded from: classes5.dex */
public final class Errors {

    /* renamed from: a  reason: collision with root package name */
    public static final int f43800a = -ErrorsStaticallyReferencedJniMethods.errnoENOENT();

    /* renamed from: b  reason: collision with root package name */
    public static final int f43801b = -ErrorsStaticallyReferencedJniMethods.errnoENOTCONN();

    /* renamed from: c  reason: collision with root package name */
    public static final int f43802c = -ErrorsStaticallyReferencedJniMethods.errnoEBADF();

    /* renamed from: d  reason: collision with root package name */
    public static final int f43803d = -ErrorsStaticallyReferencedJniMethods.errnoEPIPE();

    /* renamed from: e  reason: collision with root package name */
    public static final int f43804e = -ErrorsStaticallyReferencedJniMethods.errnoECONNRESET();

    /* renamed from: f  reason: collision with root package name */
    public static final int f43805f = -ErrorsStaticallyReferencedJniMethods.errnoEAGAIN();

    /* renamed from: g  reason: collision with root package name */
    public static final int f43806g = -ErrorsStaticallyReferencedJniMethods.errnoEWOULDBLOCK();

    /* renamed from: h  reason: collision with root package name */
    public static final int f43807h = -ErrorsStaticallyReferencedJniMethods.errnoEINPROGRESS();

    /* renamed from: i  reason: collision with root package name */
    public static final int f43808i = -ErrorsStaticallyReferencedJniMethods.errorECONNREFUSED();

    /* renamed from: j  reason: collision with root package name */
    public static final int f43809j = -ErrorsStaticallyReferencedJniMethods.errorEISCONN();

    /* renamed from: k  reason: collision with root package name */
    public static final int f43810k = -ErrorsStaticallyReferencedJniMethods.errorEALREADY();

    /* renamed from: l  reason: collision with root package name */
    public static final int f43811l = -ErrorsStaticallyReferencedJniMethods.errorENETUNREACH();

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f43812m = new String[512];

    /* loaded from: classes5.dex */
    public static final class NativeIoException extends IOException {
        private static final long serialVersionUID = 8222160204268655526L;
        private final int expectedErr;
        private final boolean fillInStackTrace;

        public NativeIoException(String str, int i9) {
            this(str, i9, true);
        }

        public int expectedErr() {
            return this.expectedErr;
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            if (this.fillInStackTrace) {
                return super.fillInStackTrace();
            }
            return this;
        }

        public NativeIoException(String str, int i9, boolean z10) {
            super(str + "(..) failed: " + Errors.f43812m[-i9]);
            this.expectedErr = i9;
            this.fillInStackTrace = z10;
        }
    }

    static {
        int i9 = 0;
        while (true) {
            String[] strArr = f43812m;
            if (i9 >= strArr.length) {
                return;
            }
            strArr[i9] = ErrorsStaticallyReferencedJniMethods.strError(i9);
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(String str, int i9) throws IOException {
        if (i9 == f43807h || i9 == f43810k) {
            return false;
        }
        throw d(str, i9);
    }

    public static int c(String str, int i9) throws IOException {
        if (i9 == f43805f || i9 == f43806g) {
            return 0;
        }
        if (i9 != f43802c) {
            if (i9 != f43801b) {
                if (i9 == f43800a) {
                    throw new FileNotFoundException();
                }
                throw new NativeIoException(str, i9, false);
            }
            throw new NotYetConnectedException();
        }
        throw new ClosedChannelException();
    }

    private static IOException d(String str, int i9) {
        if (i9 == f43811l) {
            return new NoRouteToHostException();
        }
        if (i9 != f43809j) {
            if (i9 == f43800a) {
                return new FileNotFoundException();
            }
            return new ConnectException(str + "(..) failed: " + f43812m[-i9]);
        }
        throw new AlreadyConnectedException();
    }

    public static NativeIoException e(String str, int i9) {
        return new NativeIoException(str, i9);
    }
}
