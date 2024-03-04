package mh;

import java.util.Objects;
import mh.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class c extends a.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f55108a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str) {
        Objects.requireNonNull(str, "Null stringValue");
        this.f55108a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // mh.a.b
    public String d() {
        return this.f55108a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a.b) {
            return this.f55108a.equals(((a.b) obj).d());
        }
        return false;
    }

    public int hashCode() {
        return this.f55108a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AttributeValueString{stringValue=" + this.f55108a + "}";
    }
}
