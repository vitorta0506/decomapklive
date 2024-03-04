package te;

import io.reactivex.k;
import java.util.List;
import vh.o;
import vh.q;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f58132a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f58133b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f58134c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: te.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0650a implements vh.b<StringBuilder, String> {
        C0650a() {
        }

        @Override // vh.b
        /* renamed from: a */
        public void accept(StringBuilder sb2, String str) throws Exception {
            if (sb2.length() == 0) {
                sb2.append(str);
                return;
            }
            sb2.append(", ");
            sb2.append(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements o<a, String> {
        b() {
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(a aVar) throws Exception {
            return aVar.f58132a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements q<a> {
        c() {
        }

        @Override // vh.q
        /* renamed from: a */
        public boolean test(a aVar) throws Exception {
            return aVar.f58133b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements q<a> {
        d() {
        }

        @Override // vh.q
        /* renamed from: a */
        public boolean test(a aVar) throws Exception {
            return aVar.f58134c;
        }
    }

    public a(String str, boolean z10, boolean z11) {
        this.f58132a = str;
        this.f58133b = z10;
        this.f58134c = z11;
    }

    private Boolean a(List<a> list) {
        return k.fromIterable(list).all(new c()).c();
    }

    private String b(List<a> list) {
        return ((StringBuilder) k.fromIterable(list).map(new b()).collectInto(new StringBuilder(), new C0650a()).c()).toString();
    }

    private Boolean c(List<a> list) {
        return k.fromIterable(list).any(new d()).c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f58133b == aVar.f58133b && this.f58134c == aVar.f58134c) {
            return this.f58132a.equals(aVar.f58132a);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f58132a.hashCode() * 31) + (this.f58133b ? 1 : 0)) * 31) + (this.f58134c ? 1 : 0);
    }

    public String toString() {
        return "Permission{name='" + this.f58132a + "', granted=" + this.f58133b + ", shouldShowRequestPermissionRationale=" + this.f58134c + '}';
    }

    public a(List<a> list) {
        this.f58132a = b(list);
        this.f58133b = a(list).booleanValue();
        this.f58134c = c(list).booleanValue();
    }
}
