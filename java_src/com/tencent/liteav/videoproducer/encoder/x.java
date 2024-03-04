package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videoproducer.encoder.be;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f33003a;

    private x(w wVar) {
        this.f33003a = wVar;
    }

    public static Runnable a(w wVar) {
        return new x(wVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        be.a aVar = this.f33003a.f32981e;
        if (aVar != null) {
            aVar.onRequestRestart();
        }
    }
}
