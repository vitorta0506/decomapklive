package j;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f52830a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f52831b;

    public d(float[] fArr, int[] iArr) {
        this.f52830a = fArr;
        this.f52831b = iArr;
    }

    public int[] a() {
        return this.f52831b;
    }

    public float[] b() {
        return this.f52830a;
    }

    public int c() {
        return this.f52831b.length;
    }

    public void d(d dVar, d dVar2, float f10) {
        if (dVar.f52831b.length == dVar2.f52831b.length) {
            for (int i9 = 0; i9 < dVar.f52831b.length; i9++) {
                this.f52830a[i9] = m.g.k(dVar.f52830a[i9], dVar2.f52830a[i9], f10);
                this.f52831b[i9] = m.b.c(f10, dVar.f52831b[i9], dVar2.f52831b[i9]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + dVar.f52831b.length + " vs " + dVar2.f52831b.length + ")");
    }
}
