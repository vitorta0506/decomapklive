package l5;

import com.google.auth.oauth2.GoogleCredentials;
import java.util.List;
import java.util.Objects;
import l5.l;
/* loaded from: classes2.dex */
final class b extends l {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f54194a;

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f54195b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f54196c;

    /* renamed from: d  reason: collision with root package name */
    private final GoogleCredentials f54197d;

    /* renamed from: l5.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0558b extends l.a {

        /* renamed from: a  reason: collision with root package name */
        private List<String> f54198a;

        /* renamed from: b  reason: collision with root package name */
        private List<String> f54199b;

        /* renamed from: c  reason: collision with root package name */
        private Boolean f54200c;

        /* renamed from: d  reason: collision with root package name */
        private GoogleCredentials f54201d;

        @Override // l5.l.a
        l a() {
            List<String> list;
            Boolean bool;
            List<String> list2 = this.f54198a;
            if (list2 != null && (list = this.f54199b) != null && (bool = this.f54200c) != null) {
                return new b(list2, list, bool.booleanValue(), this.f54201d);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f54198a == null) {
                sb2.append(" scopesToApply");
            }
            if (this.f54199b == null) {
                sb2.append(" jwtEnabledScopes");
            }
            if (this.f54200c == null) {
                sb2.append(" useJwtAccessWithScope");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // l5.l.a
        public List<String> c() {
            List<String> list = this.f54199b;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"jwtEnabledScopes\" has not been set");
        }

        @Override // l5.l.a
        public List<String> d() {
            List<String> list = this.f54198a;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"scopesToApply\" has not been set");
        }

        @Override // l5.l.a
        public boolean e() {
            Boolean bool = this.f54200c;
            if (bool != null) {
                return bool.booleanValue();
            }
            throw new IllegalStateException("Property \"useJwtAccessWithScope\" has not been set");
        }

        @Override // l5.l.a
        public l.a f(List<String> list) {
            Objects.requireNonNull(list, "Null jwtEnabledScopes");
            this.f54199b = list;
            return this;
        }

        @Override // l5.l.a
        public l.a g(List<String> list) {
            Objects.requireNonNull(list, "Null scopesToApply");
            this.f54198a = list;
            return this;
        }

        @Override // l5.l.a
        public l.a h(boolean z10) {
            this.f54200c = Boolean.valueOf(z10);
            return this;
        }
    }

    @Override // l5.l
    public List<String> b() {
        return this.f54195b;
    }

    @Override // l5.l
    GoogleCredentials c() {
        return this.f54197d;
    }

    @Override // l5.l
    public List<String> d() {
        return this.f54194a;
    }

    @Override // l5.l
    public boolean e() {
        return this.f54196c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (this.f54194a.equals(lVar.d()) && this.f54195b.equals(lVar.b()) && this.f54196c == lVar.e()) {
                GoogleCredentials googleCredentials = this.f54197d;
                if (googleCredentials == null) {
                    if (lVar.c() == null) {
                        return true;
                    }
                } else if (googleCredentials.equals(lVar.c())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (((((this.f54194a.hashCode() ^ 1000003) * 1000003) ^ this.f54195b.hashCode()) * 1000003) ^ (this.f54196c ? 1231 : 1237)) * 1000003;
        GoogleCredentials googleCredentials = this.f54197d;
        return hashCode ^ (googleCredentials == null ? 0 : googleCredentials.hashCode());
    }

    public String toString() {
        return "GoogleCredentialsProvider{scopesToApply=" + this.f54194a + ", jwtEnabledScopes=" + this.f54195b + ", useJwtAccessWithScope=" + this.f54196c + ", OAuth2Credentials=" + this.f54197d + "}";
    }

    private b(List<String> list, List<String> list2, boolean z10, GoogleCredentials googleCredentials) {
        this.f54194a = list;
        this.f54195b = list2;
        this.f54196c = z10;
        this.f54197d = googleCredentials;
    }
}
