package mh;

import java.util.Objects;
import mh.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class b extends a.AbstractC0576a {

    /* renamed from: a  reason: collision with root package name */
    private final Long f55107a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Long l10) {
        Objects.requireNonNull(l10, "Null longValue");
        this.f55107a = l10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // mh.a.AbstractC0576a
    public Long d() {
        return this.f55107a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a.AbstractC0576a) {
            return this.f55107a.equals(((a.AbstractC0576a) obj).d());
        }
        return false;
    }

    public int hashCode() {
        return this.f55107a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AttributeValueLong{longValue=" + this.f55107a + "}";
    }
}
