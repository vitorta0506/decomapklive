package com.tencent.liteav.videoproducer.encoder;

import android.os.Bundle;
import android.os.SystemClock;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f32798a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32799b;

    private ad(w wVar, int i9) {
        this.f32798a = wVar;
        this.f32799b = i9;
    }

    public static Runnable a(w wVar, int i9) {
        return new ad(wVar, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        w wVar = this.f32798a;
        int i9 = this.f32799b;
        int i10 = wVar.f32982f.bitrate;
        if (i10 != i9) {
            boolean z10 = false;
            if (i9 < i10 && wVar.f32986j) {
                if (wVar.f32978b.getBoolean("need_restart_when_down_bitrate", false)) {
                    z10 = true;
                } else {
                    int i11 = 0;
                    while (i11 < 3) {
                        i11++;
                        wVar.f32987k.addLast(Long.valueOf(SystemClock.elapsedRealtime() + (i11 * TimeUnit.SECONDS.toMillis(2L))));
                    }
                    wVar.f32988l = i9;
                }
            }
            wVar.f32982f.bitrate = i9;
            if (LiteavSystemInfo.getSystemOSVersionInt() < 19 || wVar.f32980d == null) {
                return;
            }
            if (z10) {
                wVar.f32979c.removeCallbacks(wVar.f32989m);
                long elapsedRealtime = SystemClock.elapsedRealtime() - wVar.f32983g;
                if (elapsedRealtime >= TimeUnit.SECONDS.toMillis(2L)) {
                    wVar.f32989m.run();
                    return;
                } else {
                    wVar.f32979c.postDelayed(wVar.f32989m, 2000 - elapsedRealtime);
                    return;
                }
            }
            try {
                Bundle bundle = new Bundle();
                bundle.putInt("video-bitrate", i9 * 1024);
                wVar.f32980d.setParameters(bundle);
            } catch (Throwable th2) {
                LiteavLog.e(wVar.f32977a, "setBitrateInternal failed.", th2);
            }
        }
    }
}
