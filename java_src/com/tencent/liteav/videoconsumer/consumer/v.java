package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.videoconsumer.consumer.j;
/* loaded from: classes4.dex */
final /* synthetic */ class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32134a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f32135b;

    private v(j jVar, Runnable runnable) {
        this.f32134a = jVar;
        this.f32135b = runnable;
    }

    public static Runnable a(j jVar, Runnable runnable) {
        return new v(jVar, runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32134a;
        Runnable runnable = this.f32135b;
        if (jVar.f32091p != j.a.STOPPED) {
            runnable.run();
        } else {
            jVar.f32088m.a(runnable);
        }
    }
}
