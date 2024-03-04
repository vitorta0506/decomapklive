package com.tencent.liteav.videobase.b;

import android.opengl.EGLContext;
import android.opengl.EGLExt;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.j;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    private static final j f31721c = new j();

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicInteger f31722d = new AtomicInteger();

    /* renamed from: a  reason: collision with root package name */
    public h<?> f31723a;

    /* renamed from: b  reason: collision with root package name */
    public Object f31724b;

    /* renamed from: e  reason: collision with root package name */
    private boolean f31725e = false;

    public static void a(@Nullable e eVar) {
        if (eVar == null) {
            return;
        }
        eVar.b();
        Runnable a10 = f.a(eVar);
        if (!eVar.f31725e) {
            a10.run();
        } else {
            f31721c.a(a10, 100L);
        }
    }

    public final void b() {
        h<?> hVar = this.f31723a;
        if (hVar != null) {
            hVar.d();
        }
    }

    public final void c() throws g {
        h<?> hVar = this.f31723a;
        if (hVar != null) {
            hVar.a();
        }
    }

    public final Object d() {
        h<?> hVar = this.f31723a;
        if (hVar == null) {
            return null;
        }
        return hVar.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(@Nullable e eVar) {
        try {
            h<?> hVar = eVar.f31723a;
            if (hVar != null) {
                hVar.c();
                eVar.f31723a = null;
            }
            eVar.f31724b = null;
            f31722d.decrementAndGet();
            LiteavLog.i("EGLCore", "EGLCore destroy success. ".concat(String.valueOf(eVar)));
        } catch (g e10) {
            LiteavLog.e("EGLCore", "EGLCore destroy failed.", e10);
        }
    }

    public final void a(Object obj, Surface surface, int i9, int i10) throws g {
        this.f31725e = surface == null;
        if (obj == null) {
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 17) {
                this.f31723a = b.a((EGLContext) null, surface, i9, i10);
            } else {
                this.f31723a = a.a((javax.microedition.khronos.egl.EGLContext) null, surface, i9, i10);
            }
        } else if (obj instanceof javax.microedition.khronos.egl.EGLContext) {
            this.f31723a = a.a((javax.microedition.khronos.egl.EGLContext) obj, surface, i9, i10);
        } else if (LiteavSystemInfo.getSystemOSVersionInt() >= 17 && (obj instanceof EGLContext)) {
            this.f31723a = b.a((EGLContext) obj, surface, i9, i10);
        } else {
            throw new g(0, "sharedContext isn't EGLContext");
        }
        this.f31724b = obj;
        f31722d.incrementAndGet();
        LiteavLog.i("EGLCore", "EGLCore created in thread " + Thread.currentThread().getId() + ", sharedContext: " + obj + ", Surface: " + surface + ", width: " + i9 + ", height:" + i10);
    }

    public final void a() throws g {
        h<?> hVar = this.f31723a;
        if (hVar != null) {
            hVar.b();
        }
    }

    public final void a(long j10) {
        h<?> hVar = this.f31723a;
        if (hVar == null || !(hVar instanceof b)) {
            return;
        }
        b bVar = (b) hVar;
        EGLExt.eglPresentationTimeANDROID(bVar.f31708a, bVar.f31709b, j10);
    }
}
