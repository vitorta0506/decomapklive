package qj;

import oj.b;
import org.bouncycastle.asn1.e;
/* loaded from: classes7.dex */
public class a implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    final e f57343a;

    public a(b bVar) {
        this.f57343a = bVar.y();
    }

    public Object clone() {
        return new a(b.x(this.f57343a));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            return this.f57343a.equals(((a) obj).f57343a);
        }
        return false;
    }

    public int hashCode() {
        return this.f57343a.hashCode();
    }
}
