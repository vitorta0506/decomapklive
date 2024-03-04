package cn.jpush.android.aa;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public class i {
    public static boolean a(ArrayList<String> arrayList, Context context, String str, String str2, boolean z10) {
        String str3;
        Logger.v("RichHelper", "action:loadHtmlImageResources - urlPrefix:" + str);
        if (!cn.jpush.android.af.a.c(str) || context == null || arrayList.size() <= 0 || TextUtils.isEmpty(str2)) {
            return true;
        }
        Iterator<String> it = arrayList.iterator();
        boolean z11 = true;
        while (it.hasNext()) {
            String next = it.next();
            if (next == null || next.startsWith("http://") || next.startsWith("https://")) {
                str3 = next;
            } else {
                str3 = str + next;
            }
            byte[] b10 = cn.jpush.android.z.a.b(str3, 5, 5000L);
            if (b10 != null) {
                try {
                    String str4 = "";
                    if (next.startsWith("http://") || next.startsWith("https://")) {
                        str4 = next.substring(0, next.lastIndexOf(FileUtils.RES_PREFIX_STORAGE) + 1);
                        next = cn.jpush.android.af.c.b(next);
                    }
                    String b11 = !z10 ? cn.jpush.android.af.c.b(context, str2) : cn.jpush.android.af.c.c(context, str2);
                    if (!TextUtils.isEmpty(str4)) {
                        b11 = str4.replaceAll(str, b11);
                    }
                    String str5 = b11 + next;
                    cn.jpush.android.af.c.a(str5, b10);
                    Logger.v("RichHelper", "Succeed to load image - " + str5);
                } catch (Exception e10) {
                    Logger.ww("RichHelper", "Write storage error,  create img file fail.", e10);
                }
            } else {
                cn.jpush.android.helper.c.a(str2, 1020, (String) null, context);
            }
            z11 = false;
        }
        return z11;
    }
}
