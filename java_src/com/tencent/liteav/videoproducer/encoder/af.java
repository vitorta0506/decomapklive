package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videoproducer.encoder.be;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class af implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f32801a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32802b;

    private af(w wVar, String str) {
        this.f32801a = wVar;
        this.f32802b = str;
    }

    public static Runnable a(w wVar, String str) {
        return new af(wVar, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        w wVar = this.f32801a;
        String str = this.f32802b;
        be.a aVar = wVar.f32981e;
        if (aVar != null) {
            aVar.onEncodeError(str);
        }
    }
}
