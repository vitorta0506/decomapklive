package cn.jiguang.af;

import android.content.Context;
import android.os.Build;
import cn.jiguang.o.d;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {
    private static Class<?> a(Context context, String str) {
        if (str == null || str.trim().length() == 0) {
            throw new ClassNotFoundException("class is empty");
        }
        boolean z10 = context != null;
        if (z10 && Build.VERSION.SDK_INT >= 29) {
            try {
                return context.getClassLoader().loadClass(str);
            } catch (ClassNotFoundException e10) {
                cn.jiguang.al.a.d("IdProvider", "loadClass error, " + e10.getMessage());
            }
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e11) {
            cn.jiguang.al.a.d("IdProvider", String.format("loadClass fail hasContext= %s, errMsg = %s", Boolean.valueOf(z10), e11.getLocalizedMessage()));
            throw new ClassNotFoundException("loadClass fail ", e11);
        }
    }

    public static String a(Context context) {
        try {
            Class<?> a10 = a(context, d.g("KIHhQylffktk79IAY9r8iabG5YlYSM/WswW6fWtc2r2WbTdKR65l5atPPp2u96wd"));
            Object newInstance = a10.newInstance();
            Method method = a10.getMethod(d.g("Oi3ZFT8+schQHSyFZbsdUg=="), Context.class);
            Method method2 = a10.getMethod(d.g("fIdCW1auJ/CZh7w78TbJVQ=="), Context.class);
            Object invoke = a10.getMethod(d.g("cBEuCuv+AtdlTcgTe9OgSQ=="), Context.class).invoke(newInstance, context);
            Object invoke2 = method2.invoke(newInstance, context);
            Object invoke3 = method.invoke(newInstance, context);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("joad", invoke3);
            jSONObject.put("jvad", invoke2);
            jSONObject.put("jaad", invoke);
            return jSONObject.toString();
        } catch (Throwable th2) {
            cn.jiguang.al.a.e("IdProvider", "getIds failed:" + th2.getMessage());
            return "";
        }
    }
}
