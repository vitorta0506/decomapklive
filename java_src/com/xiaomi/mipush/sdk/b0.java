package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class b0 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w f36215a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(w wVar) {
        this.f36215a = wVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        List<Message> list;
        List list2;
        Messenger messenger;
        synchronized (this.f36215a) {
            this.f36215a.f36306d = new Messenger(iBinder);
            this.f36215a.f36309g = false;
            list = this.f36215a.f36308f;
            for (Message message : list) {
                try {
                    messenger = this.f36215a.f36306d;
                    messenger.send(message);
                } catch (RemoteException e10) {
                    tf.c.o(e10);
                }
            }
            list2 = this.f36215a.f36308f;
            list2.clear();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f36215a.f36306d = null;
        this.f36215a.f36309g = false;
    }
}
