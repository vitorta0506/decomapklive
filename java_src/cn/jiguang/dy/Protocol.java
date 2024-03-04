package cn.jiguang.dy;

import cn.jiguang.as.d;
/* loaded from: classes.dex */
public class Protocol {
    private static final String TAG = "Protocol";
    public static final String soName = "jcore290";

    static {
        try {
            System.loadLibrary("jcore290");
        } catch (Throwable th2) {
            d.i("PushProtocol", "System.loadLibrary::jcore290" + th2);
        }
    }

    public native int getVersion(int i9);
}
