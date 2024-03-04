package cn.jpush.android.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import cn.jiguang.al.a;
import cn.jiguang.aq.e;
/* loaded from: classes.dex */
public class DaemonService extends Service {
    private static final String TAG = "DaemonService";

    /* loaded from: classes.dex */
    public class MyBinder extends Binder {
        public MyBinder() {
        }

        public DaemonService getService() {
            return DaemonService.this;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        e.a(getApplicationContext(), intent != null ? intent.getExtras() : null, 2);
        return new MyBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        a.a(TAG, "action onCreate");
    }

    @Override // android.app.Service
    public void onDestroy() {
        a.a(TAG, "action onDestroy");
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        e.a(getApplicationContext(), intent != null ? intent.getExtras() : null, 1);
        return super.onStartCommand(intent, i9, i10);
    }
}
