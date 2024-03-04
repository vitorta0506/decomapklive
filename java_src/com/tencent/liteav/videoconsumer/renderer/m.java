package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final i f32415a;

    private m(i iVar) {
        this.f32415a = iVar;
    }

    public static Runnable a(i iVar) {
        return new m(iVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f32415a;
        iVar.b(iVar.f32401e);
    }
}
