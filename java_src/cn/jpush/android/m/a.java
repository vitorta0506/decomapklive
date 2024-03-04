package cn.jpush.android.m;

import cn.jiguang.internal.JConstants;
import cn.jpush.android.local.JPushConstants;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f3138a = 422;

    /* renamed from: b  reason: collision with root package name */
    public static String f3139b = "4.2.2";

    /* renamed from: c  reason: collision with root package name */
    public static final int f3140c = JConstants.SDK_VERSION_INT;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f3141d = false;

    public static boolean a() {
        try {
            return JPushConstants.THIRD_ENABLE;
        } catch (Throwable unused) {
            return true;
        }
    }
}
