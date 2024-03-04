package cn.jiguang.ay;

import com.meizu.cloud.pushsdk.notification.model.ActVideoSetting;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static f f2289a;

    /* renamed from: b  reason: collision with root package name */
    private static String[] f2290b;

    /* renamed from: c  reason: collision with root package name */
    private static String[] f2291c;

    static {
        f fVar = new f("Message Section", 3);
        f2289a = fVar;
        f2290b = new String[4];
        f2291c = new String[4];
        fVar.a(3);
        f2289a.a(true);
        f2289a.a(0, "qd");
        f2289a.a(1, "an");
        f2289a.a(2, ActVideoSetting.ACT_URL);
        f2289a.a(3, "ad");
        String[] strArr = f2290b;
        strArr[0] = "QUESTIONS";
        strArr[1] = "ANSWERS";
        strArr[2] = "AUTHORITY RECORDS";
        strArr[3] = "ADDITIONAL RECORDS";
        String[] strArr2 = f2291c;
        strArr2[0] = "ZONE";
        strArr2[1] = "PREREQUISITES";
        strArr2[2] = "UPDATE RECORDS";
        strArr2[3] = "ADDITIONAL RECORDS";
    }

    public static String a(int i9) {
        return f2289a.d(i9);
    }
}
