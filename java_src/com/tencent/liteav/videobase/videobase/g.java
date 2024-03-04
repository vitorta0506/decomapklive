package com.tencent.liteav.videobase.videobase;

import android.view.TextureView;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
public final class g {
    public static void a(TXCloudVideoView tXCloudVideoView, boolean z10, com.tencent.rtmp.ui.a aVar) {
        a(tXCloudVideoView, "setTouchToFocusEnabled", new Class[]{Boolean.TYPE, com.tencent.rtmp.ui.a.class}, Boolean.valueOf(z10), aVar);
    }

    public static void a(TXCloudVideoView tXCloudVideoView, boolean z10, com.tencent.rtmp.ui.b bVar) {
        a(tXCloudVideoView, "setZoomEnabled", new Class[]{Boolean.TYPE, com.tencent.rtmp.ui.b.class}, Boolean.valueOf(z10), bVar);
    }

    public static void a(TXCloudVideoView tXCloudVideoView, int i9, int i10, int i11, int i12) {
        Class cls = Integer.TYPE;
        a(tXCloudVideoView, "showFocusView", new Class[]{cls, cls, cls, cls}, Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static TextureView a(TXCloudVideoView tXCloudVideoView) {
        Object a10 = a(tXCloudVideoView, "getTextureViewSetByUser", null, new Object[0]);
        if (a10 instanceof TextureView) {
            return (TextureView) a10;
        }
        return null;
    }

    public static Object a(TXCloudVideoView tXCloudVideoView, @NonNull String str, Class<?>[] clsArr, Object... objArr) {
        if (tXCloudVideoView == null) {
            LiteavLog.w("TXCCloudVideoViewMethodInvoker", str + ",TXCloudVideoView is null.");
            return null;
        }
        try {
            Method declaredMethod = TXCloudVideoView.class.getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(tXCloudVideoView, objArr);
        } catch (Exception e10) {
            LiteavLog.e("TXCCloudVideoViewMethodInvoker", str + ",Exception:", e10);
            return null;
        }
    }
}
