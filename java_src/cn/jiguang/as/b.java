package cn.jiguang.as;

import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import cn.jiguang.internal.JConstants;
/* loaded from: classes.dex */
public class b {
    public static void a(String str, String str2, boolean z10, int i9, String str3, Throwable th2) {
        String str4;
        StringBuilder sb2;
        try {
            if (cn.jiguang.a.a.f1813g) {
                if (i9 == 2) {
                    str4 = ExifInterface.GPS_DIRECTION_TRUE;
                    sb2 = new StringBuilder();
                    sb2.append("JIGUANG-");
                    sb2.append(str);
                } else if (i9 == 3) {
                    str4 = "D";
                    sb2 = new StringBuilder();
                    sb2.append("JIGUANG-");
                    sb2.append(str);
                } else if (i9 == 4) {
                    str4 = "I";
                    sb2 = new StringBuilder();
                    sb2.append("JIGUANG-");
                    sb2.append(str);
                } else if (i9 == 5) {
                    str4 = ExifInterface.LONGITUDE_WEST;
                    sb2 = new StringBuilder();
                    sb2.append("JIGUANG-");
                    sb2.append(str);
                } else if (i9 == 6) {
                    str4 = ExifInterface.LONGITUDE_EAST;
                    sb2 = new StringBuilder();
                    sb2.append("JIGUANG-");
                    sb2.append(str);
                }
                c.a(str4, sb2.toString(), str2, str3, null);
            }
            if (JConstants.DEBUG_MODE || i9 >= 5) {
                if ((JConstants.INTERNAL_USE || !z10 || i9 >= 6) && a(i9)) {
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

    private static boolean a(int i9) {
        return i9 >= 2;
    }
}
