package qc;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private boolean f57155a;

    public d(boolean z10) {
        this.f57155a = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f57155a == ((d) obj).f57155a;
    }

    public int hashCode() {
        return this.f57155a ? 1 : 0;
    }

    public String toString() {
        return "LineFriendshipStatus{friendFlag=" + this.f57155a + '}';
    }
}
