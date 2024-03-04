package n1;

import java.util.Objects;
import n1.n;
/* loaded from: classes.dex */
final class c extends n {

    /* renamed from: a  reason: collision with root package name */
    private final o f55237a;

    /* renamed from: b  reason: collision with root package name */
    private final String f55238b;

    /* renamed from: c  reason: collision with root package name */
    private final l1.c<?> f55239c;

    /* renamed from: d  reason: collision with root package name */
    private final l1.d<?, byte[]> f55240d;

    /* renamed from: e  reason: collision with root package name */
    private final l1.b f55241e;

    /* loaded from: classes.dex */
    static final class b extends n.a {

        /* renamed from: a  reason: collision with root package name */
        private o f55242a;

        /* renamed from: b  reason: collision with root package name */
        private String f55243b;

        /* renamed from: c  reason: collision with root package name */
        private l1.c<?> f55244c;

        /* renamed from: d  reason: collision with root package name */
        private l1.d<?, byte[]> f55245d;

        /* renamed from: e  reason: collision with root package name */
        private l1.b f55246e;

        @Override // n1.n.a
        public n a() {
            String str = "";
            if (this.f55242a == null) {
                str = " transportContext";
            }
            if (this.f55243b == null) {
                str = str + " transportName";
            }
            if (this.f55244c == null) {
                str = str + " event";
            }
            if (this.f55245d == null) {
                str = str + " transformer";
            }
            if (this.f55246e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new c(this.f55242a, this.f55243b, this.f55244c, this.f55245d, this.f55246e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // n1.n.a
        n.a b(l1.b bVar) {
            Objects.requireNonNull(bVar, "Null encoding");
            this.f55246e = bVar;
            return this;
        }

        @Override // n1.n.a
        n.a c(l1.c<?> cVar) {
            Objects.requireNonNull(cVar, "Null event");
            this.f55244c = cVar;
            return this;
        }

        @Override // n1.n.a
        n.a d(l1.d<?, byte[]> dVar) {
            Objects.requireNonNull(dVar, "Null transformer");
            this.f55245d = dVar;
            return this;
        }

        @Override // n1.n.a
        public n.a e(o oVar) {
            Objects.requireNonNull(oVar, "Null transportContext");
            this.f55242a = oVar;
            return this;
        }

        @Override // n1.n.a
        public n.a f(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f55243b = str;
            return this;
        }
    }

    @Override // n1.n
    public l1.b b() {
        return this.f55241e;
    }

    @Override // n1.n
    l1.c<?> c() {
        return this.f55239c;
    }

    @Override // n1.n
    l1.d<?, byte[]> e() {
        return this.f55240d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            return this.f55237a.equals(nVar.f()) && this.f55238b.equals(nVar.g()) && this.f55239c.equals(nVar.c()) && this.f55240d.equals(nVar.e()) && this.f55241e.equals(nVar.b());
        }
        return false;
    }

    @Override // n1.n
    public o f() {
        return this.f55237a;
    }

    @Override // n1.n
    public String g() {
        return this.f55238b;
    }

    public int hashCode() {
        return ((((((((this.f55237a.hashCode() ^ 1000003) * 1000003) ^ this.f55238b.hashCode()) * 1000003) ^ this.f55239c.hashCode()) * 1000003) ^ this.f55240d.hashCode()) * 1000003) ^ this.f55241e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f55237a + ", transportName=" + this.f55238b + ", event=" + this.f55239c + ", transformer=" + this.f55240d + ", encoding=" + this.f55241e + "}";
    }

    private c(o oVar, String str, l1.c<?> cVar, l1.d<?, byte[]> dVar, l1.b bVar) {
        this.f55237a = oVar;
        this.f55238b = str;
        this.f55239c = cVar;
        this.f55240d = dVar;
        this.f55241e = bVar;
    }
}
