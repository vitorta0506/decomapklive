package va;

import android.view.View;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static long f59074a;

    /* renamed from: b  reason: collision with root package name */
    private static long f59075b;

    public static boolean a(View view) {
        long hashCode = view == null ? 0 : view.hashCode();
        if (f59075b != hashCode) {
            f59075b = hashCode;
            f59074a = System.currentTimeMillis();
            return true;
        } else if (f59074a == 0 || System.currentTimeMillis() - f59074a > 2000) {
            f59074a = System.currentTimeMillis();
            return true;
        } else {
            return false;
        }
    }
}
