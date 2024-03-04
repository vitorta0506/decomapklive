package com.tencent.liteav.audio.earmonitor.a.b.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.liteav.audio.earmonitor.a.a.b;
import com.tencent.liteav.base.util.LiteavLog;
/* loaded from: classes4.dex */
public final class c extends com.tencent.liteav.audio.earmonitor.a.b.a.a {

    /* renamed from: a  reason: collision with root package name */
    Context f30769a;

    /* renamed from: b  reason: collision with root package name */
    b f30770b;

    /* renamed from: d  reason: collision with root package name */
    com.tencent.liteav.audio.earmonitor.a.a.b f30772d;

    /* renamed from: c  reason: collision with root package name */
    boolean f30771c = false;

    /* renamed from: e  reason: collision with root package name */
    IBinder f30773e = null;

    /* renamed from: g  reason: collision with root package name */
    private ServiceConnection f30775g = new ServiceConnection() { // from class: com.tencent.liteav.audio.earmonitor.a.b.a.c.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            c.this.f30772d = b.a.a(iBinder);
            c cVar = c.this;
            if (cVar.f30772d != null) {
                cVar.f30771c = true;
                cVar.f30770b.a(1000);
                c cVar2 = c.this;
                String packageName = cVar2.f30769a.getPackageName();
                try {
                    com.tencent.liteav.audio.earmonitor.a.a.b bVar = cVar2.f30772d;
                    if (bVar != null && cVar2.f30771c) {
                        bVar.a(packageName);
                    }
                } catch (RemoteException e10) {
                    LiteavLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "isFeatureSupported,RemoteException ex : %s", e10.getMessage());
                }
                c.a(c.this, iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            c cVar = c.this;
            cVar.f30771c = false;
            b bVar = cVar.f30770b;
            if (bVar != null) {
                bVar.a(1001);
            }
        }
    };

    /* renamed from: f  reason: collision with root package name */
    IBinder.DeathRecipient f30774f = new IBinder.DeathRecipient() { // from class: com.tencent.liteav.audio.earmonitor.a.b.a.c.2
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            LiteavLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "binderDied");
            c cVar = c.this;
            cVar.f30773e.unlinkToDeath(cVar.f30774f, 0);
            c.this.f30770b.a(1003);
            c.this.f30773e = null;
        }
    };

    /* loaded from: classes4.dex */
    public enum a {
        CMD_SET_AUDIO_EFFECT_MODE_BASE("Karaoke_reverb_mode="),
        CMD_SET_VOCAL_VOLUME_BASE("Karaoke_volume="),
        CMD_SET_VOCAL_EQUALIZER_MODE("Karaoke_eq_mode=");
        
        String mParameName;

        a(String str) {
            this.mParameName = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(Context context) {
        this.f30770b = null;
        this.f30770b = b.a();
        this.f30769a = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Context context) {
        if (context == null) {
            return;
        }
        if (!b.a(context)) {
            this.f30770b.a(2);
        } else if (this.f30770b == null || this.f30771c) {
        } else {
            b.a(context, this.f30775g, "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService");
        }
    }

    public final void a() {
        if (this.f30771c) {
            this.f30771c = false;
            b.a(this.f30769a, this.f30775g);
        }
    }

    public final int a(boolean z10) {
        try {
            com.tencent.liteav.audio.earmonitor.a.a.b bVar = this.f30772d;
            if (bVar == null || !this.f30771c) {
                return -2;
            }
            return bVar.a(z10);
        } catch (RemoteException e10) {
            LiteavLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "enableKaraokeFeature,RemoteException ex : %s", e10.getMessage());
            return -2;
        }
    }

    public final int a(a aVar, int i9) {
        if (aVar == null) {
            return 1807;
        }
        try {
            com.tencent.liteav.audio.earmonitor.a.a.b bVar = this.f30772d;
            if (bVar == null || !this.f30771c) {
                return -2;
            }
            return bVar.a(aVar.mParameName, i9);
        } catch (RemoteException e10) {
            LiteavLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "setParameter,RemoteException ex : %s", e10.getMessage());
            return -2;
        }
    }

    static /* synthetic */ void a(c cVar, IBinder iBinder) {
        cVar.f30773e = iBinder;
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(cVar.f30774f, 0);
            } catch (RemoteException unused) {
                cVar.f30770b.a(1002);
                LiteavLog.e("HwAudioKit.HwAudioKaraokeFeatureKit", "serviceLinkToDeath, RemoteException");
            }
        }
    }
}
