package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.u;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;
/* loaded from: classes5.dex */
final class n {

    /* renamed from: g  reason: collision with root package name */
    private static final Http2Exception f44369g;

    /* renamed from: h  reason: collision with root package name */
    private static final Http2Exception f44370h;

    /* renamed from: i  reason: collision with root package name */
    private static final Http2Exception f44371i;

    /* renamed from: j  reason: collision with root package name */
    private static final Http2Exception f44372j;

    /* renamed from: k  reason: collision with root package name */
    private static final Http2Exception f44373k;

    /* renamed from: l  reason: collision with root package name */
    private static final Http2Exception f44374l;

    /* renamed from: m  reason: collision with root package name */
    private static final Http2Exception f44375m;

    /* renamed from: n  reason: collision with root package name */
    private static final Http2Exception f44376n;

    /* renamed from: a  reason: collision with root package name */
    private final r f44377a;

    /* renamed from: b  reason: collision with root package name */
    private final o f44378b;

    /* renamed from: c  reason: collision with root package name */
    private long f44379c;

    /* renamed from: d  reason: collision with root package name */
    private long f44380d;

    /* renamed from: e  reason: collision with root package name */
    private long f44381e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f44382f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44383a;

        static {
            int[] iArr = new int[u.a.values().length];
            f44383a = iArr;
            try {
                iArr[u.a.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44383a[u.a.NEVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44383a[u.a.INCREMENTAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum b {
        REGULAR_HEADER,
        REQUEST_PSEUDO_HEADER,
        RESPONSE_PSEUDO_HEADER
    }

    /* loaded from: classes5.dex */
    private static final class c implements d {

        /* renamed from: a  reason: collision with root package name */
        private final Http2Headers f44388a;

        /* renamed from: b  reason: collision with root package name */
        private final long f44389b;

        /* renamed from: c  reason: collision with root package name */
        private final int f44390c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f44391d;

        /* renamed from: e  reason: collision with root package name */
        private long f44392e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f44393f;

        /* renamed from: g  reason: collision with root package name */
        private b f44394g;

        /* renamed from: h  reason: collision with root package name */
        private Http2Exception f44395h;

        c(int i9, Http2Headers http2Headers, long j10, boolean z10) {
            this.f44388a = http2Headers;
            this.f44389b = j10;
            this.f44390c = i9;
            this.f44391d = z10;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.n.d
        public void a(CharSequence charSequence, CharSequence charSequence2) {
            long b10 = this.f44392e + q.b(charSequence, charSequence2);
            this.f44392e = b10;
            boolean z10 = (b10 > this.f44389b) | this.f44393f;
            this.f44393f = z10;
            if (z10 || this.f44395h != null) {
                return;
            }
            if (this.f44391d) {
                try {
                    this.f44394g = n.p(this.f44390c, charSequence, this.f44394g);
                } catch (Http2Exception e10) {
                    this.f44395h = e10;
                    return;
                }
            }
            this.f44388a.Z0(charSequence, charSequence2);
        }

        public void b() throws Http2Exception {
            if (this.f44393f) {
                x.d(this.f44390c, this.f44389b, true);
                return;
            }
            Http2Exception http2Exception = this.f44395h;
            if (http2Exception != null) {
                throw http2Exception;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface d {
        void a(CharSequence charSequence, CharSequence charSequence2);
    }

    static {
        Http2Error http2Error = Http2Error.COMPRESSION_ERROR;
        Http2Exception.ShutdownHint shutdownHint = Http2Exception.ShutdownHint.HARD_SHUTDOWN;
        f44369g = Http2Exception.newStatic(http2Error, "HPACK - decompression failure", shutdownHint, n.class, "decodeULE128(..)");
        f44370h = Http2Exception.newStatic(http2Error, "HPACK - long overflow", shutdownHint, n.class, "decodeULE128(..)");
        f44371i = Http2Exception.newStatic(http2Error, "HPACK - int overflow", shutdownHint, n.class, "decodeULE128ToInt(..)");
        f44372j = Http2Exception.newStatic(http2Error, "HPACK - illegal index value", shutdownHint, n.class, "decode(..)");
        f44373k = Http2Exception.newStatic(http2Error, "HPACK - illegal index value", shutdownHint, n.class, "indexHeader(..)");
        f44374l = Http2Exception.newStatic(http2Error, "HPACK - illegal index value", shutdownHint, n.class, "readName(..)");
        f44375m = Http2Exception.newStatic(http2Error, "HPACK - invalid max dynamic table size", shutdownHint, n.class, "setDynamicTableSize(..)");
        f44376n = Http2Exception.newStatic(http2Error, "HPACK - max dynamic table size change required", shutdownHint, n.class, "decode(..)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(long j10) {
        this(j10, 4096);
    }

    private void c(kg.j jVar, d dVar) throws Http2Exception {
        boolean z10;
        u.a aVar = u.a.NONE;
        CharSequence charSequence = null;
        boolean z11 = false;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (jVar.j1()) {
            switch (i9) {
                case 0:
                    byte x12 = jVar.x1();
                    if (this.f44382f && (x12 & 224) != 32) {
                        throw f44376n;
                    }
                    if (x12 < 0) {
                        i10 = x12 & ByteCompanionObject.MAX_VALUE;
                        if (i10 == 0) {
                            throw f44372j;
                        }
                        if (i10 == 127) {
                            i9 = 2;
                            break;
                        } else {
                            q f10 = f(i10);
                            dVar.a(f10.f44422a, f10.f44423b);
                            break;
                        }
                    } else if ((x12 & 64) == 64) {
                        aVar = u.a.INCREMENTAL;
                        i10 = x12 & Utf8.REPLACEMENT_BYTE;
                        if (i10 == 0) {
                            i9 = 4;
                            break;
                        } else if (i10 == 63) {
                            i9 = 3;
                            break;
                        } else {
                            charSequence = k(i10);
                            i11 = charSequence.length();
                            i9 = 7;
                            break;
                        }
                    } else if ((x12 & 32) == 32) {
                        i10 = x12 & 31;
                        if (i10 != 31) {
                            m(i10);
                            i9 = 0;
                            break;
                        } else {
                            i9 = 1;
                            break;
                        }
                    } else {
                        aVar = (x12 & 16) == 16 ? u.a.NEVER : u.a.NONE;
                        i10 = x12 & 15;
                        if (i10 == 0) {
                            i9 = 4;
                        } else if (i10 != 15) {
                            charSequence = k(i10);
                            i11 = charSequence.length();
                            i9 = 7;
                        } else {
                            i9 = 3;
                        }
                    }
                    break;
                case 1:
                    m(e(jVar, i10));
                    i9 = 0;
                    break;
                case 2:
                    q f11 = f(d(jVar, i10));
                    dVar.a(f11.f44422a, f11.f44423b);
                    i9 = 0;
                    break;
                case 3:
                    charSequence = k(d(jVar, i10));
                    i11 = charSequence.length();
                    i9 = 7;
                    break;
                case 4:
                    byte x13 = jVar.x1();
                    z10 = (x13 & ByteCompanionObject.MIN_VALUE) == 128;
                    i10 = x13 & ByteCompanionObject.MAX_VALUE;
                    if (i10 != 127) {
                        z11 = z10;
                        i11 = i10;
                        i9 = 6;
                        break;
                    } else {
                        i9 = 5;
                        z11 = z10;
                        break;
                    }
                case 5:
                    i11 = d(jVar, i10);
                    i9 = 6;
                    break;
                case 6:
                    if (jVar.P1() >= i11) {
                        charSequence = l(jVar, i11, z11);
                        i9 = 7;
                        break;
                    } else {
                        throw j(jVar);
                    }
                case 7:
                    byte x14 = jVar.x1();
                    z10 = (x14 & ByteCompanionObject.MIN_VALUE) == 128;
                    i10 = x14 & ByteCompanionObject.MAX_VALUE;
                    if (i10 == 0) {
                        i(dVar, charSequence, io.grpc.netty.shaded.io.netty.util.c.f45004f, aVar);
                        z11 = z10;
                        i9 = 0;
                        break;
                    } else if (i10 == 127) {
                        i9 = 8;
                        z11 = z10;
                        break;
                    } else {
                        z11 = z10;
                        i12 = i10;
                        i9 = 9;
                        break;
                    }
                case 8:
                    i12 = d(jVar, i10);
                    i9 = 9;
                    break;
                case 9:
                    if (jVar.P1() >= i12) {
                        i(dVar, charSequence, l(jVar, i12, z11), aVar);
                        i9 = 0;
                        break;
                    } else {
                        throw j(jVar);
                    }
                default:
                    throw new Error("should not reach here state: " + i9);
            }
        }
        if (i9 != 0) {
            throw Http2Exception.connectionError(Http2Error.COMPRESSION_ERROR, "Incomplete header block fragment.", new Object[0]);
        }
    }

    static int d(kg.j jVar, int i9) throws Http2Exception {
        int Q1 = jVar.Q1();
        long e10 = e(jVar, i9);
        if (e10 <= 2147483647L) {
            return (int) e10;
        }
        jVar.R1(Q1);
        throw f44371i;
    }

    static long e(kg.j jVar, long j10) throws Http2Exception {
        int i9 = 0;
        boolean z10 = j10 == 0;
        int K2 = jVar.K2();
        int Q1 = jVar.Q1();
        while (Q1 < K2) {
            byte u02 = jVar.u0(Q1);
            if (i9 == 56 && ((u02 & ByteCompanionObject.MIN_VALUE) != 0 || (u02 == Byte.MAX_VALUE && !z10))) {
                throw f44370h;
            }
            if ((u02 & ByteCompanionObject.MIN_VALUE) == 0) {
                jVar.R1(Q1 + 1);
                return j10 + ((u02 & 127) << i9);
            }
            j10 += (u02 & 127) << i9;
            Q1++;
            i9 += 7;
        }
        throw f44369g;
    }

    private q f(int i9) throws Http2Exception {
        int i10 = t.f44442d;
        if (i9 <= i10) {
            return t.b(i9);
        }
        if (i9 - i10 <= this.f44378b.e()) {
            return this.f44378b.d(i9 - i10);
        }
        throw f44373k;
    }

    private void i(d dVar, CharSequence charSequence, CharSequence charSequence2, u.a aVar) {
        dVar.a(charSequence, charSequence2);
        int i9 = a.f44383a[aVar.ordinal()];
        if (i9 == 1 || i9 == 2) {
            return;
        }
        if (i9 == 3) {
            this.f44378b.a(new q(charSequence, charSequence2));
            return;
        }
        throw new Error("should not reach here");
    }

    private static IllegalArgumentException j(kg.j jVar) {
        return new IllegalArgumentException("decode only works with an entire header block! " + jVar);
    }

    private CharSequence k(int i9) throws Http2Exception {
        int i10 = t.f44442d;
        if (i9 <= i10) {
            return t.b(i9).f44422a;
        }
        if (i9 - i10 <= this.f44378b.e()) {
            return this.f44378b.d(i9 - i10).f44422a;
        }
        throw f44374l;
    }

    private CharSequence l(kg.j jVar, int i9, boolean z10) throws Http2Exception {
        if (z10) {
            return this.f44377a.b(jVar, i9);
        }
        byte[] bArr = new byte[i9];
        jVar.C1(bArr);
        return new io.grpc.netty.shaded.io.netty.util.c(bArr, false);
    }

    private void m(long j10) throws Http2Exception {
        if (j10 <= this.f44380d) {
            this.f44381e = j10;
            this.f44382f = false;
            this.f44378b.g(j10);
            return;
        }
        throw f44375m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static b p(int i9, CharSequence charSequence, b bVar) throws Http2Exception {
        if (Http2Headers.PseudoHeaderName.hasPseudoHeaderFormat(charSequence)) {
            if (bVar != b.REGULAR_HEADER) {
                Http2Headers.PseudoHeaderName pseudoHeader = Http2Headers.PseudoHeaderName.getPseudoHeader(charSequence);
                if (pseudoHeader != null) {
                    b bVar2 = pseudoHeader.isRequestOnly() ? b.REQUEST_PSEUDO_HEADER : b.RESPONSE_PSEUDO_HEADER;
                    if (bVar == null || bVar2 == bVar) {
                        return bVar2;
                    }
                    throw Http2Exception.streamError(i9, Http2Error.PROTOCOL_ERROR, "Mix of request and response pseudo-headers.", new Object[0]);
                }
                throw Http2Exception.streamError(i9, Http2Error.PROTOCOL_ERROR, "Invalid HTTP/2 pseudo-header '%s' encountered.", charSequence);
            }
            throw Http2Exception.streamError(i9, Http2Error.PROTOCOL_ERROR, "Pseudo-header field '%s' found after regular header.", charSequence);
        }
        return b.REGULAR_HEADER;
    }

    public void b(int i9, kg.j jVar, Http2Headers http2Headers, boolean z10) throws Http2Exception {
        c cVar = new c(i9, http2Headers, this.f44379c, z10);
        c(jVar, cVar);
        cVar.b();
    }

    public long g() {
        return this.f44379c;
    }

    public long h() {
        return this.f44378b.b();
    }

    public void n(long j10) throws Http2Exception {
        if (j10 >= 0 && j10 <= 4294967295L) {
            this.f44379c = j10;
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Header List Size must be >= %d and <= %d but was %d", 0L, 4294967295L, Long.valueOf(j10));
    }

    public void o(long j10) throws Http2Exception {
        if (j10 >= 0 && j10 <= 4294967295L) {
            this.f44380d = j10;
            if (j10 < this.f44381e) {
                this.f44382f = true;
                this.f44378b.g(j10);
                return;
            }
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Header Table Size must be >= %d and <= %d but was %d", 0L, 4294967295L, Long.valueOf(j10));
    }

    n(long j10, int i9) {
        this.f44377a = new r();
        this.f44379c = io.grpc.netty.shaded.io.netty.util.internal.s.m(j10, "maxHeaderListSize");
        long j11 = i9;
        this.f44381e = j11;
        this.f44380d = j11;
        this.f44382f = false;
        this.f44378b = new o(j11);
    }
}
