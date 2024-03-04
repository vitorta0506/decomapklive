package io.grpc.internal;

import io.grpc.Status;
import io.grpc.internal.k2;
import io.grpc.l;
import java.io.Closeable;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.DataFormatException;
/* loaded from: classes5.dex */
public class l1 implements Closeable, y {

    /* renamed from: a  reason: collision with root package name */
    private b f42835a;

    /* renamed from: b  reason: collision with root package name */
    private int f42836b;

    /* renamed from: c  reason: collision with root package name */
    private final i2 f42837c;

    /* renamed from: d  reason: collision with root package name */
    private final p2 f42838d;

    /* renamed from: e  reason: collision with root package name */
    private io.grpc.u f42839e;

    /* renamed from: f  reason: collision with root package name */
    private s0 f42840f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f42841g;

    /* renamed from: h  reason: collision with root package name */
    private int f42842h;

    /* renamed from: k  reason: collision with root package name */
    private boolean f42845k;

    /* renamed from: l  reason: collision with root package name */
    private t f42846l;

    /* renamed from: n  reason: collision with root package name */
    private long f42848n;

    /* renamed from: q  reason: collision with root package name */
    private int f42851q;

    /* renamed from: i  reason: collision with root package name */
    private e f42843i = e.HEADER;

    /* renamed from: j  reason: collision with root package name */
    private int f42844j = 5;

    /* renamed from: m  reason: collision with root package name */
    private t f42847m = new t();

    /* renamed from: o  reason: collision with root package name */
    private boolean f42849o = false;

    /* renamed from: p  reason: collision with root package name */
    private int f42850p = -1;

    /* renamed from: r  reason: collision with root package name */
    private boolean f42852r = false;

    /* renamed from: s  reason: collision with root package name */
    private volatile boolean f42853s = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f42854a;

        static {
            int[] iArr = new int[e.values().length];
            f42854a = iArr;
            try {
                iArr[e.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f42854a[e.BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface b {
        void a(k2.a aVar);

        void b(int i9);

        void c(Throwable th2);

        void d(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class c implements k2.a {

        /* renamed from: a  reason: collision with root package name */
        private InputStream f42855a;

        /* synthetic */ c(InputStream inputStream, a aVar) {
            this(inputStream);
        }

        @Override // io.grpc.internal.k2.a
        public InputStream next() {
            InputStream inputStream = this.f42855a;
            this.f42855a = null;
            return inputStream;
        }

        private c(InputStream inputStream) {
            this.f42855a = inputStream;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum e {
        HEADER,
        BODY
    }

    public l1(b bVar, io.grpc.u uVar, int i9, i2 i2Var, p2 p2Var) {
        this.f42835a = (b) com.google.common.base.o.t(bVar, "sink");
        this.f42839e = (io.grpc.u) com.google.common.base.o.t(uVar, "decompressor");
        this.f42836b = i9;
        this.f42837c = (i2) com.google.common.base.o.t(i2Var, "statsTraceCtx");
        this.f42838d = (p2) com.google.common.base.o.t(p2Var, "transportTracer");
    }

    private void a() {
        if (this.f42849o) {
            return;
        }
        this.f42849o = true;
        while (true) {
            try {
                if (this.f42853s || this.f42848n <= 0 || !t()) {
                    break;
                }
                int i9 = a.f42854a[this.f42843i.ordinal()];
                if (i9 == 1) {
                    s();
                } else if (i9 == 2) {
                    r();
                    this.f42848n--;
                } else {
                    throw new AssertionError("Invalid state: " + this.f42843i);
                }
            } finally {
                this.f42849o = false;
            }
        }
        if (this.f42853s) {
            close();
            return;
        }
        if (this.f42852r && q()) {
            close();
        }
    }

    private InputStream k() {
        io.grpc.u uVar = this.f42839e;
        if (uVar != l.b.f43352a) {
            try {
                return new d(uVar.b(w1.c(this.f42846l, true)), this.f42836b, this.f42837c);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
        throw Status.f41718t.r("Can't decode compressed gRPC message as compression not configured").d();
    }

    private InputStream o() {
        this.f42837c.f(this.f42846l.n());
        return w1.c(this.f42846l, true);
    }

    private boolean p() {
        return isClosed() || this.f42852r;
    }

    private boolean q() {
        s0 s0Var = this.f42840f;
        if (s0Var != null) {
            return s0Var.v();
        }
        return this.f42847m.n() == 0;
    }

    private void r() {
        this.f42837c.e(this.f42850p, this.f42851q, -1L);
        this.f42851q = 0;
        InputStream k10 = this.f42845k ? k() : o();
        this.f42846l = null;
        this.f42835a.a(new c(k10, null));
        this.f42843i = e.HEADER;
        this.f42844j = 5;
    }

    private void s() {
        int readUnsignedByte = this.f42846l.readUnsignedByte();
        if ((readUnsignedByte & 254) == 0) {
            this.f42845k = (readUnsignedByte & 1) != 0;
            int readInt = this.f42846l.readInt();
            this.f42844j = readInt;
            if (readInt >= 0 && readInt <= this.f42836b) {
                int i9 = this.f42850p + 1;
                this.f42850p = i9;
                this.f42837c.d(i9);
                this.f42838d.d();
                this.f42843i = e.BODY;
                return;
            }
            throw Status.f41713o.r(String.format("gRPC message exceeds maximum size %d: %d", Integer.valueOf(this.f42836b), Integer.valueOf(this.f42844j))).d();
        }
        throw Status.f41718t.r("gRPC frame header malformed: reserved bits not zero").d();
    }

    private boolean t() {
        int i9;
        int i10 = 0;
        try {
            if (this.f42846l == null) {
                this.f42846l = new t();
            }
            int i11 = 0;
            i9 = 0;
            while (true) {
                try {
                    int n9 = this.f42844j - this.f42846l.n();
                    if (n9 <= 0) {
                        if (i11 > 0) {
                            this.f42835a.b(i11);
                            if (this.f42843i == e.BODY) {
                                if (this.f42840f != null) {
                                    this.f42837c.g(i9);
                                    this.f42851q += i9;
                                } else {
                                    this.f42837c.g(i11);
                                    this.f42851q += i11;
                                }
                            }
                        }
                        return true;
                    } else if (this.f42840f != null) {
                        try {
                            byte[] bArr = this.f42841g;
                            if (bArr == null || this.f42842h == bArr.length) {
                                this.f42841g = new byte[Math.min(n9, 2097152)];
                                this.f42842h = 0;
                            }
                            int s10 = this.f42840f.s(this.f42841g, this.f42842h, Math.min(n9, this.f42841g.length - this.f42842h));
                            i11 += this.f42840f.o();
                            i9 += this.f42840f.p();
                            if (s10 == 0) {
                                if (i11 > 0) {
                                    this.f42835a.b(i11);
                                    if (this.f42843i == e.BODY) {
                                        if (this.f42840f != null) {
                                            this.f42837c.g(i9);
                                            this.f42851q += i9;
                                        } else {
                                            this.f42837c.g(i11);
                                            this.f42851q += i11;
                                        }
                                    }
                                }
                                return false;
                            }
                            this.f42846l.b(w1.f(this.f42841g, this.f42842h, s10));
                            this.f42842h += s10;
                        } catch (IOException e10) {
                            throw new RuntimeException(e10);
                        } catch (DataFormatException e11) {
                            throw new RuntimeException(e11);
                        }
                    } else if (this.f42847m.n() == 0) {
                        if (i11 > 0) {
                            this.f42835a.b(i11);
                            if (this.f42843i == e.BODY) {
                                if (this.f42840f != null) {
                                    this.f42837c.g(i9);
                                    this.f42851q += i9;
                                } else {
                                    this.f42837c.g(i11);
                                    this.f42851q += i11;
                                }
                            }
                        }
                        return false;
                    } else {
                        int min = Math.min(n9, this.f42847m.n());
                        i11 += min;
                        this.f42846l.b(this.f42847m.G(min));
                    }
                } catch (Throwable th2) {
                    int i12 = i11;
                    th = th2;
                    i10 = i12;
                    if (i10 > 0) {
                        this.f42835a.b(i10);
                        if (this.f42843i == e.BODY) {
                            if (this.f42840f != null) {
                                this.f42837c.g(i9);
                                this.f42851q += i9;
                            } else {
                                this.f42837c.g(i10);
                                this.f42851q += i10;
                            }
                        }
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            i9 = 0;
        }
    }

    @Override // io.grpc.internal.y
    public void b(int i9) {
        com.google.common.base.o.e(i9 > 0, "numMessages must be > 0");
        if (isClosed()) {
            return;
        }
        this.f42848n += i9;
        a();
    }

    @Override // io.grpc.internal.y
    public void c(int i9) {
        this.f42836b = i9;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, io.grpc.internal.y
    public void close() {
        if (isClosed()) {
            return;
        }
        t tVar = this.f42846l;
        boolean z10 = true;
        boolean z11 = tVar != null && tVar.n() > 0;
        try {
            s0 s0Var = this.f42840f;
            if (s0Var != null) {
                if (!z11 && !s0Var.q()) {
                    z10 = false;
                }
                this.f42840f.close();
                z11 = z10;
            }
            t tVar2 = this.f42847m;
            if (tVar2 != null) {
                tVar2.close();
            }
            t tVar3 = this.f42846l;
            if (tVar3 != null) {
                tVar3.close();
            }
            this.f42840f = null;
            this.f42847m = null;
            this.f42846l = null;
            this.f42835a.d(z11);
        } catch (Throwable th2) {
            this.f42840f = null;
            this.f42847m = null;
            this.f42846l = null;
            throw th2;
        }
    }

    @Override // io.grpc.internal.y
    public void d(io.grpc.u uVar) {
        com.google.common.base.o.A(this.f42840f == null, "Already set full stream decompressor");
        this.f42839e = (io.grpc.u) com.google.common.base.o.t(uVar, "Can't pass an empty decompressor");
    }

    @Override // io.grpc.internal.y
    public void e(v1 v1Var) {
        com.google.common.base.o.t(v1Var, "data");
        boolean z10 = true;
        try {
            if (!p()) {
                s0 s0Var = this.f42840f;
                if (s0Var != null) {
                    s0Var.j(v1Var);
                } else {
                    this.f42847m.b(v1Var);
                }
                z10 = false;
                a();
            }
        } finally {
            if (z10) {
                v1Var.close();
            }
        }
    }

    public boolean isClosed() {
        return this.f42847m == null && this.f42840f == null;
    }

    @Override // io.grpc.internal.y
    public void j() {
        if (isClosed()) {
            return;
        }
        if (q()) {
            close();
        } else {
            this.f42852r = true;
        }
    }

    public void v(s0 s0Var) {
        com.google.common.base.o.A(this.f42839e == l.b.f43352a, "per-message decompressor already set");
        com.google.common.base.o.A(this.f42840f == null, "full stream decompressor already set");
        this.f42840f = (s0) com.google.common.base.o.t(s0Var, "Can't pass a null full stream decompressor");
        this.f42847m = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(b bVar) {
        this.f42835a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y() {
        this.f42853s = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class d extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private final int f42856a;

        /* renamed from: b  reason: collision with root package name */
        private final i2 f42857b;

        /* renamed from: c  reason: collision with root package name */
        private long f42858c;

        /* renamed from: d  reason: collision with root package name */
        private long f42859d;

        /* renamed from: e  reason: collision with root package name */
        private long f42860e;

        d(InputStream inputStream, int i9, i2 i2Var) {
            super(inputStream);
            this.f42860e = -1L;
            this.f42856a = i9;
            this.f42857b = i2Var;
        }

        private void a() {
            long j10 = this.f42859d;
            long j11 = this.f42858c;
            if (j10 > j11) {
                this.f42857b.f(j10 - j11);
                this.f42858c = this.f42859d;
            }
        }

        private void c() {
            long j10 = this.f42859d;
            int i9 = this.f42856a;
            if (j10 > i9) {
                throw Status.f41713o.r(String.format("Decompressed gRPC message exceeds maximum size %d", Integer.valueOf(i9))).d();
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void mark(int i9) {
            ((FilterInputStream) this).in.mark(i9);
            this.f42860e = this.f42859d;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = ((FilterInputStream) this).in.read();
            if (read != -1) {
                this.f42859d++;
            }
            c();
            a();
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            if (((FilterInputStream) this).in.markSupported()) {
                if (this.f42860e != -1) {
                    ((FilterInputStream) this).in.reset();
                    this.f42859d = this.f42860e;
                } else {
                    throw new IOException("Mark not set");
                }
            } else {
                throw new IOException("Mark not supported");
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j10) throws IOException {
            long skip = ((FilterInputStream) this).in.skip(j10);
            this.f42859d += skip;
            c();
            a();
            return skip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i9, int i10) throws IOException {
            int read = ((FilterInputStream) this).in.read(bArr, i9, i10);
            if (read != -1) {
                this.f42859d += read;
            }
            c();
            a();
            return read;
        }
    }
}
