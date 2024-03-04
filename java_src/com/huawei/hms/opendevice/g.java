package com.huawei.hms.opendevice;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes4.dex */
public class g implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Bundle f27635a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f27636b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ h f27637c;

    public g(h hVar, Bundle bundle, Context context) {
        this.f27637c = hVar;
        this.f27635a = bundle;
        this.f27636b = context;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ServiceConnection serviceConnection;
        Messenger messenger;
        HMSLog.i("RemoteService", "remote service onConnected");
        this.f27637c.f27639b = new Messenger(iBinder);
        Message obtain = Message.obtain();
        obtain.setData(this.f27635a);
        try {
            messenger = this.f27637c.f27639b;
            messenger.send(obtain);
        } catch (RemoteException unused) {
            HMSLog.i("RemoteService", "remote service message send failed");
        }
        HMSLog.i("RemoteService", "remote service unbindservice");
        Context context = this.f27636b;
        serviceConnection = this.f27637c.f27638a;
        context.unbindService(serviceConnection);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        HMSLog.i("RemoteService", "remote service onDisconnected");
        this.f27637c.f27639b = null;
    }
}
