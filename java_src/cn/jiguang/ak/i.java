package cn.jiguang.ak;

import android.location.GpsStatus;
import android.location.Location;
/* loaded from: classes.dex */
class i implements GpsStatus.Listener {

    /* renamed from: a  reason: collision with root package name */
    private a f1957a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(a aVar) {
        this.f1957a = aVar;
    }

    @Override // android.location.GpsStatus.Listener
    public void onGpsStatusChanged(int i9) {
        final Location a10;
        if (i9 == 1) {
            cn.jiguang.al.a.a("GpsStatuListener", "onGpsStatus start");
            this.f1957a.f1901d = System.currentTimeMillis() - (c.f1928m * 1000);
        } else if (i9 != 4) {
        } else {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                a aVar = this.f1957a;
                if (currentTimeMillis - aVar.f1901d > c.f1928m * 1000) {
                    aVar.f1901d = currentTimeMillis;
                    aVar.f1903f = 0;
                }
                int i10 = aVar.f1903f;
                if (i10 >= 3 || currentTimeMillis - aVar.f1902e < 2000) {
                    return;
                }
                aVar.f1903f = i10 + 1;
                aVar.f1902e = currentTimeMillis;
                if (d.a().b() && (a10 = this.f1957a.a(true)) != null && "gps".equals(a10.getProvider())) {
                    Location location = this.f1957a.f1898a;
                    if (location == null || a10.distanceTo(location) >= c.f1929n) {
                        cn.jiguang.av.b.d(new Runnable() { // from class: cn.jiguang.ak.i.1
                            @Override // java.lang.Runnable
                            public void run() {
                                i.this.f1957a.f1900c.a(a10);
                            }
                        }, new int[0]);
                        this.f1957a.f1898a = new Location(a10);
                    }
                }
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("GpsStatuListener", "onGpsStatus error:" + th2);
            }
        }
    }
}
