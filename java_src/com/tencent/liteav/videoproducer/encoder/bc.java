package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videobase.utils.Rotation;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32915a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f32916b;

    private bc(ah ahVar, Rotation rotation) {
        this.f32915a = ahVar;
        this.f32916b = rotation;
    }

    public static Runnable a(ah ahVar, Rotation rotation) {
        return new bc(ahVar, rotation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.b(this.f32915a, this.f32916b);
    }
}
