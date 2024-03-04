package eh;

import com.google.common.collect.ImmutableList;
import eh.g2;
import java.util.Objects;
/* loaded from: classes5.dex */
final class w extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private final String f39383a;

    /* renamed from: b  reason: collision with root package name */
    private final String f39384b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableList<i2> f39385c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableList<h2> f39386d;

    /* renamed from: e  reason: collision with root package name */
    private final long f39387e;

    /* renamed from: f  reason: collision with root package name */
    private final long f39388f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b extends g2.a {

        /* renamed from: a  reason: collision with root package name */
        private String f39389a;

        /* renamed from: b  reason: collision with root package name */
        private String f39390b;

        /* renamed from: c  reason: collision with root package name */
        private ImmutableList.b<i2> f39391c;

        /* renamed from: d  reason: collision with root package name */
        private ImmutableList<i2> f39392d;

        /* renamed from: e  reason: collision with root package name */
        private ImmutableList.b<h2> f39393e;

        /* renamed from: f  reason: collision with root package name */
        private ImmutableList<h2> f39394f;

        /* renamed from: g  reason: collision with root package name */
        private Long f39395g;

        /* renamed from: h  reason: collision with root package name */
        private Long f39396h;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // eh.g2.a
        public g2 c() {
            Long l10;
            ImmutableList.b<i2> bVar = this.f39391c;
            if (bVar != null) {
                this.f39392d = bVar.j();
            } else if (this.f39392d == null) {
                this.f39392d = ImmutableList.of();
            }
            ImmutableList.b<h2> bVar2 = this.f39393e;
            if (bVar2 != null) {
                this.f39394f = bVar2.j();
            } else if (this.f39394f == null) {
                this.f39394f = ImmutableList.of();
            }
            String str = this.f39389a;
            if (str != null && (l10 = this.f39395g) != null && this.f39396h != null) {
                return new w(str, this.f39390b, this.f39392d, this.f39394f, l10.longValue(), this.f39396h.longValue());
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f39389a == null) {
                sb2.append(" clusterName");
            }
            if (this.f39395g == null) {
                sb2.append(" totalDroppedRequests");
            }
            if (this.f39396h == null) {
                sb2.append(" loadReportIntervalNano");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // eh.g2.a
        public g2.a d(String str) {
            Objects.requireNonNull(str, "Null clusterName");
            this.f39389a = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // eh.g2.a
        public g2.a e(String str) {
            this.f39390b = str;
            return this;
        }

        @Override // eh.g2.a
        ImmutableList.b<h2> f() {
            if (this.f39393e == null) {
                this.f39393e = ImmutableList.builder();
            }
            return this.f39393e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // eh.g2.a
        public long g() {
            Long l10 = this.f39396h;
            if (l10 != null) {
                return l10.longValue();
            }
            throw new IllegalStateException("Property \"loadReportIntervalNano\" has not been set");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // eh.g2.a
        public g2.a h(long j10) {
            this.f39396h = Long.valueOf(j10);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // eh.g2.a
        public g2.a i(long j10) {
            this.f39395g = Long.valueOf(j10);
            return this;
        }

        @Override // eh.g2.a
        ImmutableList.b<i2> j() {
            if (this.f39391c == null) {
                this.f39391c = ImmutableList.builder();
            }
            return this.f39391c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g2
    public String a() {
        return this.f39383a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g2
    public String b() {
        return this.f39384b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g2
    public ImmutableList<h2> c() {
        return this.f39386d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g2
    public long d() {
        return this.f39388f;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof g2) {
            g2 g2Var = (g2) obj;
            return this.f39383a.equals(g2Var.a()) && ((str = this.f39384b) != null ? str.equals(g2Var.b()) : g2Var.b() == null) && this.f39385c.equals(g2Var.g()) && this.f39386d.equals(g2Var.c()) && this.f39387e == g2Var.f() && this.f39388f == g2Var.d();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g2
    public long f() {
        return this.f39387e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g2
    public ImmutableList<i2> g() {
        return this.f39385c;
    }

    public int hashCode() {
        int hashCode = (this.f39383a.hashCode() ^ 1000003) * 1000003;
        String str = this.f39384b;
        int hashCode2 = str == null ? 0 : str.hashCode();
        long j10 = this.f39387e;
        long j11 = this.f39388f;
        return ((((((((hashCode ^ hashCode2) * 1000003) ^ this.f39385c.hashCode()) * 1000003) ^ this.f39386d.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "ClusterStats{clusterName=" + this.f39383a + ", clusterServiceName=" + this.f39384b + ", upstreamLocalityStatsList=" + this.f39385c + ", droppedRequestsList=" + this.f39386d + ", totalDroppedRequests=" + this.f39387e + ", loadReportIntervalNano=" + this.f39388f + "}";
    }

    private w(String str, String str2, ImmutableList<i2> immutableList, ImmutableList<h2> immutableList2, long j10, long j11) {
        this.f39383a = str;
        this.f39384b = str2;
        this.f39385c = immutableList;
        this.f39386d = immutableList2;
        this.f39387e = j10;
        this.f39388f = j11;
    }
}
