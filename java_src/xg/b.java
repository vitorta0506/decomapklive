package xg;

import io.grpc.okhttp.internal.framed.ErrorCode;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.ByteString;
import xg.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class b implements yg.b {

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f59746d = Logger.getLogger(g.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final a f59747a;

    /* renamed from: b  reason: collision with root package name */
    private final yg.b f59748b;

    /* renamed from: c  reason: collision with root package name */
    private final h f59749c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a {
        void a(Throwable th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, yg.b bVar) {
        this(aVar, bVar, new h(Level.FINE, g.class));
    }

    static Level a(Throwable th2) {
        if (th2.getClass().equals(IOException.class)) {
            return Level.FINE;
        }
        return Level.INFO;
    }

    @Override // yg.b
    public void O1(int i9, ErrorCode errorCode, byte[] bArr) {
        this.f59749c.c(h.a.OUTBOUND, i9, errorCode, ByteString.of(bArr));
        try {
            this.f59748b.O1(i9, errorCode, bArr);
            this.f59748b.flush();
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    @Override // yg.b
    public void b0(yg.g gVar) {
        this.f59749c.i(h.a.OUTBOUND, gVar);
        try {
            this.f59748b.b0(gVar);
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f59748b.close();
        } catch (IOException e10) {
            f59746d.log(a(e10), "Failed closing connection", (Throwable) e10);
        }
    }

    @Override // yg.b
    public void connectionPreface() {
        try {
            this.f59748b.connectionPreface();
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    @Override // yg.b
    public void data(boolean z10, int i9, Buffer buffer, int i10) {
        this.f59749c.b(h.a.OUTBOUND, i9, buffer.buffer(), i10, z10);
        try {
            this.f59748b.data(z10, i9, buffer, i10);
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    @Override // yg.b
    public void e0(yg.g gVar) {
        this.f59749c.j(h.a.OUTBOUND);
        try {
            this.f59748b.e0(gVar);
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    @Override // yg.b
    public void flush() {
        try {
            this.f59748b.flush();
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    @Override // yg.b
    public void g(int i9, ErrorCode errorCode) {
        this.f59749c.h(h.a.OUTBOUND, i9, errorCode);
        try {
            this.f59748b.g(i9, errorCode);
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    @Override // yg.b
    public int maxDataLength() {
        return this.f59748b.maxDataLength();
    }

    @Override // yg.b
    public void ping(boolean z10, int i9, int i10) {
        if (z10) {
            this.f59749c.f(h.a.OUTBOUND, (4294967295L & i10) | (i9 << 32));
        } else {
            this.f59749c.e(h.a.OUTBOUND, (4294967295L & i10) | (i9 << 32));
        }
        try {
            this.f59748b.ping(z10, i9, i10);
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    @Override // yg.b
    public void synStream(boolean z10, boolean z11, int i9, int i10, List<yg.c> list) {
        try {
            this.f59748b.synStream(z10, z11, i9, i10, list);
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    @Override // yg.b
    public void windowUpdate(int i9, long j10) {
        this.f59749c.k(h.a.OUTBOUND, i9, j10);
        try {
            this.f59748b.windowUpdate(i9, j10);
        } catch (IOException e10) {
            this.f59747a.a(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, yg.b bVar, h hVar) {
        this.f59747a = (a) com.google.common.base.o.t(aVar, "transportExceptionHandler");
        this.f59748b = (yg.b) com.google.common.base.o.t(bVar, "frameWriter");
        this.f59749c = (h) com.google.common.base.o.t(hVar, "frameLogger");
    }
}
