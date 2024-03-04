package com.tencent.liteav.videobase.b;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final c f31720a;

    private d(c cVar) {
        this.f31720a = cVar;
    }

    public static Runnable a(c cVar) {
        return new d(cVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f31720a;
        e eVar = cVar.f31718d;
        if (eVar != null) {
            try {
                eVar.a();
                OpenGlUtils.deleteShaderId(cVar.f31716b.getAndSet(-1));
            } catch (g e10) {
                LiteavLog.i("EGLContextChecker", "release EGLCore failed.", e10);
            }
            e.a(cVar.f31718d);
            cVar.f31718d = null;
        }
    }
}
