package yg;

import io.grpc.okhttp.internal.framed.ErrorCode;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import okio.Buffer;
/* loaded from: classes5.dex */
public interface b extends Closeable {
    void O1(int i9, ErrorCode errorCode, byte[] bArr) throws IOException;

    void b0(g gVar) throws IOException;

    void connectionPreface() throws IOException;

    void data(boolean z10, int i9, Buffer buffer, int i10) throws IOException;

    void e0(g gVar) throws IOException;

    void flush() throws IOException;

    void g(int i9, ErrorCode errorCode) throws IOException;

    int maxDataLength();

    void ping(boolean z10, int i9, int i10) throws IOException;

    void synStream(boolean z10, boolean z11, int i9, int i10, List<c> list) throws IOException;

    void windowUpdate(int i9, long j10) throws IOException;
}
