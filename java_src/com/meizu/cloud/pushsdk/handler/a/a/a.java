package com.meizu.cloud.pushsdk.handler.a.a;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.handler.MessageV3;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSettingEx;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f28677a;

    /* renamed from: b  reason: collision with root package name */
    private com.meizu.cloud.pushsdk.b.a.a f28678b;

    /* renamed from: c  reason: collision with root package name */
    private int f28679c;

    /* renamed from: d  reason: collision with root package name */
    private Notification f28680d;

    public a(Context context) {
        this.f28677a = context;
    }

    private void a(int i9, Notification notification) {
        this.f28679c = i9;
        this.f28680d = notification;
    }

    private void b() {
        this.f28679c = 0;
        this.f28680d = null;
        com.meizu.cloud.pushsdk.b.a.a aVar = this.f28678b;
        try {
            if (aVar != null) {
                try {
                    aVar.b();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } finally {
            this.f28678b = null;
        }
    }

    private void b(int i9) {
        if (i9 <= 0) {
            return;
        }
        com.meizu.cloud.pushsdk.b.a.a aVar = this.f28678b;
        if (aVar != null) {
            try {
                try {
                    aVar.b();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } finally {
                this.f28678b = null;
            }
        }
        com.meizu.cloud.pushsdk.b.a.a aVar2 = new com.meizu.cloud.pushsdk.b.a.a(this.f28677a, new Runnable() { // from class: com.meizu.cloud.pushsdk.handler.a.a.a.1
            @Override // java.lang.Runnable
            public void run() {
                DebugLogger.d("AdNotification", "ad priority valid time out");
                a.this.a();
            }
        }, i9 * 60 * 1000);
        this.f28678b = aVar2;
        aVar2.a();
    }

    public void a() {
        if (this.f28679c <= 0 || this.f28680d == null) {
            return;
        }
        try {
            ((NotificationManager) this.f28677a.getSystemService(RemoteMessageConst.NOTIFICATION)).notify(this.f28679c, this.f28680d);
            DebugLogger.d("AdNotification", "again show old ad notification, notifyId:" + this.f28679c);
        } catch (Exception e10) {
            e10.printStackTrace();
            DebugLogger.e("AdNotification", "again show old ad notification error:" + e10.getMessage());
        }
        b();
    }

    public void a(int i9) {
        int i10;
        if (i9 <= 0 || (i10 = this.f28679c) <= 0 || i9 != i10) {
            return;
        }
        b();
        DebugLogger.d("AdNotification", "clean ad notification, notifyId:" + i9);
    }

    public void a(int i9, Notification notification, int i10) {
        if (i9 <= 0 || notification == null) {
            return;
        }
        a(i9, notification);
        b(i10);
        DebugLogger.d("AdNotification", "save ad notification, notifyId:" + i9);
    }

    public void a(MessageV3 messageV3) {
        AdvanceSetting advanceSetting = messageV3.getAdvanceSetting();
        if (advanceSetting != null) {
            advanceSetting.getNotifyType().setSound(false);
            advanceSetting.getNotifyType().setLights(false);
            advanceSetting.getNotifyType().setVibrate(false);
        }
        AdvanceSettingEx advanceSettingEx = messageV3.getAdvanceSettingEx();
        if (advanceSettingEx != null) {
            advanceSettingEx.setSoundTitle(null);
            if (Build.VERSION.SDK_INT < 29 || advanceSetting == null || !advanceSetting.isHeadUpNotification()) {
                advanceSettingEx.setPriorityDisplay(0);
            } else {
                advanceSettingEx.setPriorityDisplay(1);
            }
        }
    }
}
