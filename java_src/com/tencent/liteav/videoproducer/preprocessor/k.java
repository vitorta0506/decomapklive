package com.tencent.liteav.videoproducer.preprocessor;

import com.tencent.liteav.videoproducer.preprocessor.h;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33086a;

    /* renamed from: b  reason: collision with root package name */
    private final List f33087b;

    private k(h hVar, List list) {
        this.f33086a = hVar;
        this.f33087b = list;
    }

    public static Runnable a(h hVar, List list) {
        return new k(hVar, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        h hVar = this.f33086a;
        List<com.tencent.liteav.beauty.b.o> list = this.f33087b;
        if (list != null && !list.isEmpty()) {
            com.tencent.liteav.beauty.b.n nVar = (com.tencent.liteav.beauty.b.n) hVar.a(h.b.f33071e);
            nVar.enableWatermark(true);
            nVar.setWaterMarkList(list);
            com.tencent.liteav.beauty.a.h(hVar.f33044a);
            return;
        }
        hVar.c(h.b.f33071e);
    }
}
