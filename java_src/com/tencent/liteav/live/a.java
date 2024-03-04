package com.tencent.liteav.live;

import com.tencent.rtmp.ui.TXCloudVideoView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Method f31230a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f31231b;

    static {
        try {
            Method declaredMethod = TXCloudVideoView.class.getDeclaredMethod("setShowLogCallback", WeakReference.class);
            f31230a = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = TXCloudVideoView.class.getDeclaredMethod("isShowLogEnabled", new Class[0]);
            f31231b = declaredMethod2;
            declaredMethod2.setAccessible(true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean a(TXCloudVideoView tXCloudVideoView) {
        if (tXCloudVideoView == null) {
            return false;
        }
        try {
            Object invoke = f31231b.invoke(tXCloudVideoView, new Object[0]);
            if (invoke == null || !(invoke instanceof Boolean)) {
                return false;
            }
            return ((Boolean) invoke).booleanValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void a(TXCloudVideoView tXCloudVideoView, WeakReference<TXCloudVideoView.b> weakReference) {
        if (tXCloudVideoView == null) {
            return;
        }
        try {
            f31230a.invoke(tXCloudVideoView, weakReference);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
