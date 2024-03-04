package com.guochao.faceshow.utils;

import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.ArrayMap;
import com.google.android.exoplayer2.PlaybackException;
import com.guochao.faceshow.context.GCApplication;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\f\u001a\u00020\r2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0007J\u0014\u0010\u0010\u001a\u00020\r2\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0007R\u0018\u0010\u0003\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\n\n\u0002\u0010\u0006\u0012\u0004\b\u0005\u0010\u0002R\"\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b8\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u000b\u0010\u0002¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/utils/ServiceUtils;", "", "()V", "handler", "com/guochao/faceshow/utils/ServiceUtils$handler$1", "getHandler$annotations", "Lcom/guochao/faceshow/utils/ServiceUtils$handler$1;", "lastStartTimestamps", "Landroid/util/ArrayMap;", "", "", "getLastStartTimestamps$annotations", "safeStartForegroundService", "", "clz", "Ljava/lang/Class;", "safeStopForegroundService", "cla", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ServiceUtils {
    @NotNull
    private static final ServiceUtils$handler$1 handler;
    @NotNull
    public static final ServiceUtils INSTANCE = new ServiceUtils();
    @NotNull
    private static final ArrayMap<String, Long> lastStartTimestamps = new ArrayMap<>();

    /* JADX WARN: Type inference failed for: r1v0, types: [com.guochao.faceshow.utils.ServiceUtils$handler$1] */
    static {
        final Looper mainLooper = Looper.getMainLooper();
        handler = new Handler(mainLooper) { // from class: com.guochao.faceshow.utils.ServiceUtils$handler$1
            @Override // android.os.Handler
            public void handleMessage(@NotNull Message msg) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                super.handleMessage(msg);
                Object obj = msg.obj;
                Class cls = obj instanceof Class ? (Class) obj : null;
                if (cls != null) {
                    GCApplication app = GCApplication.app();
                    Intrinsics.checkNotNullExpressionValue(app, "app()");
                    app.stopService(new Intent(app, cls));
                }
            }
        };
    }

    private ServiceUtils() {
    }

    @JvmStatic
    private static /* synthetic */ void getHandler$annotations() {
    }

    @JvmStatic
    private static /* synthetic */ void getLastStartTimestamps$annotations() {
    }

    @JvmStatic
    public static final boolean safeStartForegroundService(@NotNull Class<?> clz) {
        Intrinsics.checkNotNullParameter(clz, "clz");
        try {
            handler.removeMessages(clz.getName().hashCode());
            GCApplication app = GCApplication.app();
            Intrinsics.checkNotNullExpressionValue(app, "app()");
            if (Build.VERSION.SDK_INT >= 26) {
                app.startForegroundService(new Intent(app, clz));
            } else {
                app.startService(new Intent(app, clz));
            }
            lastStartTimestamps.put(clz.getName(), Long.valueOf(System.currentTimeMillis()));
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @JvmStatic
    public static final boolean safeStopForegroundService(@NotNull Class<?> cla) {
        Intrinsics.checkNotNullParameter(cla, "cla");
        try {
            GCApplication app = GCApplication.app();
            Intrinsics.checkNotNullExpressionValue(app, "app()");
            Long l10 = lastStartTimestamps.get(cla.getName());
            long currentTimeMillis = System.currentTimeMillis();
            ServiceUtils$handler$1 serviceUtils$handler$1 = handler;
            serviceUtils$handler$1.removeMessages(cla.getName().hashCode());
            if (l10 == null) {
                app.stopService(new Intent(app, cla));
            } else if (currentTimeMillis - l10.longValue() <= 6000) {
                Message obtain = Message.obtain();
                obtain.what = cla.getName().hashCode();
                obtain.obj = cla;
                serviceUtils$handler$1.sendMessageDelayed(obtain, ((long) PlaybackException.ERROR_CODE_DRM_UNSPECIFIED) - (currentTimeMillis - l10.longValue()));
            } else {
                app.stopService(new Intent(app, cla));
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
