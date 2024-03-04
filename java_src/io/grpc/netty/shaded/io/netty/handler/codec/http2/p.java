package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.o0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.u;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes5.dex */
final class p {

    /* renamed from: a  reason: collision with root package name */
    private final b[] f44403a;

    /* renamed from: b  reason: collision with root package name */
    private final b f44404b;

    /* renamed from: c  reason: collision with root package name */
    private final s f44405c;

    /* renamed from: d  reason: collision with root package name */
    private final byte f44406d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f44407e;

    /* renamed from: f  reason: collision with root package name */
    private final int f44408f;

    /* renamed from: g  reason: collision with root package name */
    private long f44409g;

    /* renamed from: h  reason: collision with root package name */
    private long f44410h;

    /* renamed from: i  reason: collision with root package name */
    private long f44411i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44412a;

        static {
            int[] iArr = new int[u.a.values().length];
            f44412a = iArr;
            try {
                iArr[u.a.INCREMENTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44412a[u.a.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44412a[u.a.NEVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b extends q {

        /* renamed from: c  reason: collision with root package name */
        b f44413c;

        /* renamed from: d  reason: collision with root package name */
        b f44414d;

        /* renamed from: e  reason: collision with root package name */
        b f44415e;

        /* renamed from: f  reason: collision with root package name */
        int f44416f;

        /* renamed from: g  reason: collision with root package name */
        int f44417g;

        b(int i9, CharSequence charSequence, CharSequence charSequence2, int i10, b bVar) {
            super(charSequence, charSequence2);
            this.f44417g = i10;
            this.f44416f = i9;
            this.f44415e = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(b bVar) {
            this.f44414d = bVar;
            b bVar2 = bVar.f44413c;
            this.f44413c = bVar2;
            bVar2.f44414d = this;
            this.f44414d.f44413c = this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            b bVar = this.f44413c;
            bVar.f44414d = this.f44414d;
            this.f44414d.f44413c = bVar;
            this.f44413c = null;
            this.f44414d = null;
            this.f44415e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p() {
        this(false);
    }

    private void a(CharSequence charSequence, CharSequence charSequence2, long j10) {
        if (j10 > this.f44410h) {
            b();
            return;
        }
        while (this.f44410h - this.f44409g < j10) {
            r();
        }
        int s10 = io.grpc.netty.shaded.io.netty.util.c.s(charSequence);
        int p10 = p(s10);
        b bVar = new b(s10, charSequence, charSequence2, this.f44404b.f44413c.f44417g - 1, this.f44403a[p10]);
        this.f44403a[p10] = bVar;
        bVar.e(this.f44404b);
        this.f44409g += j10;
    }

    private void b() {
        Arrays.fill(this.f44403a, (Object) null);
        b bVar = this.f44404b;
        bVar.f44414d = bVar;
        bVar.f44413c = bVar;
        this.f44409g = 0L;
    }

    private void c(kg.j jVar, CharSequence charSequence, CharSequence charSequence2, boolean z10, long j10) {
        if (z10) {
            i(jVar, charSequence, charSequence2, u.a.NEVER, o(charSequence));
            return;
        }
        long j11 = this.f44410h;
        if (j11 == 0) {
            int d10 = t.d(charSequence, charSequence2);
            if (d10 == -1) {
                i(jVar, charSequence, charSequence2, u.a.NONE, t.c(charSequence));
                return;
            }
            g(jVar, 128, 7, d10);
        } else if (j10 > j11) {
            i(jVar, charSequence, charSequence2, u.a.NONE, o(charSequence));
        } else {
            b l10 = l(charSequence, charSequence2);
            if (l10 != null) {
                g(jVar, 128, 7, m(l10.f44417g) + t.f44442d);
                return;
            }
            int d11 = t.d(charSequence, charSequence2);
            if (d11 != -1) {
                g(jVar, 128, 7, d11);
                return;
            }
            k(j10);
            i(jVar, charSequence, charSequence2, u.a.INCREMENTAL, o(charSequence));
            a(charSequence, charSequence2, j10);
        }
    }

    private void e(int i9, kg.j jVar, Http2Headers http2Headers, o0.d dVar) throws Http2Exception {
        long j10 = 0;
        for (Map.Entry<CharSequence, CharSequence> entry : http2Headers) {
            j10 += q.b(entry.getKey(), entry.getValue());
            long j11 = this.f44411i;
            if (j10 > j11) {
                x.d(i9, j11, false);
            }
        }
        f(jVar, http2Headers, dVar);
    }

    private void f(kg.j jVar, Http2Headers http2Headers, o0.d dVar) throws Http2Exception {
        for (Map.Entry<CharSequence, CharSequence> entry : http2Headers) {
            CharSequence key = entry.getKey();
            CharSequence value = entry.getValue();
            c(jVar, key, value, dVar.a(key, value), q.b(key, value));
        }
    }

    private static void g(kg.j jVar, int i9, int i10, int i11) {
        h(jVar, i9, i10, i11);
    }

    private static void h(kg.j jVar, int i9, int i10, long j10) {
        int i11 = 255 >>> (8 - i10);
        long j11 = i11;
        if (j10 < j11) {
            jVar.u2((int) (i9 | j10));
            return;
        }
        jVar.u2(i9 | i11);
        long j12 = j10 - j11;
        while (((-128) & j12) != 0) {
            jVar.u2((int) ((127 & j12) | 128));
            j12 >>>= 7;
        }
        jVar.u2((int) j12);
    }

    private void i(kg.j jVar, CharSequence charSequence, CharSequence charSequence2, u.a aVar, int i9) {
        boolean z10 = i9 != -1;
        int i10 = a.f44412a[aVar.ordinal()];
        if (i10 == 1) {
            if (!z10) {
                i9 = 0;
            }
            g(jVar, 64, 6, i9);
        } else if (i10 == 2) {
            if (!z10) {
                i9 = 0;
            }
            g(jVar, 0, 4, i9);
        } else if (i10 == 3) {
            if (!z10) {
                i9 = 0;
            }
            g(jVar, 16, 4, i9);
        } else {
            throw new Error("should not reach here");
        }
        if (!z10) {
            j(jVar, charSequence);
        }
        j(jVar, charSequence2);
    }

    private void j(kg.j jVar, CharSequence charSequence) {
        int e10;
        if (charSequence.length() >= this.f44408f && (e10 = this.f44405c.e(charSequence)) < charSequence.length()) {
            g(jVar, 128, 7, e10);
            this.f44405c.c(jVar, charSequence);
            return;
        }
        g(jVar, 0, 7, charSequence.length());
        if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
            io.grpc.netty.shaded.io.netty.util.c cVar = (io.grpc.netty.shaded.io.netty.util.c) charSequence;
            jVar.B2(cVar.a(), cVar.b(), cVar.length());
            return;
        }
        jVar.D2(charSequence, io.grpc.netty.shaded.io.netty.util.h.f45017e);
    }

    private void k(long j10) {
        while (this.f44410h - this.f44409g < j10 && q() != 0) {
            r();
        }
    }

    private b l(CharSequence charSequence, CharSequence charSequence2) {
        if (q() != 0 && charSequence != null && charSequence2 != null) {
            int s10 = io.grpc.netty.shaded.io.netty.util.c.s(charSequence);
            for (b bVar = this.f44403a[p(s10)]; bVar != null; bVar = bVar.f44415e) {
                if (bVar.f44416f == s10 && u.b(charSequence2, bVar.f44423b) && u.b(charSequence, bVar.f44422a)) {
                    return bVar;
                }
            }
        }
        return null;
    }

    private int m(int i9) {
        if (i9 == -1) {
            return -1;
        }
        return (i9 - this.f44404b.f44413c.f44417g) + 1;
    }

    private int n(CharSequence charSequence) {
        if (q() != 0 && charSequence != null) {
            int s10 = io.grpc.netty.shaded.io.netty.util.c.s(charSequence);
            for (b bVar = this.f44403a[p(s10)]; bVar != null; bVar = bVar.f44415e) {
                if (bVar.f44416f == s10 && u.a(charSequence, bVar.f44422a) != 0) {
                    return m(bVar.f44417g);
                }
            }
        }
        return -1;
    }

    private int o(CharSequence charSequence) {
        int c10 = t.c(charSequence);
        if (c10 == -1) {
            int n9 = n(charSequence);
            return n9 >= 0 ? n9 + t.f44442d : n9;
        }
        return c10;
    }

    private int p(int i9) {
        return i9 & this.f44406d;
    }

    private q r() {
        if (this.f44409g == 0) {
            return null;
        }
        b bVar = this.f44404b.f44414d;
        int p10 = p(bVar.f44416f);
        b bVar2 = this.f44403a[p10];
        b bVar3 = bVar2;
        while (bVar2 != null) {
            b bVar4 = bVar2.f44415e;
            if (bVar2 == bVar) {
                if (bVar3 == bVar) {
                    this.f44403a[p10] = bVar4;
                } else {
                    bVar3.f44415e = bVar4;
                }
                bVar.f();
                this.f44409g -= bVar.a();
                return bVar;
            }
            bVar3 = bVar2;
            bVar2 = bVar4;
        }
        return null;
    }

    public void d(int i9, kg.j jVar, Http2Headers http2Headers, o0.d dVar) throws Http2Exception {
        if (this.f44407e) {
            f(jVar, http2Headers, dVar);
        } else {
            e(i9, jVar, http2Headers, dVar);
        }
    }

    int q() {
        if (this.f44409g == 0) {
            return 0;
        }
        b bVar = this.f44404b;
        return (bVar.f44414d.f44417g - bVar.f44413c.f44417g) + 1;
    }

    public void s(long j10) throws Http2Exception {
        if (j10 >= 0 && j10 <= 4294967295L) {
            this.f44411i = j10;
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Header List Size must be >= %d and <= %d but was %d", 0L, 4294967295L, Long.valueOf(j10));
    }

    public void t(kg.j jVar, long j10) throws Http2Exception {
        if (j10 >= 0 && j10 <= 4294967295L) {
            if (this.f44410h == j10) {
                return;
            }
            this.f44410h = j10;
            k(0L);
            h(jVar, 32, 5, j10);
            return;
        }
        throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Header Table Size must be >= %d and <= %d but was %d", 0L, 4294967295L, Long.valueOf(j10));
    }

    p(boolean z10) {
        this(z10, 16, 512);
    }

    p(boolean z10, int i9, int i10) {
        io.grpc.netty.shaded.io.netty.util.c cVar = io.grpc.netty.shaded.io.netty.util.c.f45004f;
        b bVar = new b(-1, cVar, cVar, Integer.MAX_VALUE, null);
        this.f44404b = bVar;
        this.f44405c = new s();
        this.f44407e = z10;
        this.f44410h = 4096L;
        this.f44411i = 4294967295L;
        b[] bVarArr = new b[io.grpc.netty.shaded.io.netty.util.internal.o.b(Math.max(2, Math.min(i9, 128)))];
        this.f44403a = bVarArr;
        this.f44406d = (byte) (bVarArr.length - 1);
        bVar.f44414d = bVar;
        bVar.f44413c = bVar;
        this.f44408f = i10;
    }
}
