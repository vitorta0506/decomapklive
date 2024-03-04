package com.guochao.faceshow.service;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.IBinder;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import d9.c;
import eb.b;
/* loaded from: classes4.dex */
public class LiveForegroundService extends Service {

    /* renamed from: a  reason: collision with root package name */
    AlarmManager f26249a;

    /* renamed from: b  reason: collision with root package name */
    PendingIntent f26250b;

    /* renamed from: c  reason: collision with root package name */
    Runnable f26251c = new a();

    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                PendingIntent pendingIntent = LiveForegroundService.this.f26250b;
                if (pendingIntent != null) {
                    pendingIntent.send();
                }
            } catch (PendingIntent.CanceledException e10) {
                e10.printStackTrace();
            }
        }
    }

    private Notification a() {
        Class cls = LiveBroadCastActivity.class;
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, "12");
        builder.setContentTitle(b.y());
        builder.setContentText(getString(R.string.live_background_tips));
        builder.setSmallIcon(R.drawable.jpush_notification_icon);
        builder.setLargeIcon(BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher));
        if (!UserStateHolder.isLiving() && UserStateHolder.isWatchingLive()) {
            cls = WatchLiveRoomActivity.class;
        }
        Intent intent = new Intent(this, cls);
        intent.setAction(c.f37999d0);
        intent.addFlags(809500672);
        builder.setContentIntent(PendingIntent.getActivity(this, 100, intent, DensityUtil.getNotificationFlag()));
        return builder.build();
    }

    @Override // android.app.Service, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(q7.a.e().l(context));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f26249a = (AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM);
        startForeground(100, a());
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        PendingIntent pendingIntent = this.f26250b;
        if (pendingIntent != null) {
            try {
                this.f26249a.cancel(pendingIntent);
            } catch (Exception unused) {
            }
        }
        HandlerGetter.getMainHandler().removeCallbacks(this.f26251c);
        stopForeground(true);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i9, int i10) {
        startForeground(100, a());
        PendingIntent pendingIntent = this.f26250b;
        if (pendingIntent != null) {
            try {
                this.f26249a.cancel(pendingIntent);
            } catch (Exception unused) {
            }
        }
        this.f26250b = PendingIntent.getBroadcast(this, 1000, new Intent(c.f37999d0).putExtra(CrashHianalyticsData.TIME, 60000), DensityUtil.getNotificationFlag());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 31) {
            if (this.f26249a.canScheduleExactAlarms()) {
                this.f26249a.setExactAndAllowWhileIdle(2, SystemClock.elapsedRealtime() + 60000, this.f26250b);
            } else {
                HandlerGetter.getMainHandler().postDelayed(this.f26251c, 60000L);
            }
        } else if (i11 >= 23) {
            this.f26249a.setExactAndAllowWhileIdle(2, SystemClock.elapsedRealtime() + 60000, this.f26250b);
        } else {
            this.f26249a.setExact(2, SystemClock.elapsedRealtime() + 60000, this.f26250b);
        }
        return super.onStartCommand(intent, i9, i10);
    }
}
