package p4;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class w {
    public static String a(String str, String[] strArr, String[] strArr2) {
        com.google.android.gms.common.internal.p.j(strArr);
        com.google.android.gms.common.internal.p.j(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i9 = 0; i9 < min; i9++) {
            String str2 = strArr[i9];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i9];
            }
        }
        return null;
    }

    public static String b(Context context, String str, String str2) {
        com.google.android.gms.common.internal.p.j(context);
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            str2 = l.a(context);
        }
        return l.b("google_app_id", resources, str2);
    }
}
