package cl;
/* loaded from: classes7.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private b f1769a;

    /* renamed from: b  reason: collision with root package name */
    private i f1770b;

    /* renamed from: c  reason: collision with root package name */
    protected i[] f1771c;

    /* renamed from: d  reason: collision with root package name */
    protected i[] f1772d;

    public k(b bVar, i iVar) {
        this.f1769a = bVar;
        this.f1770b = iVar;
        b();
        a();
    }

    private void a() {
        int f10;
        int g10 = this.f1770b.g();
        i[] iVarArr = new i[g10];
        int i9 = g10 - 1;
        for (int i10 = i9; i10 >= 0; i10--) {
            iVarArr[i10] = new i(this.f1771c[i10]);
        }
        this.f1772d = new i[g10];
        while (i9 >= 0) {
            this.f1772d[i9] = new i(this.f1769a, i9);
            i9--;
        }
        for (int i11 = 0; i11 < g10; i11++) {
            if (iVarArr[i11].f(i11) == 0) {
                int i12 = i11 + 1;
                boolean z10 = false;
                while (i12 < g10) {
                    if (iVarArr[i12].f(i11) != 0) {
                        d(iVarArr, i11, i12);
                        d(this.f1772d, i11, i12);
                        i12 = g10;
                        z10 = true;
                    }
                    i12++;
                }
                if (!z10) {
                    throw new ArithmeticException("Squaring matrix is not invertible.");
                }
            }
            int f11 = this.f1769a.f(iVarArr[i11].f(i11));
            iVarArr[i11].m(f11);
            this.f1772d[i11].m(f11);
            for (int i13 = 0; i13 < g10; i13++) {
                if (i13 != i11 && (f10 = iVarArr[i13].f(i11)) != 0) {
                    i n9 = iVarArr[i11].n(f10);
                    i n10 = this.f1772d[i11].n(f10);
                    iVarArr[i13].b(n9);
                    this.f1772d[i13].b(n10);
                }
            }
        }
    }

    private void b() {
        int i9;
        int g10 = this.f1770b.g();
        this.f1771c = new i[g10];
        int i10 = 0;
        while (true) {
            i9 = g10 >> 1;
            if (i10 >= i9) {
                break;
            }
            int i11 = i10 << 1;
            int[] iArr = new int[i11 + 1];
            iArr[i11] = 1;
            this.f1771c[i10] = new i(this.f1769a, iArr);
            i10++;
        }
        while (i9 < g10) {
            int i12 = i9 << 1;
            int[] iArr2 = new int[i12 + 1];
            iArr2[i12] = 1;
            this.f1771c[i9] = new i(this.f1769a, iArr2).k(this.f1770b);
            i9++;
        }
    }

    private static void d(i[] iVarArr, int i9, int i10) {
        i iVar = iVarArr[i9];
        iVarArr[i9] = iVarArr[i10];
        iVarArr[i10] = iVar;
    }

    public i[] c() {
        return this.f1772d;
    }
}
