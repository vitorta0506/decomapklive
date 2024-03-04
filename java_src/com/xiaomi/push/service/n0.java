package com.xiaomi.push.service;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class n0 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f37309a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(a aVar) {
        this.f37309a = aVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        List<Message> list;
        List list2;
        Messenger messenger;
        synchronized (this.f37309a) {
            this.f37309a.f37131f = new Messenger(iBinder);
            this.f37309a.f37130e = false;
            list = this.f37309a.f37129d;
            for (Message message : list) {
                try {
                    messenger = this.f37309a.f37131f;
                    messenger.send(message);
                } catch (RemoteException e10) {
                    tf.c.o(e10);
                }
            }
            list2 = this.f37309a.f37129d;
            list2.clear();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f37309a.f37131f = null;
        this.f37309a.f37130e = false;
    }
}
