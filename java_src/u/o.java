package u;

import android.graphics.Rect;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private Rect f58274a;

    /* renamed from: b  reason: collision with root package name */
    private int f58275b;

    public o(Rect rect, int i9) {
        this.f58274a = rect;
        this.f58275b = i9;
    }

    public Rect a() {
        return this.f58274a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f58275b == ((o) obj).f58275b;
    }

    public int hashCode() {
        return this.f58275b;
    }
}
