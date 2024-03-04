package com.guochao.faceshow.service;

import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.utils.DensityUtil;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.tencent.thumbplayer.core.common.TPGeneralError;
import d9.c;
import eb.b;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
import q7.a;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\n\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\"\u0010\u000f\u001a\u00020\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016¨\u0006\u0013"}, d2 = {"Lcom/guochao/faceshow/service/WatchingLiveForegroundService;", "Landroid/app/Service;", "()V", "attachBaseContext", "", "base", "Landroid/content/Context;", "createNotification", "Landroid/app/Notification;", "onBind", "Landroid/os/IBinder;", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "Landroid/content/Intent;", "onCreate", "onDestroy", "onStartCommand", "", "flags", "startId", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class WatchingLiveForegroundService extends Service {
    private final Notification createNotification() {
        Activity activity = AppManager.getInstance().getActivity(WatchLiveRoomActivity.class);
        WatchLiveRoomActivity watchLiveRoomActivity = activity instanceof WatchLiveRoomActivity ? (WatchLiveRoomActivity) activity : null;
        boolean isVoiceRoom = watchLiveRoomActivity != null ? watchLiveRoomActivity.f18075l.getCurrentGCLiveRoomModel().isVoiceRoom() : false;
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, "12");
        builder.setContentTitle(b.y());
        if (isVoiceRoom) {
            builder.setContentText(getString(R.string.voice_room_notification_tips));
        } else {
            builder.setContentText(getString(R.string.live_background_tips));
        }
        builder.setSmallIcon(R.drawable.jpush_notification_icon);
        builder.setLargeIcon(BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher));
        Intent intent = new Intent(this, WatchLiveRoomActivity.class);
        intent.setAction(c.f37999d0);
        intent.addFlags(809500672);
        builder.setContentIntent(PendingIntent.getActivity(this, 100, intent, DensityUtil.getNotificationFlag()));
        return builder.build();
    }

    @Override // android.app.Service, android.content.ContextWrapper
    protected void attachBaseContext(@Nullable Context context) {
        super.attachBaseContext(a.e().l(context));
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@Nullable Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        startForeground(TPGeneralError.FAILED, createNotification());
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        try {
            stopForeground(true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i9, int i10) {
        startForeground(TPGeneralError.FAILED, createNotification());
        return super.onStartCommand(intent, i9, i10);
    }
}
