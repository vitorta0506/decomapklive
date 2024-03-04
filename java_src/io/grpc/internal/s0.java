package io.grpc.internal;

import java.io.Closeable;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipException;
import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class s0 implements Closeable {

    /* renamed from: e  reason: collision with root package name */
    private int f43035e;

    /* renamed from: f  reason: collision with root package name */
    private int f43036f;

    /* renamed from: g  reason: collision with root package name */
    private Inflater f43037g;

    /* renamed from: j  reason: collision with root package name */
    private int f43040j;

    /* renamed from: k  reason: collision with root package name */
    private int f43041k;

    /* renamed from: l  reason: collision with root package name */
    private long f43042l;

    /* renamed from: a  reason: collision with root package name */
    private final t f43031a = new t();

    /* renamed from: b  reason: collision with root package name */
    private final CRC32 f43032b = new CRC32();

    /* renamed from: c  reason: collision with root package name */
    private final b f43033c = new b(this, null);

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f43034d = new byte[512];

    /* renamed from: h  reason: collision with root package name */
    private c f43038h = c.HEADER;

    /* renamed from: i  reason: collision with root package name */
    private boolean f43039i = false;

    /* renamed from: m  reason: collision with root package name */
    private int f43043m = 0;

    /* renamed from: n  reason: collision with root package name */
    private int f43044n = 0;

    /* renamed from: o  reason: collision with root package name */
    private boolean f43045o = true;

    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43046a;

        static {
            int[] iArr = new int[c.values().length];
            f43046a = iArr;
            try {
                iArr[c.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43046a[c.HEADER_EXTRA_LEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f43046a[c.HEADER_EXTRA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f43046a[c.HEADER_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f43046a[c.HEADER_COMMENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f43046a[c.HEADER_CRC.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f43046a[c.INITIALIZE_INFLATER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f43046a[c.INFLATING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f43046a[c.INFLATER_NEEDS_INPUT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f43046a[c.TRAILER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class b {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean g() {
            while (k() > 0) {
                if (h() == 0) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int h() {
            int readUnsignedByte;
            if (s0.this.f43036f - s0.this.f43035e > 0) {
                readUnsignedByte = s0.this.f43034d[s0.this.f43035e] & UByte.MAX_VALUE;
                s0.c(s0.this, 1);
            } else {
                readUnsignedByte = s0.this.f43031a.readUnsignedByte();
            }
            s0.this.f43032b.update(readUnsignedByte);
            s0.i(s0.this, 1);
            return readUnsignedByte;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return j() | (j() << 16);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int j() {
            return h() | (h() << 8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int k() {
            return (s0.this.f43036f - s0.this.f43035e) + s0.this.f43031a.n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(int i9) {
            int i10;
            int i11 = s0.this.f43036f - s0.this.f43035e;
            if (i11 > 0) {
                int min = Math.min(i11, i9);
                s0.this.f43032b.update(s0.this.f43034d, s0.this.f43035e, min);
                s0.c(s0.this, min);
                i10 = i9 - min;
            } else {
                i10 = i9;
            }
            if (i10 > 0) {
                byte[] bArr = new byte[512];
                int i12 = 0;
                while (i12 < i10) {
                    int min2 = Math.min(i10 - i12, 512);
                    s0.this.f43031a.a1(bArr, 0, min2);
                    s0.this.f43032b.update(bArr, 0, min2);
                    i12 += min2;
                }
            }
            s0.i(s0.this, i9);
        }

        /* synthetic */ b(s0 s0Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum c {
        HEADER,
        HEADER_EXTRA_LEN,
        HEADER_EXTRA,
        HEADER_NAME,
        HEADER_COMMENT,
        HEADER_CRC,
        INITIALIZE_INFLATER,
        INFLATING,
        INFLATER_NEEDS_INPUT,
        TRAILER
    }

    private boolean A() throws ZipException {
        if ((this.f43040j & 2) != 2) {
            this.f43038h = c.INITIALIZE_INFLATER;
            return true;
        } else if (this.f43033c.k() < 2) {
            return false;
        } else {
            if ((65535 & ((int) this.f43032b.getValue())) == this.f43033c.j()) {
                this.f43038h = c.INITIALIZE_INFLATER;
                return true;
            }
            throw new ZipException("Corrupt GZIP header");
        }
    }

    private boolean C() {
        int k10 = this.f43033c.k();
        int i9 = this.f43041k;
        if (k10 < i9) {
            return false;
        }
        this.f43033c.l(i9);
        this.f43038h = c.HEADER_NAME;
        return true;
    }

    private boolean F() {
        if ((this.f43040j & 4) != 4) {
            this.f43038h = c.HEADER_NAME;
            return true;
        } else if (this.f43033c.k() < 2) {
            return false;
        } else {
            this.f43041k = this.f43033c.j();
            this.f43038h = c.HEADER_EXTRA;
            return true;
        }
    }

    private boolean I() {
        if ((this.f43040j & 8) != 8) {
            this.f43038h = c.HEADER_COMMENT;
            return true;
        } else if (this.f43033c.g()) {
            this.f43038h = c.HEADER_COMMENT;
            return true;
        } else {
            return false;
        }
    }

    private boolean K() throws ZipException {
        if (this.f43037g != null && this.f43033c.k() <= 18) {
            this.f43037g.end();
            this.f43037g = null;
        }
        if (this.f43033c.k() < 8) {
            return false;
        }
        if (this.f43032b.getValue() == this.f43033c.i() && this.f43042l == this.f43033c.i()) {
            this.f43032b.reset();
            this.f43038h = c.HEADER;
            return true;
        }
        throw new ZipException("Corrupt GZIP trailer");
    }

    static /* synthetic */ int c(s0 s0Var, int i9) {
        int i10 = s0Var.f43035e + i9;
        s0Var.f43035e = i10;
        return i10;
    }

    static /* synthetic */ int i(s0 s0Var, int i9) {
        int i10 = s0Var.f43043m + i9;
        s0Var.f43043m = i10;
        return i10;
    }

    private boolean k() {
        com.google.common.base.o.A(this.f43037g != null, "inflater is null");
        com.google.common.base.o.A(this.f43035e == this.f43036f, "inflaterInput has unconsumed bytes");
        int min = Math.min(this.f43031a.n(), 512);
        if (min == 0) {
            return false;
        }
        this.f43035e = 0;
        this.f43036f = min;
        this.f43031a.a1(this.f43034d, 0, min);
        this.f43037g.setInput(this.f43034d, this.f43035e, min);
        this.f43038h = c.INFLATING;
        return true;
    }

    private int r(byte[] bArr, int i9, int i10) throws DataFormatException, ZipException {
        com.google.common.base.o.A(this.f43037g != null, "inflater is null");
        try {
            int totalIn = this.f43037g.getTotalIn();
            int inflate = this.f43037g.inflate(bArr, i9, i10);
            int totalIn2 = this.f43037g.getTotalIn() - totalIn;
            this.f43043m += totalIn2;
            this.f43044n += totalIn2;
            this.f43035e += totalIn2;
            this.f43032b.update(bArr, i9, inflate);
            if (this.f43037g.finished()) {
                this.f43042l = this.f43037g.getBytesWritten() & 4294967295L;
                this.f43038h = c.TRAILER;
            } else if (this.f43037g.needsInput()) {
                this.f43038h = c.INFLATER_NEEDS_INPUT;
            }
            return inflate;
        } catch (DataFormatException e10) {
            throw new DataFormatException("Inflater data format exception: " + e10.getMessage());
        }
    }

    private boolean t() {
        Inflater inflater = this.f43037g;
        if (inflater == null) {
            this.f43037g = new Inflater(true);
        } else {
            inflater.reset();
        }
        this.f43032b.reset();
        int i9 = this.f43036f;
        int i10 = this.f43035e;
        int i11 = i9 - i10;
        if (i11 > 0) {
            this.f43037g.setInput(this.f43034d, i10, i11);
            this.f43038h = c.INFLATING;
        } else {
            this.f43038h = c.INFLATER_NEEDS_INPUT;
        }
        return true;
    }

    private boolean w() throws ZipException {
        if (this.f43033c.k() < 10) {
            return false;
        }
        if (this.f43033c.j() == 35615) {
            if (this.f43033c.h() == 8) {
                this.f43040j = this.f43033c.h();
                this.f43033c.l(6);
                this.f43038h = c.HEADER_EXTRA_LEN;
                return true;
            }
            throw new ZipException("Unsupported compression method");
        }
        throw new ZipException("Not in GZIP format");
    }

    private boolean y() {
        if ((this.f43040j & 16) != 16) {
            this.f43038h = c.HEADER_CRC;
            return true;
        } else if (this.f43033c.g()) {
            this.f43038h = c.HEADER_CRC;
            return true;
        } else {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f43039i) {
            return;
        }
        this.f43039i = true;
        this.f43031a.close();
        Inflater inflater = this.f43037g;
        if (inflater != null) {
            inflater.end();
            this.f43037g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(v1 v1Var) {
        com.google.common.base.o.A(!this.f43039i, "GzipInflatingBuffer is closed");
        this.f43031a.b(v1Var);
        this.f43045o = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int o() {
        int i9 = this.f43043m;
        this.f43043m = 0;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int p() {
        int i9 = this.f43044n;
        this.f43044n = 0;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q() {
        com.google.common.base.o.A(!this.f43039i, "GzipInflatingBuffer is closed");
        return (this.f43033c.k() == 0 && this.f43038h == c.HEADER) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int s(byte[] bArr, int i9, int i10) throws DataFormatException, ZipException {
        boolean z10 = true;
        com.google.common.base.o.A(!this.f43039i, "GzipInflatingBuffer is closed");
        boolean z11 = true;
        int i11 = 0;
        while (z11) {
            int i12 = i10 - i11;
            if (i12 > 0) {
                switch (a.f43046a[this.f43038h.ordinal()]) {
                    case 1:
                        z11 = w();
                        break;
                    case 2:
                        z11 = F();
                        break;
                    case 3:
                        z11 = C();
                        break;
                    case 4:
                        z11 = I();
                        break;
                    case 5:
                        z11 = y();
                        break;
                    case 6:
                        z11 = A();
                        break;
                    case 7:
                        z11 = t();
                        break;
                    case 8:
                        i11 += r(bArr, i9 + i11, i12);
                        if (this.f43038h != c.TRAILER) {
                            z11 = true;
                            break;
                        } else {
                            z11 = K();
                            break;
                        }
                    case 9:
                        z11 = k();
                        break;
                    case 10:
                        z11 = K();
                        break;
                    default:
                        throw new AssertionError("Invalid state: " + this.f43038h);
                }
            } else {
                if (z11 && (this.f43038h != c.HEADER || this.f43033c.k() >= 10)) {
                    z10 = false;
                }
                this.f43045o = z10;
                return i11;
            }
        }
        if (z11) {
            z10 = false;
        }
        this.f43045o = z10;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean v() {
        com.google.common.base.o.A(!this.f43039i, "GzipInflatingBuffer is closed");
        return this.f43045o;
    }
}
