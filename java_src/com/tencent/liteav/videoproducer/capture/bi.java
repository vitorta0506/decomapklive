package com.tencent.liteav.videoproducer.capture;

import android.content.Context;
import android.content.Intent;
import android.hardware.display.VirtualDisplay;
import android.media.projection.MediaProjection;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.WindowManager;
import com.tencent.liteav.audio.SystemLoopbackRecorder;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.v;
import com.tencent.rtmp.video.TXScreenCapture;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class bi {

    /* renamed from: a  reason: collision with root package name */
    private static volatile bi f32672a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f32673b;

    /* renamed from: g  reason: collision with root package name */
    private MediaProjection f32678g;

    /* renamed from: h  reason: collision with root package name */
    private com.tencent.liteav.base.util.v f32679h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f32680i;

    /* renamed from: e  reason: collision with root package name */
    private final Map<Surface, a> f32676e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private boolean f32677f = false;

    /* renamed from: j  reason: collision with root package name */
    private final Runnable f32681j = bj.a(this);

    /* renamed from: k  reason: collision with root package name */
    private final MediaProjection.Callback f32682k = new AnonymousClass1();

    /* renamed from: l  reason: collision with root package name */
    private final v.a f32683l = new v.a() { // from class: com.tencent.liteav.videoproducer.capture.bi.2
        @Override // com.tencent.liteav.base.util.v.a
        public final void onTimeout() {
            bi.this.f32675d.a(bo.a(bi.this));
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final Handler f32674c = new CustomHandler(Looper.getMainLooper());

    /* renamed from: d  reason: collision with root package name */
    private final com.tencent.liteav.base.util.j f32675d = new com.tencent.liteav.base.util.j();

    /* renamed from: com.tencent.liteav.videoproducer.capture.bi$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    final class AnonymousClass1 extends MediaProjection.Callback {
        AnonymousClass1() {
        }

        @Override // android.media.projection.MediaProjection.Callback
        public final void onStop() {
            LiteavLog.e("VirtualDisplayManager", "MediaProjection session is no longer valid");
            bi.this.f32675d.a(bn.a(bi.this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public Surface f32686a;

        /* renamed from: b  reason: collision with root package name */
        public int f32687b;

        /* renamed from: c  reason: collision with root package name */
        public int f32688c;

        /* renamed from: d  reason: collision with root package name */
        public b f32689d;

        /* renamed from: e  reason: collision with root package name */
        public VirtualDisplay f32690e;

        private a() {
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(boolean z10, boolean z11);

        void b(boolean z10);

        void e();
    }

    private bi(Context context) {
        this.f32673b = context.getApplicationContext();
        this.f32680i = b(context);
    }

    public static bi a(Context context) {
        if (f32672a == null) {
            synchronized (bi.class) {
                if (f32672a == null) {
                    f32672a = new bi(context);
                }
            }
        }
        return f32672a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void c(bi biVar) {
        HashMap hashMap = new HashMap(biVar.f32676e);
        biVar.f32676e.clear();
        for (a aVar : hashMap.values()) {
            b bVar = aVar.f32689d;
            if (bVar != null) {
                if (aVar.f32690e != null) {
                    bVar.e();
                } else {
                    bVar.a(false, false);
                }
            }
        }
        biVar.a(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(bi biVar) {
        boolean b10 = b(biVar.f32673b);
        if (biVar.f32680i != b10) {
            biVar.f32680i = b10;
            for (a aVar : biVar.f32676e.values()) {
                b bVar = aVar.f32689d;
                if (bVar != null) {
                    bVar.b(b10);
                }
            }
        }
    }

    private static void b(MediaProjection mediaProjection) {
        try {
            int i9 = SystemLoopbackRecorder.f30748a;
            SystemLoopbackRecorder.class.getMethod("notifyMediaProjectionState", MediaProjection.class).invoke(null, mediaProjection);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            LiteavLog.e("VirtualDisplayManager", "fail to send media projection session " + e10.getMessage());
        }
    }

    private static boolean b(Context context) {
        int rotation;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        return windowManager == null || (rotation = windowManager.getDefaultDisplay().getRotation()) == 0 || rotation == 2;
    }

    public final void a(Surface surface, int i9, int i10, MediaProjection mediaProjection, b bVar) {
        this.f32675d.b(bk.a(this, surface, i9, i10, mediaProjection, bVar));
    }

    public final void a(Surface surface) {
        this.f32675d.b(bl.a(this, surface));
    }

    private void a() {
        for (a aVar : this.f32676e.values()) {
            if (aVar.f32690e == null) {
                try {
                    aVar.f32690e = this.f32678g.createVirtualDisplay("TXCScreenCapture", aVar.f32687b, aVar.f32688c, 1, 1, aVar.f32686a, null, null);
                    LiteavLog.i("VirtualDisplayManager", "create VirtualDisplay " + aVar.f32690e);
                    b bVar = aVar.f32689d;
                    if (bVar != null) {
                        bVar.a(true, false);
                    }
                } catch (Exception e10) {
                    LiteavLog.e("VirtualDisplayManager", "create VirtualDisplay error ", e10);
                    b bVar2 = aVar.f32689d;
                    if (bVar2 != null) {
                        bVar2.a(false, false);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10) {
        if (this.f32676e.isEmpty()) {
            if (z10) {
                this.f32675d.a(this.f32681j, TimeUnit.SECONDS.toMillis(1L));
                return;
            }
            LiteavLog.i("VirtualDisplayManager", "Stop media projection session " + this.f32678g);
            if (this.f32678g != null) {
                b((MediaProjection) null);
                try {
                    this.f32678g.unregisterCallback(this.f32682k);
                    this.f32678g.stop();
                } catch (Throwable th2) {
                    LiteavLog.w("VirtualDisplayManager", "stop media projection session with exception ", th2);
                }
                this.f32678g = null;
            }
            com.tencent.liteav.base.util.v vVar = this.f32679h;
            if (vVar != null) {
                vVar.a();
                this.f32679h = null;
            }
        }
    }

    public final void a(MediaProjection mediaProjection) {
        this.f32675d.a(bm.a(this, mediaProjection));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bi biVar, MediaProjection mediaProjection) {
        biVar.f32677f = false;
        if (mediaProjection == null) {
            HashMap hashMap = new HashMap(biVar.f32676e);
            biVar.f32676e.clear();
            for (a aVar : hashMap.values()) {
                b bVar = aVar.f32689d;
                if (bVar != null) {
                    bVar.a(false, true);
                }
            }
            return;
        }
        LiteavLog.i("VirtualDisplayManager", "Got session ".concat(String.valueOf(mediaProjection)));
        biVar.f32678g = mediaProjection;
        mediaProjection.registerCallback(biVar.f32682k, biVar.f32674c);
        biVar.a();
        com.tencent.liteav.base.util.v vVar = new com.tencent.liteav.base.util.v(Looper.getMainLooper(), biVar.f32683l);
        biVar.f32679h = vVar;
        vVar.a(50, 50);
        b(biVar.f32678g);
        biVar.a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bi biVar, Surface surface) {
        VirtualDisplay virtualDisplay;
        if (surface != null) {
            a remove = biVar.f32676e.remove(surface);
            if (remove != null && (virtualDisplay = remove.f32690e) != null) {
                virtualDisplay.release();
                LiteavLog.i("VirtualDisplayManager", "VirtualDisplay released, " + remove.f32690e);
            }
            biVar.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(bi biVar, Surface surface, int i9, int i10, MediaProjection mediaProjection, b bVar) {
        if (surface == null) {
            LiteavLog.e("VirtualDisplayManager", "surface is null!");
            bVar.a(false, false);
            return;
        }
        a aVar = new a((byte) 0);
        aVar.f32686a = surface;
        aVar.f32687b = i9;
        aVar.f32688c = i10;
        aVar.f32689d = bVar;
        aVar.f32690e = null;
        biVar.f32676e.put(surface, aVar);
        biVar.f32675d.c(biVar.f32681j);
        MediaProjection mediaProjection2 = biVar.f32678g;
        if (mediaProjection2 == null && mediaProjection == null) {
            if (biVar.f32677f) {
                return;
            }
            biVar.f32677f = true;
            Intent intent = new Intent(biVar.f32673b, TXScreenCapture.TXScreenCaptureAssistantActivity.class);
            intent.addFlags(268435456);
            biVar.f32673b.startActivity(intent);
        } else if (mediaProjection != null && mediaProjection2 != mediaProjection) {
            LiteavLog.i("VirtualDisplayManager", "startVirtualDisplay with media projection:".concat(String.valueOf(mediaProjection)));
            biVar.a(mediaProjection);
        } else {
            biVar.a();
        }
    }
}
