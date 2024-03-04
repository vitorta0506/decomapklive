package com.tencent.liteav.audio.earmonitor.a.b.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.liteav.audio.earmonitor.a.a.a;
import com.tencent.liteav.base.util.LiteavLog;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final List<Integer> f30782a = new ArrayList(0);

    /* renamed from: b  reason: collision with root package name */
    private Context f30783b;

    /* renamed from: e  reason: collision with root package name */
    private b f30786e;

    /* renamed from: c  reason: collision with root package name */
    private com.tencent.liteav.audio.earmonitor.a.a.a f30784c = null;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30785d = false;

    /* renamed from: f  reason: collision with root package name */
    private IBinder f30787f = null;

    /* renamed from: g  reason: collision with root package name */
    private ServiceConnection f30788g = new ServiceConnection() { // from class: com.tencent.liteav.audio.earmonitor.a.b.a.d.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            d.this.f30784c = a.AbstractBinderC0313a.a(iBinder);
            if (d.this.f30784c != null) {
                d.this.f30785d = true;
                d.this.f30786e.a(0);
                d dVar = d.this;
                d.a(dVar, dVar.f30783b.getPackageName(), "1.0.1");
                d.a(d.this, iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            d.this.f30784c = null;
            d.this.f30785d = false;
            d.this.f30786e.a(4);
        }
    };

    /* renamed from: h  reason: collision with root package name */
    private IBinder.DeathRecipient f30789h = new IBinder.DeathRecipient() { // from class: com.tencent.liteav.audio.earmonitor.a.b.a.d.2
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            d.this.f30787f.unlinkToDeath(d.this.f30789h, 0);
            d.this.f30786e.a(6);
            LiteavLog.e("HwAudioKit.HwAudioKit", "service binder died");
            d.f(d.this);
        }
    };

    /* loaded from: classes4.dex */
    public enum a {
        HWAUDIO_FEATURE_KARAOKE;
        
        int mFeatureType = 1;

        /* JADX WARN: Incorrect types in method signature: (I)V */
        a(String str) {
        }
    }

    public d(Context context, e eVar) {
        this.f30783b = null;
        b a10 = b.a();
        this.f30786e = a10;
        a10.f30768a = eVar;
        this.f30783b = context;
    }

    static /* synthetic */ IBinder f(d dVar) {
        dVar.f30787f = null;
        return null;
    }

    public final void b() {
        if (this.f30785d) {
            this.f30785d = false;
            b.a(this.f30783b, this.f30788g);
        }
    }

    public final void a() {
        Context context = this.f30783b;
        if (context == null) {
            this.f30786e.a(7);
        } else if (!b.a(context)) {
            this.f30786e.a(2);
        } else {
            Context context2 = this.f30783b;
            if (this.f30786e == null || this.f30785d) {
                return;
            }
            b.a(context2, this.f30788g, "com.huawei.multimedia.audioengine.HwAudioEngineService");
        }
    }

    public final <T extends com.tencent.liteav.audio.earmonitor.a.b.a.a> T b(a aVar) {
        if (this.f30786e == null || aVar == null) {
            return null;
        }
        return (T) b.a(aVar.mFeatureType, this.f30783b);
    }

    public final boolean a(a aVar) {
        if (aVar == null) {
            return false;
        }
        try {
            com.tencent.liteav.audio.earmonitor.a.a.a aVar2 = this.f30784c;
            if (aVar2 != null && this.f30785d) {
                return aVar2.a(aVar.mFeatureType);
            }
        } catch (RemoteException e10) {
            LiteavLog.e("HwAudioKit.HwAudioKit", "isFeatureSupported,RemoteException ex : %s", e10.getMessage());
        }
        return false;
    }

    static /* synthetic */ void a(d dVar, String str, String str2) {
        try {
            com.tencent.liteav.audio.earmonitor.a.a.a aVar = dVar.f30784c;
            if (aVar == null || !dVar.f30785d) {
                return;
            }
            aVar.a(str, str2);
        } catch (RemoteException e10) {
            LiteavLog.e("HwAudioKit.HwAudioKit", "isFeatureSupported,RemoteException ex : %s", e10.getMessage());
        }
    }

    static /* synthetic */ void a(d dVar, IBinder iBinder) {
        dVar.f30787f = iBinder;
        if (iBinder != null) {
            try {
                iBinder.linkToDeath(dVar.f30789h, 0);
            } catch (RemoteException unused) {
                dVar.f30786e.a(5);
                LiteavLog.e("HwAudioKit.HwAudioKit", "serviceLinkToDeath, RemoteException");
            }
        }
    }
}
