package com.huawei.hms.push;

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
    public final /* synthetic */ Bundle f27722a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f27723b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ h f27724c;

    public g(h hVar, Bundle bundle, Context context) {
        this.f27724c = hVar;
        this.f27722a = bundle;
        this.f27723b = context;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ServiceConnection serviceConnection;
        Messenger messenger;
        HMSLog.i("RemoteService", "remote service onConnected");
        this.f27724c.f27726b = new Messenger(iBinder);
        Message obtain = Message.obtain();
        obtain.setData(this.f27722a);
        try {
            messenger = this.f27724c.f27726b;
            messenger.send(obtain);
        } catch (RemoteException unused) {
            HMSLog.i("RemoteService", "remote service message send failed");
        }
        HMSLog.i("RemoteService", "remote service unbindservice");
        Context context = this.f27723b;
        serviceConnection = this.f27724c.f27725a;
        context.unbindService(serviceConnection);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        HMSLog.i("RemoteService", "remote service onDisconnected");
        this.f27724c.f27726b = null;
    }
}
