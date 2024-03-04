package mk;
/* loaded from: classes7.dex */
class c implements e {

    /* renamed from: a  reason: collision with root package name */
    protected final int[] f55170a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(int[] iArr) {
        this.f55170a = org.bouncycastle.util.a.g(iArr);
    }

    @Override // mk.e
    public int[] a() {
        return org.bouncycastle.util.a.g(this.f55170a);
    }

    @Override // mk.e
    public int b() {
        int[] iArr = this.f55170a;
        return iArr[iArr.length - 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            return org.bouncycastle.util.a.c(this.f55170a, ((c) obj).f55170a);
        }
        return false;
    }

    public int hashCode() {
        return org.bouncycastle.util.a.u(this.f55170a);
    }
}
