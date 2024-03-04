package yg;

import io.grpc.okhttp.internal.framed.ErrorCode;
import io.grpc.okhttp.internal.framed.HeadersMode;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import okio.BufferedSource;
import okio.ByteString;
/* loaded from: classes5.dex */
public interface a extends Closeable {

    /* renamed from: yg.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0700a {
        void ackSettings();

        void data(boolean z10, int i9, BufferedSource bufferedSource, int i10) throws IOException;

        void g(int i9, ErrorCode errorCode);

        void h(boolean z10, g gVar);

        void i(int i9, ErrorCode errorCode, ByteString byteString);

        void j(boolean z10, boolean z11, int i9, int i10, List<c> list, HeadersMode headersMode);

        void ping(boolean z10, int i9, int i10);

        void priority(int i9, int i10, int i11, boolean z10);

        void pushPromise(int i9, int i10, List<c> list) throws IOException;

        void windowUpdate(int i9, long j10);
    }

    boolean g1(InterfaceC0700a interfaceC0700a) throws IOException;
}
