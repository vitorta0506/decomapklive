package n1;

import androidx.annotation.Nullable;
import java.util.Map;
import java.util.Objects;
import n1.i;
/* loaded from: classes.dex */
final class b extends i {

    /* renamed from: a  reason: collision with root package name */
    private final String f55225a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f55226b;

    /* renamed from: c  reason: collision with root package name */
    private final h f55227c;

    /* renamed from: d  reason: collision with root package name */
    private final long f55228d;

    /* renamed from: e  reason: collision with root package name */
    private final long f55229e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, String> f55230f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n1.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0578b extends i.a {

        /* renamed from: a  reason: collision with root package name */
        private String f55231a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f55232b;

        /* renamed from: c  reason: collision with root package name */
        private h f55233c;

        /* renamed from: d  reason: collision with root package name */
        private Long f55234d;

        /* renamed from: e  reason: collision with root package name */
        private Long f55235e;

        /* renamed from: f  reason: collision with root package name */
        private Map<String, String> f55236f;

        @Override // n1.i.a
        public i d() {
            String str = "";
            if (this.f55231a == null) {
                str = " transportName";
            }
            if (this.f55233c == null) {
                str = str + " encodedPayload";
            }
            if (this.f55234d == null) {
                str = str + " eventMillis";
            }
            if (this.f55235e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f55236f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new b(this.f55231a, this.f55232b, this.f55233c, this.f55234d.longValue(), this.f55235e.longValue(), this.f55236f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // n1.i.a
        protected Map<String, String> e() {
            Map<String, String> map = this.f55236f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // n1.i.a
        public i.a f(Map<String, String> map) {
            Objects.requireNonNull(map, "Null autoMetadata");
            this.f55236f = map;
            return this;
        }

        @Override // n1.i.a
        public i.a g(Integer num) {
            this.f55232b = num;
            return this;
        }

        @Override // n1.i.a
        public i.a h(h hVar) {
            Objects.requireNonNull(hVar, "Null encodedPayload");
            this.f55233c = hVar;
            return this;
        }

        @Override // n1.i.a
        public i.a i(long j10) {
            this.f55234d = Long.valueOf(j10);
            return this;
        }

        @Override // n1.i.a
        public i.a j(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f55231a = str;
            return this;
        }

        @Override // n1.i.a
        public i.a k(long j10) {
            this.f55235e = Long.valueOf(j10);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n1.i
    public Map<String, String> c() {
        return this.f55230f;
    }

    @Override // n1.i
    @Nullable
    public Integer d() {
        return this.f55226b;
    }

    @Override // n1.i
    public h e() {
        return this.f55227c;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return this.f55225a.equals(iVar.j()) && ((num = this.f55226b) != null ? num.equals(iVar.d()) : iVar.d() == null) && this.f55227c.equals(iVar.e()) && this.f55228d == iVar.f() && this.f55229e == iVar.k() && this.f55230f.equals(iVar.c());
        }
        return false;
    }

    @Override // n1.i
    public long f() {
        return this.f55228d;
    }

    public int hashCode() {
        int hashCode = (this.f55225a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f55226b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        long j10 = this.f55228d;
        long j11 = this.f55229e;
        return ((((((((hashCode ^ hashCode2) * 1000003) ^ this.f55227c.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f55230f.hashCode();
    }

    @Override // n1.i
    public String j() {
        return this.f55225a;
    }

    @Override // n1.i
    public long k() {
        return this.f55229e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f55225a + ", code=" + this.f55226b + ", encodedPayload=" + this.f55227c + ", eventMillis=" + this.f55228d + ", uptimeMillis=" + this.f55229e + ", autoMetadata=" + this.f55230f + "}";
    }

    private b(String str, @Nullable Integer num, h hVar, long j10, long j11, Map<String, String> map) {
        this.f55225a = str;
        this.f55226b = num;
        this.f55227c = hVar;
        this.f55228d = j10;
        this.f55229e = j11;
        this.f55230f = map;
    }
}
