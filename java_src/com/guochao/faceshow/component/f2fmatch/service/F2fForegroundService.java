package com.guochao.faceshow.component.f2fmatch.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import com.guochao.faceshow.component.f2fmatch.R$drawable;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ServiceUtils;
import com.guochao.lib_base.R$mipmap;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.api.entity.core.CommonCode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\"\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0016¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;", "Landroid/app/Service;", "()V", "createNotification", "Landroid/app/Notification;", "onBind", "Landroid/os/IBinder;", "p0", "Landroid/content/Intent;", "onDestroy", "", "onStartCommand", "", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "flags", "startId", "Companion", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fForegroundService extends Service {
    @NotNull
    public static final Companion Companion = new Companion(null);

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService$Companion;", "", "()V", "start", "", "context", "Landroid/content/Context;", "stop", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void start(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                ServiceUtils.safeStartForegroundService(F2fForegroundService.class);
            } catch (Exception unused) {
            }
        }

        @JvmStatic
        public final void stop(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            ServiceUtils.safeStopForegroundService(F2fForegroundService.class);
        }
    }

    private final Notification createNotification() {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, "12");
        builder.setContentTitle("BuzzCast");
        builder.setContentText("1V1 Matching");
        builder.setSmallIcon(R$drawable.jpush_notification_icon);
        builder.setLargeIcon(BitmapFactory.decodeResource(getResources(), R$mipmap.ic_launcher));
        Intent putExtra = new Intent(this, F2fMatchActivity.class).putExtra("fromService", true);
        Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(this, F2fMatchAct…xtra(\"fromService\", true)");
        putExtra.addFlags(603979776);
        builder.setContentIntent(PendingIntent.getActivity(this, 100, putExtra, DensityUtil.getNotificationFlag()));
        Notification build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
        Object systemService = getSystemService(RemoteMessageConst.NOTIFICATION);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).notify(999999, build);
        return build;
    }

    @JvmStatic
    public static final void start(@NotNull Context context) {
        Companion.start(context);
    }

    @JvmStatic
    public static final void stop(@NotNull Context context) {
        Companion.stop(context);
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i9, int i10) {
        startForeground(999999, createNotification());
        return super.onStartCommand(intent, i9, i10);
    }
}
