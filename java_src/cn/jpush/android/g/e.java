package cn.jpush.android.g;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
final class e implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f3082a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ d f3083b;

    private e(d dVar) {
        this.f3083b = dVar;
        this.f3082a = new LinkedBlockingQueue<>(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ e(d dVar, byte b10) {
        this(dVar);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            a.f3080a.set(false);
            cn.jpush.android.i.b.b("ServiceConnection", "onServiceConnected:" + componentName);
            if (iBinder != null) {
                this.f3082a.put(iBinder);
            } else {
                cn.jpush.android.i.b.g("ServiceConnection", "onServiceConnected, but IBinder is null.");
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        a.f3080a.set(false);
        d.a(this.f3083b, (cn.asus.push.d) null);
        cn.jpush.android.i.b.g("ServiceConnection", "onServiceDisconnected:" + componentName);
    }
}
