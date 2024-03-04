package ec;

import android.content.Context;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static Context f38555a;

    public static Context a() {
        return f38555a;
    }

    public static void b(Context context) {
        if (context == null || f38555a != null) {
            return;
        }
        f38555a = context.getApplicationContext();
    }
}
