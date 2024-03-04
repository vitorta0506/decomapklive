package cn.jiguang.ag;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import cn.jiguang.ag.c;
import cn.jiguang.o.d;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    Context f1847a;

    /* renamed from: b  reason: collision with root package name */
    String f1848b = d.g("7vqR3nNqKoDAlUrx74tE1g==");

    /* renamed from: c  reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f1849c = new LinkedBlockingQueue<>(1);

    /* renamed from: d  reason: collision with root package name */
    ServiceConnection f1850d = new ServiceConnection() { // from class: cn.jiguang.ag.b.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                b.this.f1849c.put(iBinder);
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("MsaOpenIDHelper", "linkedBlockingQueue error: " + th2.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public b(Context context) {
        this.f1847a = context;
    }

    private void a(String str) {
        Intent intent = new Intent();
        intent.setClassName(this.f1848b, d.g("dYE0CPNDFJTaYbJHvdYTELPkLL9xmlHysh4O1rCwUiLYHLJ6VxirNHcrSo3Xn2UJ"));
        intent.setAction(d.g("AdKS/+o+CvOMDbvCnPWRYS8wCU0Ooy6tyMT0tXjLMUvWRKeDq6D985Ar35mAOPu+"));
        intent.putExtra(d.g("iCmt493CpcicRY98bz8pUhEUlhy7cl4p/yoqnN2nlNM="), str);
        try {
            intent.putExtra(d.g("iCmt493CpcicRY98bz8pUjI+wbDT5u8oLPJxFa2B2Zg="), true);
            this.f1847a.startService(intent);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("MsaOpenIDHelper", "startMsaklServer error: " + th2.getMessage());
        }
    }

    public String a() {
        try {
            this.f1847a.getPackageManager().getPackageInfo(this.f1848b, 0);
            String packageName = this.f1847a.getPackageName();
            a(packageName);
            Intent intent = new Intent();
            intent.setClassName(this.f1848b, d.g("dYE0CPNDFJTaYbJHvdYTEBK/MhYfAvKlbba3ZFsuZ+on9OG47ABUmhfzcQhqhJOU"));
            intent.setAction(d.g("AdKS/+o+CvOMDbvCnPWRYUnA2ZKRLZpCerAAd95VliYNvOuVTnj4/o7GUNhJXhWl"));
            intent.putExtra(d.g("iCmt493CpcicRY98bz8pUhEUlhy7cl4p/yoqnN2nlNM="), packageName);
            if (this.f1847a.bindService(intent, this.f1850d, 1)) {
                try {
                    c.a.C0034a c0034a = new c.a.C0034a(this.f1849c.take());
                    String a10 = c0034a.a();
                    c0034a.b();
                    this.f1847a.unbindService(this.f1850d);
                    return a10;
                } catch (Throwable th2) {
                    try {
                        cn.jiguang.al.a.d("MsaOpenIDHelper", "getOAID error: " + th2.getMessage());
                    } finally {
                        this.f1847a.unbindService(this.f1850d);
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }
}
