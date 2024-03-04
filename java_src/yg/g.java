package yg;
/* loaded from: classes5.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private int f60265a;

    /* renamed from: b  reason: collision with root package name */
    private int f60266b;

    /* renamed from: c  reason: collision with root package name */
    private int f60267c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f60268d = new int[10];

    public int a(int i9) {
        return this.f60268d[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        if ((this.f60265a & 2) != 0) {
            return this.f60268d[1];
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i9) {
        return (this.f60265a & 32) != 0 ? this.f60268d[5] : i9;
    }

    public boolean d(int i9) {
        return ((1 << i9) & this.f60265a) != 0;
    }

    public g e(int i9, int i10, int i11) {
        int[] iArr = this.f60268d;
        if (i9 >= iArr.length) {
            return this;
        }
        int i12 = 1 << i9;
        this.f60265a |= i12;
        if ((i10 & 1) != 0) {
            this.f60266b |= i12;
        } else {
            this.f60266b &= ~i12;
        }
        if ((i10 & 2) != 0) {
            this.f60267c |= i12;
        } else {
            this.f60267c &= ~i12;
        }
        iArr[i9] = i11;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return Integer.bitCount(this.f60265a);
    }
}
