package eh;

import com.google.common.collect.ImmutableList;
import eh.j0;
import eh.p2;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
final class h0 extends p2.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f38766a;

    /* renamed from: b  reason: collision with root package name */
    private final p2.c.b f38767b;

    /* renamed from: c  reason: collision with root package name */
    private final p2.c.EnumC0404c f38768c;

    /* renamed from: d  reason: collision with root package name */
    private final long f38769d;

    /* renamed from: e  reason: collision with root package name */
    private final long f38770e;

    /* renamed from: f  reason: collision with root package name */
    private final int f38771f;

    /* renamed from: g  reason: collision with root package name */
    private final String f38772g;

    /* renamed from: h  reason: collision with root package name */
    private final String f38773h;

    /* renamed from: i  reason: collision with root package name */
    private final j0.d f38774i;

    /* renamed from: j  reason: collision with root package name */
    private final Long f38775j;

    /* renamed from: k  reason: collision with root package name */
    private final i1 f38776k;

    /* renamed from: l  reason: collision with root package name */
    private final ImmutableList<String> f38777l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b extends p2.c.a {

        /* renamed from: a  reason: collision with root package name */
        private String f38778a;

        /* renamed from: b  reason: collision with root package name */
        private p2.c.b f38779b;

        /* renamed from: c  reason: collision with root package name */
        private p2.c.EnumC0404c f38780c;

        /* renamed from: d  reason: collision with root package name */
        private Long f38781d;

        /* renamed from: e  reason: collision with root package name */
        private Long f38782e;

        /* renamed from: f  reason: collision with root package name */
        private Integer f38783f;

        /* renamed from: g  reason: collision with root package name */
        private String f38784g;

        /* renamed from: h  reason: collision with root package name */
        private String f38785h;

        /* renamed from: i  reason: collision with root package name */
        private j0.d f38786i;

        /* renamed from: j  reason: collision with root package name */
        private Long f38787j;

        /* renamed from: k  reason: collision with root package name */
        private i1 f38788k;

        /* renamed from: l  reason: collision with root package name */
        private ImmutableList<String> f38789l;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // eh.p2.c.a
        public p2.c a() {
            p2.c.b bVar;
            p2.c.EnumC0404c enumC0404c;
            Long l10;
            String str = this.f38778a;
            if (str != null && (bVar = this.f38779b) != null && (enumC0404c = this.f38780c) != null && (l10 = this.f38781d) != null && this.f38782e != null && this.f38783f != null) {
                return new h0(str, bVar, enumC0404c, l10.longValue(), this.f38782e.longValue(), this.f38783f.intValue(), this.f38784g, this.f38785h, this.f38786i, this.f38787j, this.f38788k, this.f38789l);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f38778a == null) {
                sb2.append(" clusterName");
            }
            if (this.f38779b == null) {
                sb2.append(" clusterType");
            }
            if (this.f38780c == null) {
                sb2.append(" lbPolicy");
            }
            if (this.f38781d == null) {
                sb2.append(" minRingSize");
            }
            if (this.f38782e == null) {
                sb2.append(" maxRingSize");
            }
            if (this.f38783f == null) {
                sb2.append(" choiceCount");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // eh.p2.c.a
        protected p2.c.a b(int i9) {
            this.f38783f = Integer.valueOf(i9);
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a c(p2.c.b bVar) {
            Objects.requireNonNull(bVar, "Null clusterType");
            this.f38779b = bVar;
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a d(String str) {
            this.f38785h = str;
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a e(String str) {
            this.f38784g = str;
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a f(p2.c.EnumC0404c enumC0404c) {
            Objects.requireNonNull(enumC0404c, "Null lbPolicy");
            this.f38780c = enumC0404c;
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a h(j0.d dVar) {
            this.f38786i = dVar;
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a i(Long l10) {
            this.f38787j = l10;
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a j(long j10) {
            this.f38782e = Long.valueOf(j10);
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a k(long j10) {
            this.f38781d = Long.valueOf(j10);
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a l(List<String> list) {
            this.f38789l = list == null ? null : ImmutableList.copyOf((Collection) list);
            return this;
        }

        @Override // eh.p2.c.a
        protected p2.c.a o(i1 i1Var) {
            this.f38788k = i1Var;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public p2.c.a p(String str) {
            Objects.requireNonNull(str, "Null clusterName");
            this.f38778a = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public int a() {
        return this.f38771f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public String b() {
        return this.f38766a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public p2.c.b c() {
        return this.f38767b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public String d() {
        return this.f38773h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public String e() {
        return this.f38772g;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        j0.d dVar;
        Long l10;
        i1 i1Var;
        if (obj == this) {
            return true;
        }
        if (obj instanceof p2.c) {
            p2.c cVar = (p2.c) obj;
            if (this.f38766a.equals(cVar.b()) && this.f38767b.equals(cVar.c()) && this.f38768c.equals(cVar.i()) && this.f38769d == cVar.m() && this.f38770e == cVar.l() && this.f38771f == cVar.a() && ((str = this.f38772g) != null ? str.equals(cVar.e()) : cVar.e() == null) && ((str2 = this.f38773h) != null ? str2.equals(cVar.d()) : cVar.d() == null) && ((dVar = this.f38774i) != null ? dVar.equals(cVar.j()) : cVar.j() == null) && ((l10 = this.f38775j) != null ? l10.equals(cVar.k()) : cVar.k() == null) && ((i1Var = this.f38776k) != null ? i1Var.equals(cVar.o()) : cVar.o() == null)) {
                ImmutableList<String> immutableList = this.f38777l;
                if (immutableList == null) {
                    if (cVar.n() == null) {
                        return true;
                    }
                } else if (immutableList.equals(cVar.n())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f38769d;
        long j11 = this.f38770e;
        int hashCode = (((((((((((this.f38766a.hashCode() ^ 1000003) * 1000003) ^ this.f38767b.hashCode()) * 1000003) ^ this.f38768c.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f38771f) * 1000003;
        String str = this.f38772g;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f38773h;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        j0.d dVar = this.f38774i;
        int hashCode4 = (hashCode3 ^ (dVar == null ? 0 : dVar.hashCode())) * 1000003;
        Long l10 = this.f38775j;
        int hashCode5 = (hashCode4 ^ (l10 == null ? 0 : l10.hashCode())) * 1000003;
        i1 i1Var = this.f38776k;
        int hashCode6 = (hashCode5 ^ (i1Var == null ? 0 : i1Var.hashCode())) * 1000003;
        ImmutableList<String> immutableList = this.f38777l;
        return hashCode6 ^ (immutableList != null ? immutableList.hashCode() : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public p2.c.EnumC0404c i() {
        return this.f38768c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public j0.d j() {
        return this.f38774i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public Long k() {
        return this.f38775j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public long l() {
        return this.f38770e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public long m() {
        return this.f38769d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public ImmutableList<String> n() {
        return this.f38777l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.c
    public i1 o() {
        return this.f38776k;
    }

    private h0(String str, p2.c.b bVar, p2.c.EnumC0404c enumC0404c, long j10, long j11, int i9, String str2, String str3, j0.d dVar, Long l10, i1 i1Var, ImmutableList<String> immutableList) {
        this.f38766a = str;
        this.f38767b = bVar;
        this.f38768c = enumC0404c;
        this.f38769d = j10;
        this.f38770e = j11;
        this.f38771f = i9;
        this.f38772g = str2;
        this.f38773h = str3;
        this.f38774i = dVar;
        this.f38775j = l10;
        this.f38776k = i1Var;
        this.f38777l = immutableList;
    }
}
