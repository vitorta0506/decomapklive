package com.tencent.liteav.audio.earmonitor;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.tencent.liteav.audio.earmonitor.a.b.a.c;
import com.tencent.liteav.audio.earmonitor.a.b.a.d;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.v;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class a extends SystemAudioKit implements com.tencent.liteav.audio.earmonitor.a.b.a.e, v.a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f30752a = (int) TimeUnit.SECONDS.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private final Context f30753b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f30754c;

    /* renamed from: d  reason: collision with root package name */
    private com.tencent.liteav.audio.earmonitor.a.b.a.d f30755d;

    /* renamed from: e  reason: collision with root package name */
    private com.tencent.liteav.audio.earmonitor.a.b.a.c f30756e;

    /* renamed from: f  reason: collision with root package name */
    private v f30757f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f30758g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f30759h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f30760i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(long j10, Context context) {
        super(j10);
        this.f30754c = new Handler(Looper.getMainLooper());
        this.f30758g = false;
        this.f30759h = false;
        this.f30760i = false;
        this.f30753b = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(a aVar, int i9) {
        if (aVar.f30756e == null) {
            return;
        }
        if (aVar.f30756e.a(c.a.CMD_SET_VOCAL_VOLUME_BASE, com.tencent.liteav.base.util.g.a(i9, 0, 100)) != 0) {
            aVar.notifySystemError(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(a aVar) {
        com.tencent.liteav.audio.earmonitor.a.b.a.c cVar = aVar.f30756e;
        if (cVar != null) {
            cVar.a();
            aVar.f30756e = null;
        }
        com.tencent.liteav.audio.earmonitor.a.b.a.d dVar = aVar.f30755d;
        if (dVar != null) {
            dVar.b();
            aVar.f30755d = null;
        }
        aVar.f30758g = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(a aVar) {
        if (aVar.f30755d != null) {
            return;
        }
        aVar.f30758g = true;
        com.tencent.liteav.audio.earmonitor.a.b.a.d dVar = new com.tencent.liteav.audio.earmonitor.a.b.a.d(aVar.f30753b, aVar);
        aVar.f30755d = dVar;
        dVar.a();
    }

    @Override // com.tencent.liteav.audio.earmonitor.a.b.a.e
    public final void a(int i9) {
        a(g.a(this, i9));
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void initialize() {
        a(b.a(this));
    }

    @Override // com.tencent.liteav.base.util.v.a
    public final void onTimeout() {
        boolean z10 = LiteavSystemInfo.getAppBackgroundState() == 1;
        if (this.f30760i && this.f30759h && !z10) {
            LiteavLog.i("HwSystemAudioKit", "app return to foreground.");
            b();
            a();
        } else if (z10 && !this.f30759h) {
            LiteavLog.i("HwSystemAudioKit", "app has gone to background.");
        }
        this.f30759h = z10;
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void setEarMonitoringVolume(int i9) {
        a(f.a(this, i9));
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void startEarMonitoring() {
        a(d.a(this));
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void stopEarMonitoring() {
        a(e.a(this));
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void terminate() {
        a(c.a(this));
    }

    private void a() {
        com.tencent.liteav.audio.earmonitor.a.b.a.c cVar = this.f30756e;
        if (cVar == null) {
            return;
        }
        int a10 = cVar.a(true);
        if (a10 != 0 && a10 != 1805) {
            notifySystemError(this);
        } else {
            this.f30760i = true;
        }
    }

    private void b() {
        com.tencent.liteav.audio.earmonitor.a.b.a.c cVar = this.f30756e;
        if (cVar == null) {
            return;
        }
        cVar.a(false);
        this.f30760i = false;
    }

    private void a(Runnable runnable) {
        if (Looper.myLooper() == this.f30754c.getLooper()) {
            runnable.run();
        } else {
            this.f30754c.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(a aVar) {
        if (aVar.f30757f == null) {
            v vVar = new v(Looper.getMainLooper(), aVar);
            aVar.f30757f = vVar;
            vVar.a(0, f30752a);
        }
        aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar, int i9) {
        LiteavLog.i("HwSystemAudioKit", "on audio kit callback: %d", Integer.valueOf(i9));
        if (i9 != 0) {
            if (i9 != 2 && i9 != 4 && i9 != 5 && i9 != 6 && i9 != 7) {
                switch (i9) {
                    case 1000:
                        aVar.notifyEarMonitoringInitialized(aVar, true);
                        return;
                    case 1001:
                    case 1002:
                    case 1003:
                        break;
                    default:
                        return;
                }
            }
            if (aVar.f30758g) {
                aVar.f30758g = false;
                aVar.notifyEarMonitoringInitialized(aVar, false);
                return;
            }
            aVar.notifySystemError(aVar);
            return;
        }
        aVar.f30758g = false;
        com.tencent.liteav.audio.earmonitor.a.b.a.d dVar = aVar.f30755d;
        if (dVar != null) {
            d.a aVar2 = d.a.HWAUDIO_FEATURE_KARAOKE;
            if (dVar.a(aVar2)) {
                aVar.f30756e = (com.tencent.liteav.audio.earmonitor.a.b.a.c) aVar.f30755d.b(aVar2);
                return;
            }
        }
        aVar.notifyEarMonitoringInitialized(aVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(a aVar) {
        v vVar = aVar.f30757f;
        if (vVar != null) {
            vVar.a();
            aVar.f30757f = null;
        }
        aVar.b();
    }
}
