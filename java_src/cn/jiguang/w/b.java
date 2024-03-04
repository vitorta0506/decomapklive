package cn.jiguang.w;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public class b implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public boolean f2780a;

    /* renamed from: b  reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f2781b = new LinkedBlockingQueue<>(1);

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f2781b.put(iBinder);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("GoogleSericeConnection", "service is connect e: " + th2.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
