package com.guochao.faceshow.aaspring.modulars.trtc;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.IBinder;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.utils.DensityUtil;
import eb.b;
/* loaded from: classes3.dex */
public class ScreenShotService extends Service {

    /* loaded from: classes3.dex */
    public interface a {
        void onMediaProjectionValue(MediaProjection mediaProjection);
    }

    private Notification a() {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL);
        builder.setContentTitle(b.y());
        builder.setContentText(getString(R.string.trtc_call_snap_shot));
        builder.setSmallIcon(R.drawable.jpush_notification_icon);
        builder.setLargeIcon(BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher));
        Intent intent = new Intent(this, BaseApplication.getInstance().getCurrTopActivity() == null ? MainActivity.class : BaseApplication.getInstance().getCurrTopActivity().getClass());
        intent.addFlags(809500672);
        builder.setContentIntent(PendingIntent.getActivity(this, 100, intent, DensityUtil.getNotificationFlag()));
        return builder.build();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i9, int i10) {
        startForeground(100, a());
        Object remove = MemoryCache.getInstance().remove("OnMediaProjectionProvider");
        int intExtra = intent.getIntExtra("code", -1);
        Intent intent2 = (Intent) intent.getParcelableExtra("data");
        if (intent2 != null) {
            MediaProjection mediaProjection = ((MediaProjectionManager) getSystemService("media_projection")).getMediaProjection(intExtra, intent2);
            LogUtils.i("zune：", "mediaProjection1 created: " + mediaProjection);
            if (remove instanceof a) {
                ((a) remove).onMediaProjectionValue(mediaProjection);
            }
        }
        return super.onStartCommand(intent, i9, i10);
    }
}
