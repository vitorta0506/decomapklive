package hg;

import com.google.common.base.o;
import hg.i;
/* loaded from: classes5.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private final i.m f40684a;

    /* renamed from: b  reason: collision with root package name */
    private final String f40685b;

    private d(i.m mVar, String str) {
        this.f40684a = (i.m) o.t(mVar, "mode");
        this.f40685b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(i.m mVar) {
        return b(mVar, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d b(i.m mVar, String str) {
        return new d(mVar, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i.m c() {
        return this.f40684a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return this.f40685b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f40684a == dVar.f40684a && com.google.common.base.l.a(this.f40685b, dVar.f40685b);
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.f40684a, this.f40685b);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("mode", this.f40684a).d("serviceName", this.f40685b).toString();
    }
}
