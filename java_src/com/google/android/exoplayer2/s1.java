package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.s1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes.dex */
public final class s1 implements com.google.android.exoplayer2.h {

    /* renamed from: i  reason: collision with root package name */
    public static final s1 f6450i = new c().a();

    /* renamed from: j  reason: collision with root package name */
    public static final h.a<s1> f6451j = new h.a() { // from class: com.google.android.exoplayer2.r1
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            s1 c10;
            c10 = s1.c(bundle);
            return c10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f6452a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final h f6453b;
    @Nullable
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public final i f6454c;

    /* renamed from: d  reason: collision with root package name */
    public final g f6455d;

    /* renamed from: e  reason: collision with root package name */
    public final x1 f6456e;

    /* renamed from: f  reason: collision with root package name */
    public final d f6457f;
    @Deprecated

    /* renamed from: g  reason: collision with root package name */
    public final e f6458g;

    /* renamed from: h  reason: collision with root package name */
    public final j f6459h;

    /* loaded from: classes.dex */
    public static final class b {
    }

    /* loaded from: classes.dex */
    public static final class c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f6460a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Uri f6461b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f6462c;

        /* renamed from: d  reason: collision with root package name */
        private d.a f6463d;

        /* renamed from: e  reason: collision with root package name */
        private f.a f6464e;

        /* renamed from: f  reason: collision with root package name */
        private List<StreamKey> f6465f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f6466g;

        /* renamed from: h  reason: collision with root package name */
        private ImmutableList<l> f6467h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private Object f6468i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private x1 f6469j;

        /* renamed from: k  reason: collision with root package name */
        private g.a f6470k;

        /* renamed from: l  reason: collision with root package name */
        private j f6471l;

        public s1 a() {
            i iVar;
            com.google.android.exoplayer2.util.a.f(this.f6464e.f6497b == null || this.f6464e.f6496a != null);
            Uri uri = this.f6461b;
            if (uri != null) {
                iVar = new i(uri, this.f6462c, this.f6464e.f6496a != null ? this.f6464e.i() : null, null, this.f6465f, this.f6466g, this.f6467h, this.f6468i);
            } else {
                iVar = null;
            }
            String str = this.f6460a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            e g10 = this.f6463d.g();
            g f10 = this.f6470k.f();
            x1 x1Var = this.f6469j;
            if (x1Var == null) {
                x1Var = x1.G;
            }
            return new s1(str2, g10, iVar, f10, x1Var, this.f6471l);
        }

        public c b(@Nullable String str) {
            this.f6466g = str;
            return this;
        }

        public c c(String str) {
            this.f6460a = (String) com.google.android.exoplayer2.util.a.e(str);
            return this;
        }

        public c d(@Nullable Object obj) {
            this.f6468i = obj;
            return this;
        }

        public c e(@Nullable Uri uri) {
            this.f6461b = uri;
            return this;
        }

        public c() {
            this.f6463d = new d.a();
            this.f6464e = new f.a();
            this.f6465f = Collections.emptyList();
            this.f6467h = ImmutableList.of();
            this.f6470k = new g.a();
            this.f6471l = j.f6524d;
        }

        private c(s1 s1Var) {
            this();
            f.a aVar;
            this.f6463d = s1Var.f6457f.b();
            this.f6460a = s1Var.f6452a;
            this.f6469j = s1Var.f6456e;
            this.f6470k = s1Var.f6455d.b();
            this.f6471l = s1Var.f6459h;
            h hVar = s1Var.f6453b;
            if (hVar != null) {
                this.f6466g = hVar.f6520e;
                this.f6462c = hVar.f6517b;
                this.f6461b = hVar.f6516a;
                this.f6465f = hVar.f6519d;
                this.f6467h = hVar.f6521f;
                this.f6468i = hVar.f6523h;
                f fVar = hVar.f6518c;
                if (fVar != null) {
                    aVar = fVar.b();
                } else {
                    aVar = new f.a();
                }
                this.f6464e = aVar;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class d implements com.google.android.exoplayer2.h {

        /* renamed from: f  reason: collision with root package name */
        public static final d f6472f = new a().f();

        /* renamed from: g  reason: collision with root package name */
        public static final h.a<e> f6473g = new h.a() { // from class: com.google.android.exoplayer2.t1
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                s1.e d10;
                d10 = s1.d.d(bundle);
                return d10;
            }
        };
        @IntRange(from = 0)

        /* renamed from: a  reason: collision with root package name */
        public final long f6474a;

        /* renamed from: b  reason: collision with root package name */
        public final long f6475b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f6476c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f6477d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f6478e;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private long f6479a;

            /* renamed from: b  reason: collision with root package name */
            private long f6480b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f6481c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f6482d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f6483e;

            public d f() {
                return g();
            }

            @Deprecated
            public e g() {
                return new e(this);
            }

            public a h(long j10) {
                com.google.android.exoplayer2.util.a.a(j10 == Long.MIN_VALUE || j10 >= 0);
                this.f6480b = j10;
                return this;
            }

            public a i(boolean z10) {
                this.f6482d = z10;
                return this;
            }

            public a j(boolean z10) {
                this.f6481c = z10;
                return this;
            }

            public a k(@IntRange(from = 0) long j10) {
                com.google.android.exoplayer2.util.a.a(j10 >= 0);
                this.f6479a = j10;
                return this;
            }

            public a l(boolean z10) {
                this.f6483e = z10;
                return this;
            }

            public a() {
                this.f6480b = Long.MIN_VALUE;
            }

            private a(d dVar) {
                this.f6479a = dVar.f6474a;
                this.f6480b = dVar.f6475b;
                this.f6481c = dVar.f6476c;
                this.f6482d = dVar.f6477d;
                this.f6483e = dVar.f6478e;
            }
        }

        private static String c(int i9) {
            return Integer.toString(i9, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e d(Bundle bundle) {
            return new a().k(bundle.getLong(c(0), 0L)).h(bundle.getLong(c(1), Long.MIN_VALUE)).j(bundle.getBoolean(c(2), false)).i(bundle.getBoolean(c(3), false)).l(bundle.getBoolean(c(4), false)).g();
        }

        public a b() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof d) {
                d dVar = (d) obj;
                return this.f6474a == dVar.f6474a && this.f6475b == dVar.f6475b && this.f6476c == dVar.f6476c && this.f6477d == dVar.f6477d && this.f6478e == dVar.f6478e;
            }
            return false;
        }

        public int hashCode() {
            long j10 = this.f6474a;
            long j11 = this.f6475b;
            return (((((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f6476c ? 1 : 0)) * 31) + (this.f6477d ? 1 : 0)) * 31) + (this.f6478e ? 1 : 0);
        }

        private d(a aVar) {
            this.f6474a = aVar.f6479a;
            this.f6475b = aVar.f6480b;
            this.f6476c = aVar.f6481c;
            this.f6477d = aVar.f6482d;
            this.f6478e = aVar.f6483e;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static final class e extends d {

        /* renamed from: h  reason: collision with root package name */
        public static final e f6484h = new d.a().g();

        private e(d.a aVar) {
            super(aVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f6485a;
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public final UUID f6486b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Uri f6487c;
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        public final ImmutableMap<String, String> f6488d;

        /* renamed from: e  reason: collision with root package name */
        public final ImmutableMap<String, String> f6489e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f6490f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f6491g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f6492h;
        @Deprecated

        /* renamed from: i  reason: collision with root package name */
        public final ImmutableList<Integer> f6493i;

        /* renamed from: j  reason: collision with root package name */
        public final ImmutableList<Integer> f6494j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private final byte[] f6495k;

        public a b() {
            return new a();
        }

        @Nullable
        public byte[] c() {
            byte[] bArr = this.f6495k;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof f) {
                f fVar = (f) obj;
                return this.f6485a.equals(fVar.f6485a) && com.google.android.exoplayer2.util.l0.c(this.f6487c, fVar.f6487c) && com.google.android.exoplayer2.util.l0.c(this.f6489e, fVar.f6489e) && this.f6490f == fVar.f6490f && this.f6492h == fVar.f6492h && this.f6491g == fVar.f6491g && this.f6494j.equals(fVar.f6494j) && Arrays.equals(this.f6495k, fVar.f6495k);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f6485a.hashCode() * 31;
            Uri uri = this.f6487c;
            return ((((((((((((hashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.f6489e.hashCode()) * 31) + (this.f6490f ? 1 : 0)) * 31) + (this.f6492h ? 1 : 0)) * 31) + (this.f6491g ? 1 : 0)) * 31) + this.f6494j.hashCode()) * 31) + Arrays.hashCode(this.f6495k);
        }

        /* loaded from: classes.dex */
        public static final class a {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private UUID f6496a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private Uri f6497b;

            /* renamed from: c  reason: collision with root package name */
            private ImmutableMap<String, String> f6498c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f6499d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f6500e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f6501f;

            /* renamed from: g  reason: collision with root package name */
            private ImmutableList<Integer> f6502g;
            @Nullable

            /* renamed from: h  reason: collision with root package name */
            private byte[] f6503h;

            public f i() {
                return new f(this);
            }

            @Deprecated
            private a() {
                this.f6498c = ImmutableMap.of();
                this.f6502g = ImmutableList.of();
            }

            private a(f fVar) {
                this.f6496a = fVar.f6485a;
                this.f6497b = fVar.f6487c;
                this.f6498c = fVar.f6489e;
                this.f6499d = fVar.f6490f;
                this.f6500e = fVar.f6491g;
                this.f6501f = fVar.f6492h;
                this.f6502g = fVar.f6494j;
                this.f6503h = fVar.f6495k;
            }
        }

        private f(a aVar) {
            com.google.android.exoplayer2.util.a.f((aVar.f6501f && aVar.f6497b == null) ? false : true);
            UUID uuid = (UUID) com.google.android.exoplayer2.util.a.e(aVar.f6496a);
            this.f6485a = uuid;
            this.f6486b = uuid;
            this.f6487c = aVar.f6497b;
            this.f6488d = aVar.f6498c;
            this.f6489e = aVar.f6498c;
            this.f6490f = aVar.f6499d;
            this.f6492h = aVar.f6501f;
            this.f6491g = aVar.f6500e;
            this.f6493i = aVar.f6502g;
            this.f6494j = aVar.f6502g;
            this.f6495k = aVar.f6503h != null ? Arrays.copyOf(aVar.f6503h, aVar.f6503h.length) : null;
        }
    }

    /* loaded from: classes.dex */
    public static final class g implements com.google.android.exoplayer2.h {

        /* renamed from: f  reason: collision with root package name */
        public static final g f6504f = new a().f();

        /* renamed from: g  reason: collision with root package name */
        public static final h.a<g> f6505g = new h.a() { // from class: com.google.android.exoplayer2.u1
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                s1.g d10;
                d10 = s1.g.d(bundle);
                return d10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f6506a;

        /* renamed from: b  reason: collision with root package name */
        public final long f6507b;

        /* renamed from: c  reason: collision with root package name */
        public final long f6508c;

        /* renamed from: d  reason: collision with root package name */
        public final float f6509d;

        /* renamed from: e  reason: collision with root package name */
        public final float f6510e;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private long f6511a;

            /* renamed from: b  reason: collision with root package name */
            private long f6512b;

            /* renamed from: c  reason: collision with root package name */
            private long f6513c;

            /* renamed from: d  reason: collision with root package name */
            private float f6514d;

            /* renamed from: e  reason: collision with root package name */
            private float f6515e;

            public g f() {
                return new g(this);
            }

            public a() {
                this.f6511a = -9223372036854775807L;
                this.f6512b = -9223372036854775807L;
                this.f6513c = -9223372036854775807L;
                this.f6514d = -3.4028235E38f;
                this.f6515e = -3.4028235E38f;
            }

            private a(g gVar) {
                this.f6511a = gVar.f6506a;
                this.f6512b = gVar.f6507b;
                this.f6513c = gVar.f6508c;
                this.f6514d = gVar.f6509d;
                this.f6515e = gVar.f6510e;
            }
        }

        private static String c(int i9) {
            return Integer.toString(i9, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ g d(Bundle bundle) {
            return new g(bundle.getLong(c(0), -9223372036854775807L), bundle.getLong(c(1), -9223372036854775807L), bundle.getLong(c(2), -9223372036854775807L), bundle.getFloat(c(3), -3.4028235E38f), bundle.getFloat(c(4), -3.4028235E38f));
        }

        public a b() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof g) {
                g gVar = (g) obj;
                return this.f6506a == gVar.f6506a && this.f6507b == gVar.f6507b && this.f6508c == gVar.f6508c && this.f6509d == gVar.f6509d && this.f6510e == gVar.f6510e;
            }
            return false;
        }

        public int hashCode() {
            long j10 = this.f6506a;
            long j11 = this.f6507b;
            long j12 = this.f6508c;
            int i9 = ((((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31;
            float f10 = this.f6509d;
            int floatToIntBits = (i9 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
            float f11 = this.f6510e;
            return floatToIntBits + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0);
        }

        private g(a aVar) {
            this(aVar.f6511a, aVar.f6512b, aVar.f6513c, aVar.f6514d, aVar.f6515e);
        }

        @Deprecated
        public g(long j10, long j11, long j12, float f10, float f11) {
            this.f6506a = j10;
            this.f6507b = j11;
            this.f6508c = j12;
            this.f6509d = f10;
            this.f6510e = f11;
        }
    }

    /* loaded from: classes.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f6516a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f6517b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final f f6518c;

        /* renamed from: d  reason: collision with root package name */
        public final List<StreamKey> f6519d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final String f6520e;

        /* renamed from: f  reason: collision with root package name */
        public final ImmutableList<l> f6521f;
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        public final List<k> f6522g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final Object f6523h;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof h) {
                h hVar = (h) obj;
                return this.f6516a.equals(hVar.f6516a) && com.google.android.exoplayer2.util.l0.c(this.f6517b, hVar.f6517b) && com.google.android.exoplayer2.util.l0.c(this.f6518c, hVar.f6518c) && com.google.android.exoplayer2.util.l0.c(null, null) && this.f6519d.equals(hVar.f6519d) && com.google.android.exoplayer2.util.l0.c(this.f6520e, hVar.f6520e) && this.f6521f.equals(hVar.f6521f) && com.google.android.exoplayer2.util.l0.c(this.f6523h, hVar.f6523h);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f6516a.hashCode() * 31;
            String str = this.f6517b;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            f fVar = this.f6518c;
            int hashCode3 = (((((hashCode2 + (fVar == null ? 0 : fVar.hashCode())) * 31) + 0) * 31) + this.f6519d.hashCode()) * 31;
            String str2 = this.f6520e;
            int hashCode4 = (((hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f6521f.hashCode()) * 31;
            Object obj = this.f6523h;
            return hashCode4 + (obj != null ? obj.hashCode() : 0);
        }

        private h(Uri uri, @Nullable String str, @Nullable f fVar, @Nullable b bVar, List<StreamKey> list, @Nullable String str2, ImmutableList<l> immutableList, @Nullable Object obj) {
            this.f6516a = uri;
            this.f6517b = str;
            this.f6518c = fVar;
            this.f6519d = list;
            this.f6520e = str2;
            this.f6521f = immutableList;
            ImmutableList.b builder = ImmutableList.builder();
            for (int i9 = 0; i9 < immutableList.size(); i9++) {
                builder.a(immutableList.get(i9).a().i());
            }
            this.f6522g = builder.j();
            this.f6523h = obj;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static final class i extends h {
        private i(Uri uri, @Nullable String str, @Nullable f fVar, @Nullable b bVar, List<StreamKey> list, @Nullable String str2, ImmutableList<l> immutableList, @Nullable Object obj) {
            super(uri, str, fVar, bVar, list, str2, immutableList, obj);
        }
    }

    /* loaded from: classes.dex */
    public static final class j implements com.google.android.exoplayer2.h {

        /* renamed from: d  reason: collision with root package name */
        public static final j f6524d = new a().d();

        /* renamed from: e  reason: collision with root package name */
        public static final h.a<j> f6525e = new h.a() { // from class: com.google.android.exoplayer2.v1
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                s1.j c10;
                c10 = s1.j.c(bundle);
                return c10;
            }
        };
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Uri f6526a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f6527b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Bundle f6528c;

        /* loaded from: classes.dex */
        public static final class a {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private Uri f6529a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private String f6530b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private Bundle f6531c;

            public j d() {
                return new j(this);
            }

            public a e(@Nullable Bundle bundle) {
                this.f6531c = bundle;
                return this;
            }

            public a f(@Nullable Uri uri) {
                this.f6529a = uri;
                return this;
            }

            public a g(@Nullable String str) {
                this.f6530b = str;
                return this;
            }
        }

        private static String b(int i9) {
            return Integer.toString(i9, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ j c(Bundle bundle) {
            return new a().f((Uri) bundle.getParcelable(b(0))).g(bundle.getString(b(1))).e(bundle.getBundle(b(2))).d();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof j) {
                j jVar = (j) obj;
                return com.google.android.exoplayer2.util.l0.c(this.f6526a, jVar.f6526a) && com.google.android.exoplayer2.util.l0.c(this.f6527b, jVar.f6527b);
            }
            return false;
        }

        public int hashCode() {
            Uri uri = this.f6526a;
            int hashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.f6527b;
            return hashCode + (str != null ? str.hashCode() : 0);
        }

        private j(a aVar) {
            this.f6526a = aVar.f6529a;
            this.f6527b = aVar.f6530b;
            this.f6528c = aVar.f6531c;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static final class k extends l {
        private k(l.a aVar) {
            super(aVar);
        }
    }

    /* loaded from: classes.dex */
    public static class l {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f6532a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f6533b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f6534c;

        /* renamed from: d  reason: collision with root package name */
        public final int f6535d;

        /* renamed from: e  reason: collision with root package name */
        public final int f6536e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final String f6537f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public final String f6538g;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private Uri f6539a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private String f6540b;
            @Nullable

            /* renamed from: c  reason: collision with root package name */
            private String f6541c;

            /* renamed from: d  reason: collision with root package name */
            private int f6542d;

            /* renamed from: e  reason: collision with root package name */
            private int f6543e;
            @Nullable

            /* renamed from: f  reason: collision with root package name */
            private String f6544f;
            @Nullable

            /* renamed from: g  reason: collision with root package name */
            private String f6545g;

            /* JADX INFO: Access modifiers changed from: private */
            public k i() {
                return new k(this);
            }

            private a(l lVar) {
                this.f6539a = lVar.f6532a;
                this.f6540b = lVar.f6533b;
                this.f6541c = lVar.f6534c;
                this.f6542d = lVar.f6535d;
                this.f6543e = lVar.f6536e;
                this.f6544f = lVar.f6537f;
                this.f6545g = lVar.f6538g;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof l) {
                l lVar = (l) obj;
                return this.f6532a.equals(lVar.f6532a) && com.google.android.exoplayer2.util.l0.c(this.f6533b, lVar.f6533b) && com.google.android.exoplayer2.util.l0.c(this.f6534c, lVar.f6534c) && this.f6535d == lVar.f6535d && this.f6536e == lVar.f6536e && com.google.android.exoplayer2.util.l0.c(this.f6537f, lVar.f6537f) && com.google.android.exoplayer2.util.l0.c(this.f6538g, lVar.f6538g);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = this.f6532a.hashCode() * 31;
            String str = this.f6533b;
            int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f6534c;
            int hashCode3 = (((((hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f6535d) * 31) + this.f6536e) * 31;
            String str3 = this.f6537f;
            int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f6538g;
            return hashCode4 + (str4 != null ? str4.hashCode() : 0);
        }

        private l(a aVar) {
            this.f6532a = aVar.f6539a;
            this.f6533b = aVar.f6540b;
            this.f6534c = aVar.f6541c;
            this.f6535d = aVar.f6542d;
            this.f6536e = aVar.f6543e;
            this.f6537f = aVar.f6544f;
            this.f6538g = aVar.f6545g;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static s1 c(Bundle bundle) {
        g a10;
        x1 a11;
        e a12;
        j a13;
        String str = (String) com.google.android.exoplayer2.util.a.e(bundle.getString(e(0), ""));
        Bundle bundle2 = bundle.getBundle(e(1));
        if (bundle2 == null) {
            a10 = g.f6504f;
        } else {
            a10 = g.f6505g.a(bundle2);
        }
        g gVar = a10;
        Bundle bundle3 = bundle.getBundle(e(2));
        if (bundle3 == null) {
            a11 = x1.G;
        } else {
            a11 = x1.H.a(bundle3);
        }
        x1 x1Var = a11;
        Bundle bundle4 = bundle.getBundle(e(3));
        if (bundle4 == null) {
            a12 = e.f6484h;
        } else {
            a12 = d.f6473g.a(bundle4);
        }
        e eVar = a12;
        Bundle bundle5 = bundle.getBundle(e(4));
        if (bundle5 == null) {
            a13 = j.f6524d;
        } else {
            a13 = j.f6525e.a(bundle5);
        }
        return new s1(str, eVar, null, gVar, x1Var, a13);
    }

    public static s1 d(Uri uri) {
        return new c().e(uri).a();
    }

    private static String e(int i9) {
        return Integer.toString(i9, 36);
    }

    public c b() {
        return new c();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof s1) {
            s1 s1Var = (s1) obj;
            return com.google.android.exoplayer2.util.l0.c(this.f6452a, s1Var.f6452a) && this.f6457f.equals(s1Var.f6457f) && com.google.android.exoplayer2.util.l0.c(this.f6453b, s1Var.f6453b) && com.google.android.exoplayer2.util.l0.c(this.f6455d, s1Var.f6455d) && com.google.android.exoplayer2.util.l0.c(this.f6456e, s1Var.f6456e) && com.google.android.exoplayer2.util.l0.c(this.f6459h, s1Var.f6459h);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f6452a.hashCode() * 31;
        h hVar = this.f6453b;
        return ((((((((hashCode + (hVar != null ? hVar.hashCode() : 0)) * 31) + this.f6455d.hashCode()) * 31) + this.f6457f.hashCode()) * 31) + this.f6456e.hashCode()) * 31) + this.f6459h.hashCode();
    }

    private s1(String str, e eVar, @Nullable i iVar, g gVar, x1 x1Var, j jVar) {
        this.f6452a = str;
        this.f6453b = iVar;
        this.f6454c = iVar;
        this.f6455d = gVar;
        this.f6456e = x1Var;
        this.f6457f = eVar;
        this.f6458g = eVar;
        this.f6459h = jVar;
    }
}
