package cn.jiguang.ah;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public class b implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f1855a = new LinkedBlockingQueue<>(1);

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f1855a.put(iBinder);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("ZuiSericeConnection", "service connect error: " + th2.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
