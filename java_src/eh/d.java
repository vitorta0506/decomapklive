package eh;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import eh.a1;
import eh.j0;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
final class d extends j0.b {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<j0.d> f38704a;

    /* renamed from: b  reason: collision with root package name */
    private final a1.c f38705b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableMap<String, j0.c> f38706c;

    /* renamed from: d  reason: collision with root package name */
    private final String f38707d;

    /* renamed from: e  reason: collision with root package name */
    private final String f38708e;

    /* renamed from: f  reason: collision with root package name */
    private final ImmutableMap<String, j0.a> f38709f;

    /* loaded from: classes5.dex */
    static final class b extends j0.b.a {

        /* renamed from: a  reason: collision with root package name */
        private ImmutableList<j0.d> f38710a;

        /* renamed from: b  reason: collision with root package name */
        private a1.c f38711b;

        /* renamed from: c  reason: collision with root package name */
        private ImmutableMap<String, j0.c> f38712c;

        /* renamed from: d  reason: collision with root package name */
        private String f38713d;

        /* renamed from: e  reason: collision with root package name */
        private String f38714e;

        /* renamed from: f  reason: collision with root package name */
        private ImmutableMap<String, j0.a> f38715f;

        @Override // eh.j0.b.a
        j0.b.a a(Map<String, j0.a> map) {
            this.f38715f = ImmutableMap.copyOf((Map) map);
            return this;
        }

        @Override // eh.j0.b.a
        j0.b b() {
            a1.c cVar;
            String str;
            ImmutableMap<String, j0.a> immutableMap;
            ImmutableList<j0.d> immutableList = this.f38710a;
            if (immutableList != null && (cVar = this.f38711b) != null && (str = this.f38714e) != null && (immutableMap = this.f38715f) != null) {
                return new d(immutableList, cVar, this.f38712c, this.f38713d, str, immutableMap);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f38710a == null) {
                sb2.append(" servers");
            }
            if (this.f38711b == null) {
                sb2.append(" node");
            }
            if (this.f38714e == null) {
                sb2.append(" clientDefaultListenerResourceNameTemplate");
            }
            if (this.f38715f == null) {
                sb2.append(" authorities");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // eh.j0.b.a
        j0.b.a c(Map<String, j0.c> map) {
            this.f38712c = map == null ? null : ImmutableMap.copyOf((Map) map);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // eh.j0.b.a
        public j0.b.a d(String str) {
            Objects.requireNonNull(str, "Null clientDefaultListenerResourceNameTemplate");
            this.f38714e = str;
            return this;
        }

        @Override // eh.j0.b.a
        j0.b.a e(a1.c cVar) {
            Objects.requireNonNull(cVar, "Null node");
            this.f38711b = cVar;
            return this;
        }

        @Override // eh.j0.b.a
        j0.b.a f(String str) {
            this.f38713d = str;
            return this;
        }

        @Override // eh.j0.b.a
        j0.b.a g(List<j0.d> list) {
            this.f38710a = ImmutableList.copyOf((Collection) list);
            return this;
        }
    }

    @Override // eh.j0.b
    ImmutableMap<String, j0.a> a() {
        return this.f38709f;
    }

    @Override // eh.j0.b
    public ImmutableMap<String, j0.c> c() {
        return this.f38706c;
    }

    @Override // eh.j0.b
    String d() {
        return this.f38708e;
    }

    @Override // eh.j0.b
    public a1.c e() {
        return this.f38705b;
    }

    public boolean equals(Object obj) {
        ImmutableMap<String, j0.c> immutableMap;
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof j0.b) {
            j0.b bVar = (j0.b) obj;
            return this.f38704a.equals(bVar.g()) && this.f38705b.equals(bVar.e()) && ((immutableMap = this.f38706c) != null ? immutableMap.equals(bVar.c()) : bVar.c() == null) && ((str = this.f38707d) != null ? str.equals(bVar.f()) : bVar.f() == null) && this.f38708e.equals(bVar.d()) && this.f38709f.equals(bVar.a());
        }
        return false;
    }

    @Override // eh.j0.b
    public String f() {
        return this.f38707d;
    }

    @Override // eh.j0.b
    ImmutableList<j0.d> g() {
        return this.f38704a;
    }

    public int hashCode() {
        int hashCode = (((this.f38704a.hashCode() ^ 1000003) * 1000003) ^ this.f38705b.hashCode()) * 1000003;
        ImmutableMap<String, j0.c> immutableMap = this.f38706c;
        int hashCode2 = (hashCode ^ (immutableMap == null ? 0 : immutableMap.hashCode())) * 1000003;
        String str = this.f38707d;
        return ((((hashCode2 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ this.f38708e.hashCode()) * 1000003) ^ this.f38709f.hashCode();
    }

    public String toString() {
        return "BootstrapInfo{servers=" + this.f38704a + ", node=" + this.f38705b + ", certProviders=" + this.f38706c + ", serverListenerResourceNameTemplate=" + this.f38707d + ", clientDefaultListenerResourceNameTemplate=" + this.f38708e + ", authorities=" + this.f38709f + "}";
    }

    private d(ImmutableList<j0.d> immutableList, a1.c cVar, ImmutableMap<String, j0.c> immutableMap, String str, String str2, ImmutableMap<String, j0.a> immutableMap2) {
        this.f38704a = immutableList;
        this.f38705b = cVar;
        this.f38706c = immutableMap;
        this.f38707d = str;
        this.f38708e = str2;
        this.f38709f = immutableMap2;
    }
}
