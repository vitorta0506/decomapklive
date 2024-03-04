package ae;

import android.content.res.Resources;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public float f743a = Resources.getSystem().getDisplayMetrics().density;

    public static int b(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static float c(int i9) {
        return i9 / Resources.getSystem().getDisplayMetrics().density;
    }

    public int a(float f10) {
        return (int) ((f10 * this.f743a) + 0.5f);
    }
}
