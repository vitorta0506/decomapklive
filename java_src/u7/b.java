package u7;

import android.content.Context;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f58380a;

    public static b a(Context context) {
        if (f58380a == null) {
            synchronized (b.class) {
                if (f58380a == null) {
                    f58380a = new b();
                }
            }
        }
        return f58380a;
    }
}
