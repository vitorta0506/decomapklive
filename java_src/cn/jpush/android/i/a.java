package cn.jpush.android.i;

import android.util.Log;
import cn.jpush.android.f.c;
/* loaded from: classes.dex */
public final class a {
    public static void a(String str, String str2, int i9, String str3) {
        try {
            if (c.f3063d || i9 >= 5) {
                if (i9 >= 3) {
                    if (i9 == 2) {
                        Log.v("JIGUANG-" + str, "[" + str2 + "] " + str3);
                    } else if (i9 == 3) {
                        Log.d("JIGUANG-" + str, "[" + str2 + "] " + str3);
                    } else if (i9 == 4) {
                        Log.i("JIGUANG-" + str, "[" + str2 + "] " + str3);
                    } else if (i9 == 5) {
                        Log.w("JIGUANG-" + str, "[" + str2 + "] " + str3);
                    } else if (i9 != 6) {
                    } else {
                        Log.e("JIGUANG-" + str, "[" + str2 + "] " + str3);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
