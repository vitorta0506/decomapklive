package cn.jiguang.ag;

import android.text.TextUtils;
/* loaded from: classes.dex */
public class a {
    public static boolean a() {
        String property = System.getProperty("ro.build.freeme.label");
        return !TextUtils.isEmpty(property) && property.equalsIgnoreCase("FREEMEOS");
    }

    public static boolean b() {
        String property = System.getProperty("ro.ssui.product");
        return (TextUtils.isEmpty(property) || property.equalsIgnoreCase("unknown")) ? false : true;
    }
}
