package com.huawei.hms.push;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.support.log.HMSLog;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public abstract class s {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f27764a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static int f27765b = -1;

    public static boolean a(Context context) {
        HMSLog.d("CommFun", "existFrameworkPush:" + f27765b);
        try {
            File file = new File("/system/framework/hwpush.jar");
            if (a()) {
                HMSLog.d("CommFun", "push jarFile is exist");
                return true;
            } else if (file.isFile()) {
                HMSLog.d("CommFun", "push jarFile is exist");
                return true;
            } else {
                return false;
            }
        } catch (Exception e10) {
            HMSLog.e("CommFun", "get Apk version faild ,Exception e= " + e10.toString());
            return false;
        }
    }

    public static long b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.huawei.android.pushagent", 16384).versionCode;
        } catch (Exception unused) {
            HMSLog.e("CommFun", "get nc versionCode error");
            return -1L;
        }
    }

    public static boolean c() {
        return HwBuildEx.VERSION.EMUI_SDK_INT < 19;
    }

    public static boolean d(Context context) {
        HMSLog.d("CommFun", "existFrameworkPush:" + f27765b);
        synchronized (f27764a) {
            int i9 = f27765b;
            if (-1 != i9) {
                return 1 == i9;
            }
            if (a(context)) {
                f27765b = 1;
            } else {
                f27765b = 0;
            }
            return 1 == f27765b;
        }
    }

    public static String c(Context context) {
        return sb.a.d(context).b("client/project_id");
    }

    public static boolean b() {
        return HwBuildEx.VERSION.EMUI_SDK_INT >= 21;
    }

    public static boolean a() {
        try {
            Class<?> cls = Class.forName("huawei.cust.HwCfgFilePolicy");
            int intValue = ((Integer) cls.getDeclaredField("CUST_TYPE_CONFIG").get(cls)).intValue();
            Method declaredMethod = cls.getDeclaredMethod("getCfgFile", String.class, Integer.TYPE);
            Object[] objArr = new Object[2];
            objArr[0] = "jars/hwpush.jar";
            objArr[1] = Integer.valueOf(intValue);
            File file = (File) declaredMethod.invoke(cls, objArr);
            if (file != null && file.exists()) {
                HMSLog.d("CommFun", "get push cust File path success.");
                return true;
            }
        } catch (ClassNotFoundException unused) {
            HMSLog.e("CommFun", "HwCfgFilePolicy ClassNotFoundException");
        } catch (IllegalAccessException unused2) {
            HMSLog.e("CommFun", "check cust exist push IllegalAccessException.");
        } catch (IllegalArgumentException unused3) {
            HMSLog.e("CommFun", "check cust exist push IllegalArgumentException.");
        } catch (NoSuchFieldException unused4) {
            HMSLog.e("CommFun", "check cust exist push NoSuchFieldException.");
        } catch (NoSuchMethodException unused5) {
            HMSLog.e("CommFun", "check cust exist push NoSuchMethodException.");
        } catch (SecurityException unused6) {
            HMSLog.e("CommFun", "check cust exist push SecurityException.");
        } catch (InvocationTargetException unused7) {
            HMSLog.e("CommFun", "check cust exist push InvocationTargetException.");
        }
        return false;
    }

    public static boolean a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        return jSONObject == null || (TextUtils.isEmpty(str) && jSONObject2 == null);
    }
}
