package com.tencent.ugc.videoprocessor;

import com.tencent.liteav.base.util.q;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WatermarkProcessor f35073a;

    /* renamed from: b  reason: collision with root package name */
    private final List f35074b;

    /* renamed from: c  reason: collision with root package name */
    private final q f35075c;

    private d(WatermarkProcessor watermarkProcessor, List list, q qVar) {
        this.f35073a = watermarkProcessor;
        this.f35074b = list;
        this.f35075c = qVar;
    }

    public static Runnable a(WatermarkProcessor watermarkProcessor, List list, q qVar) {
        return new d(watermarkProcessor, list, qVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35073a.setAnimatedPasterListInternal(this.f35074b, this.f35075c);
    }
}
