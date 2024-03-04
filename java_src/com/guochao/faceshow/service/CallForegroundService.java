package com.guochao.faceshow.service;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import b8.e;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.trtc.call.a;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.d;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.utils.DensityUtil;
import eb.b;
import java.util.List;
/* loaded from: classes4.dex */
public class CallForegroundService extends Service implements d.a {
    private Notification a() {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, "12");
        builder.setContentTitle(b.y());
        CallModel q10 = a.r().q();
        if (q10 != null) {
            if (e.g().getUserId().equals(q10.getCurrentUserId()) || a.r().v()) {
                builder.setContentText(getString(R.string.trtc_call_background_tips));
            } else {
                builder.setContentText(getString(q10.callType == 2 ? R.string.trtc_video_message : R.string.trtc_voice_message, new Object[]{q10.getUserName()}));
            }
        }
        builder.setSmallIcon(R.drawable.jpush_notification_icon);
        builder.setLargeIcon(BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher));
        Intent intent = new Intent(this, BaseApplication.getInstance().getCurrTopActivity() == null ? MainActivity.class : BaseApplication.getInstance().getCurrTopActivity().getClass());
        intent.addFlags(809500672);
        builder.setContentIntent(PendingIntent.getActivity(this, 100, intent, DensityUtil.getNotificationFlag()));
        return builder.build();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void A1(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void E1(String str) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void I(String str, String str2, CallModel callModel) {
        stopSelf();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void K0(String str, String str2, CallModel callModel) {
        stopSelf();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public /* synthetic */ void L0(String str, int i9, int i10, int i11) {
        x9.a.a(this, str, i9, i10, i11);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void O0(String str, List<String> list, CallModel callModel) {
        stopSelf();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void R(String str, int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void R0(String str, boolean z10) {
    }

    @Override // android.app.Service, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(q7.a.e().l(context));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void f1(long j10) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void j1(CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void n1(String str, String str2, CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void o(CallModel callModel) {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        d.a().c(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        stopForeground(true);
        d.a().d(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i9, int i10) {
        startForeground(12, a());
        return super.onStartCommand(intent, i9, i10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void s1(CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void v(String str, String str2, CallModel callModel) {
        stopSelf();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void v1(int i9, String str, Bundle bundle) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void w1(String str, boolean z10) {
    }
}
