package m;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private float f54392a;

    /* renamed from: b  reason: collision with root package name */
    private int f54393b;

    public void a(float f10) {
        float f11 = this.f54392a + f10;
        this.f54392a = f11;
        int i9 = this.f54393b + 1;
        this.f54393b = i9;
        if (i9 == Integer.MAX_VALUE) {
            this.f54392a = f11 / 2.0f;
            this.f54393b = i9 / 2;
        }
    }
}
