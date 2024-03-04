package n;

import com.guochao.faceshow.aaspring.modulars.live.common.x;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private float f55201a;

    /* renamed from: b  reason: collision with root package name */
    private float f55202b;

    public d(float f10, float f11) {
        this.f55201a = f10;
        this.f55202b = f11;
    }

    public boolean a(float f10, float f11) {
        return this.f55201a == f10 && this.f55202b == f11;
    }

    public float b() {
        return this.f55201a;
    }

    public float c() {
        return this.f55202b;
    }

    public void d(float f10, float f11) {
        this.f55201a = f10;
        this.f55202b = f11;
    }

    public String toString() {
        return b() + x.f19108w + c();
    }

    public d() {
        this(1.0f, 1.0f);
    }
}
