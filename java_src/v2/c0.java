package v2;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import c2.b0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.z2;
import j3.l;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import v2.h0;
import v2.i;
import v2.n;
import v2.w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c0 implements n, c2.n, Loader.b<a>, Loader.f, h0.d {
    private static final Map<String, String> M = K();
    private static final k1 N = new k1.b().S("icy").e0("application/x-icy").E();
    private boolean A;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private long G;
    private boolean I;
    private int J;
    private boolean K;
    private boolean L;

    /* renamed from: a  reason: collision with root package name */
    private final Uri f58706a;

    /* renamed from: b  reason: collision with root package name */
    private final j3.i f58707b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.u f58708c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f58709d;

    /* renamed from: e  reason: collision with root package name */
    private final w.a f58710e;

    /* renamed from: f  reason: collision with root package name */
    private final s.a f58711f;

    /* renamed from: g  reason: collision with root package name */
    private final b f58712g;

    /* renamed from: h  reason: collision with root package name */
    private final j3.b f58713h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final String f58714i;

    /* renamed from: j  reason: collision with root package name */
    private final long f58715j;

    /* renamed from: l  reason: collision with root package name */
    private final x f58717l;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private n.a f58722q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private IcyHeaders f58723r;

    /* renamed from: u  reason: collision with root package name */
    private boolean f58726u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f58727v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f58728w;

    /* renamed from: x  reason: collision with root package name */
    private e f58729x;

    /* renamed from: y  reason: collision with root package name */
    private c2.b0 f58730y;

    /* renamed from: k  reason: collision with root package name */
    private final Loader f58716k = new Loader("ProgressiveMediaPeriod");

    /* renamed from: m  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g f58718m = new com.google.android.exoplayer2.util.g();

    /* renamed from: n  reason: collision with root package name */
    private final Runnable f58719n = new Runnable() { // from class: v2.y
        @Override // java.lang.Runnable
        public final void run() {
            c0.this.T();
        }
    };

    /* renamed from: o  reason: collision with root package name */
    private final Runnable f58720o = new Runnable() { // from class: v2.a0
        @Override // java.lang.Runnable
        public final void run() {
            c0.this.Q();
        }
    };

    /* renamed from: p  reason: collision with root package name */
    private final Handler f58721p = com.google.android.exoplayer2.util.l0.u();

    /* renamed from: t  reason: collision with root package name */
    private d[] f58725t = new d[0];

    /* renamed from: s  reason: collision with root package name */
    private h0[] f58724s = new h0[0];
    private long H = -9223372036854775807L;

    /* renamed from: z  reason: collision with root package name */
    private long f58731z = -9223372036854775807L;
    private int B = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class a implements Loader.e, i.a {

        /* renamed from: b  reason: collision with root package name */
        private final Uri f58733b;

        /* renamed from: c  reason: collision with root package name */
        private final j3.a0 f58734c;

        /* renamed from: d  reason: collision with root package name */
        private final x f58735d;

        /* renamed from: e  reason: collision with root package name */
        private final c2.n f58736e;

        /* renamed from: f  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.g f58737f;

        /* renamed from: h  reason: collision with root package name */
        private volatile boolean f58739h;

        /* renamed from: j  reason: collision with root package name */
        private long f58741j;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private c2.e0 f58743l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f58744m;

        /* renamed from: g  reason: collision with root package name */
        private final c2.a0 f58738g = new c2.a0();

        /* renamed from: i  reason: collision with root package name */
        private boolean f58740i = true;

        /* renamed from: a  reason: collision with root package name */
        private final long f58732a = j.a();

        /* renamed from: k  reason: collision with root package name */
        private j3.l f58742k = i(0);

        public a(Uri uri, j3.i iVar, x xVar, c2.n nVar, com.google.android.exoplayer2.util.g gVar) {
            this.f58733b = uri;
            this.f58734c = new j3.a0(iVar);
            this.f58735d = xVar;
            this.f58736e = nVar;
            this.f58737f = gVar;
        }

        private j3.l i(long j10) {
            return new l.b().h(this.f58733b).g(j10).f(c0.this.f58714i).b(6).e(c0.M).a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(long j10, long j11) {
            this.f58738g.f1463a = j10;
            this.f58741j = j11;
            this.f58740i = true;
            this.f58744m = false;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void a() throws IOException {
            int i9 = 0;
            while (i9 == 0 && !this.f58739h) {
                try {
                    long j10 = this.f58738g.f1463a;
                    j3.l i10 = i(j10);
                    this.f58742k = i10;
                    long b10 = this.f58734c.b(i10);
                    if (b10 != -1) {
                        b10 += j10;
                        c0.this.Y();
                    }
                    long j11 = b10;
                    c0.this.f58723r = IcyHeaders.a(this.f58734c.e());
                    j3.f fVar = this.f58734c;
                    if (c0.this.f58723r != null && c0.this.f58723r.metadataInterval != -1) {
                        fVar = new i(this.f58734c, c0.this.f58723r.metadataInterval, this);
                        c2.e0 N = c0.this.N();
                        this.f58743l = N;
                        N.d(c0.N);
                    }
                    long j12 = j10;
                    this.f58735d.d(fVar, this.f58733b, this.f58734c.e(), j10, j11, this.f58736e);
                    if (c0.this.f58723r != null) {
                        this.f58735d.b();
                    }
                    if (this.f58740i) {
                        this.f58735d.a(j12, this.f58741j);
                        this.f58740i = false;
                    }
                    while (true) {
                        long j13 = j12;
                        while (i9 == 0 && !this.f58739h) {
                            try {
                                this.f58737f.a();
                                i9 = this.f58735d.c(this.f58738g);
                                j12 = this.f58735d.e();
                                if (j12 > c0.this.f58715j + j13) {
                                    break;
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                        this.f58737f.c();
                        c0.this.f58721p.post(c0.this.f58720o);
                    }
                    if (i9 == 1) {
                        i9 = 0;
                    } else if (this.f58735d.e() != -1) {
                        this.f58738g.f1463a = this.f58735d.e();
                    }
                    j3.k.a(this.f58734c);
                } catch (Throwable th2) {
                    if (i9 != 1 && this.f58735d.e() != -1) {
                        this.f58738g.f1463a = this.f58735d.e();
                    }
                    j3.k.a(this.f58734c);
                    throw th2;
                }
            }
        }

        @Override // v2.i.a
        public void b(com.google.android.exoplayer2.util.b0 b0Var) {
            long max;
            if (!this.f58744m) {
                max = this.f58741j;
            } else {
                max = Math.max(c0.this.M(true), this.f58741j);
            }
            int a10 = b0Var.a();
            c2.e0 e0Var = (c2.e0) com.google.android.exoplayer2.util.a.e(this.f58743l);
            e0Var.a(b0Var, a10);
            e0Var.c(max, 1, a10, 0, null);
            this.f58744m = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void c() {
            this.f58739h = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        void f(long j10, boolean z10, boolean z11);
    }

    /* loaded from: classes.dex */
    private final class c implements i0 {

        /* renamed from: a  reason: collision with root package name */
        private final int f58746a;

        public c(int i9) {
            this.f58746a = i9;
        }

        @Override // v2.i0
        public void a() throws IOException {
            c0.this.X(this.f58746a);
        }

        @Override // v2.i0
        public int b(l1 l1Var, DecoderInputBuffer decoderInputBuffer, int i9) {
            return c0.this.d0(this.f58746a, l1Var, decoderInputBuffer, i9);
        }

        @Override // v2.i0
        public int c(long j10) {
            return c0.this.h0(this.f58746a, j10);
        }

        @Override // v2.i0
        public boolean isReady() {
            return c0.this.P(this.f58746a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f58748a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f58749b;

        public d(int i9, boolean z10) {
            this.f58748a = i9;
            this.f58749b = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f58748a == dVar.f58748a && this.f58749b == dVar.f58749b;
        }

        public int hashCode() {
            return (this.f58748a * 31) + (this.f58749b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final q0 f58750a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean[] f58751b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f58752c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f58753d;

        public e(q0 q0Var, boolean[] zArr) {
            this.f58750a = q0Var;
            this.f58751b = zArr;
            int i9 = q0Var.f58920a;
            this.f58752c = new boolean[i9];
            this.f58753d = new boolean[i9];
        }
    }

    public c0(Uri uri, j3.i iVar, x xVar, com.google.android.exoplayer2.drm.u uVar, s.a aVar, com.google.android.exoplayer2.upstream.b bVar, w.a aVar2, b bVar2, j3.b bVar3, @Nullable String str, int i9) {
        this.f58706a = uri;
        this.f58707b = iVar;
        this.f58708c = uVar;
        this.f58711f = aVar;
        this.f58709d = bVar;
        this.f58710e = aVar2;
        this.f58712g = bVar2;
        this.f58713h = bVar3;
        this.f58714i = str;
        this.f58715j = i9;
        this.f58717l = xVar;
    }

    private void I() {
        com.google.android.exoplayer2.util.a.f(this.f58727v);
        com.google.android.exoplayer2.util.a.e(this.f58729x);
        com.google.android.exoplayer2.util.a.e(this.f58730y);
    }

    private boolean J(a aVar, int i9) {
        c2.b0 b0Var;
        if (!this.F && ((b0Var = this.f58730y) == null || b0Var.i() == -9223372036854775807L)) {
            if (this.f58727v && !j0()) {
                this.I = true;
                return false;
            }
            this.D = this.f58727v;
            this.G = 0L;
            this.J = 0;
            for (h0 h0Var : this.f58724s) {
                h0Var.N();
            }
            aVar.j(0L, 0L);
            return true;
        }
        this.J = i9;
        return true;
    }

    private static Map<String, String> K() {
        HashMap hashMap = new HashMap();
        hashMap.put(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return Collections.unmodifiableMap(hashMap);
    }

    private int L() {
        int i9 = 0;
        for (h0 h0Var : this.f58724s) {
            i9 += h0Var.A();
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long M(boolean z10) {
        long j10 = Long.MIN_VALUE;
        for (int i9 = 0; i9 < this.f58724s.length; i9++) {
            if (z10 || ((e) com.google.android.exoplayer2.util.a.e(this.f58729x)).f58752c[i9]) {
                j10 = Math.max(j10, this.f58724s[i9].t());
            }
        }
        return j10;
    }

    private boolean O() {
        return this.H != -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q() {
        if (this.L) {
            return;
        }
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f58722q)).a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        this.F = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        Metadata a10;
        if (this.L || this.f58727v || !this.f58726u || this.f58730y == null) {
            return;
        }
        for (h0 h0Var : this.f58724s) {
            if (h0Var.z() == null) {
                return;
            }
        }
        this.f58718m.c();
        int length = this.f58724s.length;
        o0[] o0VarArr = new o0[length];
        boolean[] zArr = new boolean[length];
        for (int i9 = 0; i9 < length; i9++) {
            k1 k1Var = (k1) com.google.android.exoplayer2.util.a.e(this.f58724s[i9].z());
            String str = k1Var.f6111l;
            boolean l10 = com.google.android.exoplayer2.util.v.l(str);
            boolean z10 = l10 || com.google.android.exoplayer2.util.v.o(str);
            zArr[i9] = z10;
            this.f58728w = z10 | this.f58728w;
            IcyHeaders icyHeaders = this.f58723r;
            if (icyHeaders != null) {
                if (l10 || this.f58725t[i9].f58749b) {
                    Metadata metadata = k1Var.f6109j;
                    if (metadata == null) {
                        a10 = new Metadata(icyHeaders);
                    } else {
                        a10 = metadata.a(icyHeaders);
                    }
                    k1Var = k1Var.b().X(a10).E();
                }
                if (l10 && k1Var.f6105f == -1 && k1Var.f6106g == -1 && icyHeaders.bitrate != -1) {
                    k1Var = k1Var.b().G(icyHeaders.bitrate).E();
                }
            }
            o0VarArr[i9] = new o0(Integer.toString(i9), k1Var.c(this.f58708c.a(k1Var)));
        }
        this.f58729x = new e(new q0(o0VarArr), zArr);
        this.f58727v = true;
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f58722q)).d(this);
    }

    private void U(int i9) {
        I();
        e eVar = this.f58729x;
        boolean[] zArr = eVar.f58753d;
        if (zArr[i9]) {
            return;
        }
        k1 b10 = eVar.f58750a.b(i9).b(0);
        this.f58710e.h(com.google.android.exoplayer2.util.v.i(b10.f6111l), b10, 0, null, this.G);
        zArr[i9] = true;
    }

    private void V(int i9) {
        I();
        boolean[] zArr = this.f58729x.f58751b;
        if (this.I && zArr[i9]) {
            if (this.f58724s[i9].D(false)) {
                return;
            }
            this.H = 0L;
            this.I = false;
            this.D = true;
            this.G = 0L;
            this.J = 0;
            for (h0 h0Var : this.f58724s) {
                h0Var.N();
            }
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f58722q)).a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        this.f58721p.post(new Runnable() { // from class: v2.z
            @Override // java.lang.Runnable
            public final void run() {
                c0.this.R();
            }
        });
    }

    private c2.e0 c0(d dVar) {
        int length = this.f58724s.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (dVar.equals(this.f58725t[i9])) {
                return this.f58724s[i9];
            }
        }
        h0 k10 = h0.k(this.f58713h, this.f58708c, this.f58711f);
        k10.T(this);
        int i10 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.f58725t, i10);
        dVarArr[length] = dVar;
        this.f58725t = (d[]) com.google.android.exoplayer2.util.l0.k(dVarArr);
        h0[] h0VarArr = (h0[]) Arrays.copyOf(this.f58724s, i10);
        h0VarArr[length] = k10;
        this.f58724s = (h0[]) com.google.android.exoplayer2.util.l0.k(h0VarArr);
        return k10;
    }

    private boolean f0(boolean[] zArr, long j10) {
        int length = this.f58724s.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (!this.f58724s[i9].Q(j10, false) && (zArr[i9] || !this.f58728w)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public void S(c2.b0 b0Var) {
        this.f58730y = this.f58723r == null ? b0Var : new b0.b(-9223372036854775807L);
        this.f58731z = b0Var.i();
        boolean z10 = !this.F && b0Var.i() == -9223372036854775807L;
        this.A = z10;
        this.B = z10 ? 7 : 1;
        this.f58712g.f(this.f58731z, b0Var.e(), this.A);
        if (this.f58727v) {
            return;
        }
        T();
    }

    private void i0() {
        a aVar = new a(this.f58706a, this.f58707b, this.f58717l, this, this.f58718m);
        if (this.f58727v) {
            com.google.android.exoplayer2.util.a.f(O());
            long j10 = this.f58731z;
            if (j10 != -9223372036854775807L && this.H > j10) {
                this.K = true;
                this.H = -9223372036854775807L;
                return;
            }
            aVar.j(((c2.b0) com.google.android.exoplayer2.util.a.e(this.f58730y)).c(this.H).f1464a.f1470b, this.H);
            for (h0 h0Var : this.f58724s) {
                h0Var.R(this.H);
            }
            this.H = -9223372036854775807L;
        }
        this.J = L();
        this.f58710e.u(new j(aVar.f58732a, aVar.f58742k, this.f58716k.l(aVar, this, this.f58709d.b(this.B))), 1, -1, null, 0, null, aVar.f58741j, this.f58731z);
    }

    private boolean j0() {
        return this.D || O();
    }

    c2.e0 N() {
        return c0(new d(0, true));
    }

    boolean P(int i9) {
        return !j0() && this.f58724s[i9].D(this.K);
    }

    void W() throws IOException {
        this.f58716k.j(this.f58709d.b(this.B));
    }

    void X(int i9) throws IOException {
        this.f58724s[i9].G();
        W();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: Z */
    public void a(a aVar, long j10, long j11, boolean z10) {
        j3.a0 a0Var = aVar.f58734c;
        j jVar = new j(aVar.f58732a, aVar.f58742k, a0Var.o(), a0Var.p(), j10, j11, a0Var.n());
        this.f58709d.c(aVar.f58732a);
        this.f58710e.o(jVar, 1, -1, null, 0, null, aVar.f58741j, this.f58731z);
        if (z10) {
            return;
        }
        for (h0 h0Var : this.f58724s) {
            h0Var.N();
        }
        if (this.E > 0) {
            ((n.a) com.google.android.exoplayer2.util.a.e(this.f58722q)).a(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: a0 */
    public void d(a aVar, long j10, long j11) {
        c2.b0 b0Var;
        if (this.f58731z == -9223372036854775807L && (b0Var = this.f58730y) != null) {
            boolean e10 = b0Var.e();
            long M2 = M(true);
            long j12 = M2 == Long.MIN_VALUE ? 0L : M2 + 10000;
            this.f58731z = j12;
            this.f58712g.f(j12, e10, this.A);
        }
        j3.a0 a0Var = aVar.f58734c;
        j jVar = new j(aVar.f58732a, aVar.f58742k, a0Var.o(), a0Var.p(), j10, j11, a0Var.n());
        this.f58709d.c(aVar.f58732a);
        this.f58710e.q(jVar, 1, -1, null, 0, null, aVar.f58741j, this.f58731z);
        this.K = true;
        ((n.a) com.google.android.exoplayer2.util.a.e(this.f58722q)).a(this);
    }

    @Override // v2.n
    public long b() {
        return r();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.b
    /* renamed from: b0 */
    public Loader.c i(a aVar, long j10, long j11, IOException iOException, int i9) {
        boolean z10;
        a aVar2;
        Loader.c cVar;
        j3.a0 a0Var = aVar.f58734c;
        j jVar = new j(aVar.f58732a, aVar.f58742k, a0Var.o(), a0Var.p(), j10, j11, a0Var.n());
        long a10 = this.f58709d.a(new b.a(jVar, new m(1, -1, null, 0, null, com.google.android.exoplayer2.util.l0.P0(aVar.f58741j), com.google.android.exoplayer2.util.l0.P0(this.f58731z)), iOException, i9));
        if (a10 == -9223372036854775807L) {
            cVar = Loader.f6885g;
        } else {
            int L = L();
            if (L > this.J) {
                aVar2 = aVar;
                z10 = true;
            } else {
                z10 = false;
                aVar2 = aVar;
            }
            if (J(aVar2, L)) {
                cVar = Loader.g(z10, a10);
            } else {
                cVar = Loader.f6884f;
            }
        }
        boolean z11 = !cVar.c();
        this.f58710e.s(jVar, 1, -1, null, 0, null, aVar.f58741j, this.f58731z, iOException, z11);
        if (z11) {
            this.f58709d.c(aVar.f58732a);
        }
        return cVar;
    }

    @Override // v2.h0.d
    public void c(k1 k1Var) {
        this.f58721p.post(this.f58719n);
    }

    int d0(int i9, l1 l1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        if (j0()) {
            return -3;
        }
        U(i9);
        int K = this.f58724s[i9].K(l1Var, decoderInputBuffer, i10, this.K);
        if (K == -3) {
            V(i9);
        }
        return K;
    }

    @Override // v2.n
    public long e(long j10) {
        I();
        boolean[] zArr = this.f58729x.f58751b;
        if (!this.f58730y.e()) {
            j10 = 0;
        }
        int i9 = 0;
        this.D = false;
        this.G = j10;
        if (O()) {
            this.H = j10;
            return j10;
        } else if (this.B == 7 || !f0(zArr, j10)) {
            this.I = false;
            this.H = j10;
            this.K = false;
            if (this.f58716k.i()) {
                h0[] h0VarArr = this.f58724s;
                int length = h0VarArr.length;
                while (i9 < length) {
                    h0VarArr[i9].p();
                    i9++;
                }
                this.f58716k.e();
            } else {
                this.f58716k.f();
                h0[] h0VarArr2 = this.f58724s;
                int length2 = h0VarArr2.length;
                while (i9 < length2) {
                    h0VarArr2[i9].N();
                    i9++;
                }
            }
            return j10;
        } else {
            return j10;
        }
    }

    public void e0() {
        if (this.f58727v) {
            for (h0 h0Var : this.f58724s) {
                h0Var.J();
            }
        }
        this.f58716k.k(this);
        this.f58721p.removeCallbacksAndMessages(null);
        this.f58722q = null;
        this.L = true;
    }

    @Override // v2.n
    public long f(long j10, z2 z2Var) {
        I();
        if (this.f58730y.e()) {
            b0.a c10 = this.f58730y.c(j10);
            return z2Var.a(j10, c10.f1464a.f1469a, c10.f1465b.f1469a);
        }
        return 0L;
    }

    @Override // v2.n
    public long g(h3.s[] sVarArr, boolean[] zArr, i0[] i0VarArr, boolean[] zArr2, long j10) {
        I();
        e eVar = this.f58729x;
        q0 q0Var = eVar.f58750a;
        boolean[] zArr3 = eVar.f58752c;
        int i9 = this.E;
        int i10 = 0;
        for (int i11 = 0; i11 < sVarArr.length; i11++) {
            if (i0VarArr[i11] != null && (sVarArr[i11] == null || !zArr[i11])) {
                int i12 = ((c) i0VarArr[i11]).f58746a;
                com.google.android.exoplayer2.util.a.f(zArr3[i12]);
                this.E--;
                zArr3[i12] = false;
                i0VarArr[i11] = null;
            }
        }
        boolean z10 = !this.C ? j10 == 0 : i9 != 0;
        for (int i13 = 0; i13 < sVarArr.length; i13++) {
            if (i0VarArr[i13] == null && sVarArr[i13] != null) {
                h3.s sVar = sVarArr[i13];
                com.google.android.exoplayer2.util.a.f(sVar.length() == 1);
                com.google.android.exoplayer2.util.a.f(sVar.c(0) == 0);
                int c10 = q0Var.c(sVar.h());
                com.google.android.exoplayer2.util.a.f(!zArr3[c10]);
                this.E++;
                zArr3[c10] = true;
                i0VarArr[i13] = new c(c10);
                zArr2[i13] = true;
                if (!z10) {
                    h0 h0Var = this.f58724s[c10];
                    z10 = (h0Var.Q(j10, true) || h0Var.w() == 0) ? false : true;
                }
            }
        }
        if (this.E == 0) {
            this.I = false;
            this.D = false;
            if (this.f58716k.i()) {
                h0[] h0VarArr = this.f58724s;
                int length = h0VarArr.length;
                while (i10 < length) {
                    h0VarArr[i10].p();
                    i10++;
                }
                this.f58716k.e();
            } else {
                h0[] h0VarArr2 = this.f58724s;
                int length2 = h0VarArr2.length;
                while (i10 < length2) {
                    h0VarArr2[i10].N();
                    i10++;
                }
            }
        } else if (z10) {
            j10 = e(j10);
            while (i10 < i0VarArr.length) {
                if (i0VarArr[i10] != null) {
                    zArr2[i10] = true;
                }
                i10++;
            }
        }
        this.C = true;
        return j10;
    }

    @Override // v2.n
    public long h() {
        if (this.D) {
            if (this.K || L() > this.J) {
                this.D = false;
                return this.G;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    int h0(int i9, long j10) {
        if (j0()) {
            return 0;
        }
        U(i9);
        h0 h0Var = this.f58724s[i9];
        int y10 = h0Var.y(j10, this.K);
        h0Var.U(y10);
        if (y10 == 0) {
            V(i9);
        }
        return y10;
    }

    @Override // v2.n
    public boolean isLoading() {
        return this.f58716k.i() && this.f58718m.d();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.f
    public void j() {
        for (h0 h0Var : this.f58724s) {
            h0Var.L();
        }
        this.f58717l.release();
    }

    @Override // v2.n
    public void k(n.a aVar, long j10) {
        this.f58722q = aVar;
        this.f58718m.e();
        i0();
    }

    @Override // c2.n
    public void l(final c2.b0 b0Var) {
        this.f58721p.post(new Runnable() { // from class: v2.b0
            @Override // java.lang.Runnable
            public final void run() {
                c0.this.S(b0Var);
            }
        });
    }

    @Override // v2.n
    public void m() throws IOException {
        W();
        if (this.K && !this.f58727v) {
            throw ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override // v2.n
    public boolean n(long j10) {
        if (this.K || this.f58716k.h() || this.I) {
            return false;
        }
        if (this.f58727v && this.E == 0) {
            return false;
        }
        boolean e10 = this.f58718m.e();
        if (this.f58716k.i()) {
            return e10;
        }
        i0();
        return true;
    }

    @Override // c2.n
    public void o() {
        this.f58726u = true;
        this.f58721p.post(this.f58719n);
    }

    @Override // v2.n
    public q0 p() {
        I();
        return this.f58729x.f58750a;
    }

    @Override // c2.n
    public c2.e0 q(int i9, int i10) {
        return c0(new d(i9, false));
    }

    @Override // v2.n
    public long r() {
        long j10;
        I();
        if (this.K || this.E == 0) {
            return Long.MIN_VALUE;
        }
        if (O()) {
            return this.H;
        }
        if (this.f58728w) {
            int length = this.f58724s.length;
            j10 = Long.MAX_VALUE;
            for (int i9 = 0; i9 < length; i9++) {
                e eVar = this.f58729x;
                if (eVar.f58751b[i9] && eVar.f58752c[i9] && !this.f58724s[i9].C()) {
                    j10 = Math.min(j10, this.f58724s[i9].t());
                }
            }
        } else {
            j10 = Long.MAX_VALUE;
        }
        if (j10 == Long.MAX_VALUE) {
            j10 = M(false);
        }
        return j10 == Long.MIN_VALUE ? this.G : j10;
    }

    @Override // v2.n
    public void s(long j10, boolean z10) {
        I();
        if (O()) {
            return;
        }
        boolean[] zArr = this.f58729x.f58752c;
        int length = this.f58724s.length;
        for (int i9 = 0; i9 < length; i9++) {
            this.f58724s[i9].o(j10, z10, zArr[i9]);
        }
    }

    @Override // v2.n
    public void t(long j10) {
    }
}
