package cn.jiguang.s;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.api.JCoreManager;
import java.io.File;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {
    public static JSONObject a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                synchronized (str) {
                    Object onEvent = JCoreManager.onEvent(context, "JCOMMON", 42, null, null, str);
                    if (onEvent instanceof JSONObject) {
                        return (JSONObject) onEvent;
                    }
                    return null;
                }
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JCommonFileHelper", "readJson throwable:" + th2.getMessage());
            }
        }
        return null;
    }

    public static boolean a(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                synchronized (str) {
                    File d10 = cn.jiguang.o.d.d(context, str);
                    if (d10 == null) {
                        return false;
                    }
                    return cn.jiguang.o.d.a(d10, str2);
                }
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JCommonFileHelper", "writeString throwable:" + th2.getMessage());
            }
        }
        return false;
    }

    public static boolean a(Context context, String str, JSONObject jSONObject) {
        boolean booleanValue;
        if (context != null && !TextUtils.isEmpty(str) && jSONObject != null) {
            try {
                synchronized (str) {
                    Object onEvent = JCoreManager.onEvent(context, "JCOMMON", 41, null, null, str, jSONObject);
                    booleanValue = onEvent instanceof Boolean ? ((Boolean) onEvent).booleanValue() : false;
                }
                return booleanValue;
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JCommonFileHelper", "writeJson throwable:" + th2.getMessage());
            }
        }
        return false;
    }

    public static void b(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (a(context, str, (JSONObject) null)) {
                return;
            }
            synchronized (str) {
                context.deleteFile(str);
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JCommonFileHelper", "cleanJson throwable:" + th2.getMessage());
        }
    }

    public static boolean b(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                synchronized (str) {
                    if (cn.jiguang.o.d.d(context, str) == null) {
                        return false;
                    }
                    return ((Boolean) JCoreManager.onEvent(context, "JCOMMON", 79, null, null, str, str2)).booleanValue();
                }
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JCommonFileHelper", "writeString throwable:" + th2.getMessage());
            }
        }
        return false;
    }

    public static String c(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                synchronized (str) {
                    File d10 = cn.jiguang.o.d.d(context, str);
                    if (d10 == null) {
                        return null;
                    }
                    return cn.jiguang.o.d.a(d10);
                }
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JCommonFileHelper", "readString throwable:" + th2.getMessage());
            }
        }
        return null;
    }

    public static void d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            synchronized (str) {
                File d10 = cn.jiguang.o.d.d(context, str);
                if (d10 == null) {
                    return;
                }
                cn.jiguang.o.d.a(d10, "");
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JCommonFileHelper", "cleanString throwable:" + th2.getMessage());
        }
    }
}
