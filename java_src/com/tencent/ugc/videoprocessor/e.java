package com.tencent.ugc.videoprocessor;

import com.tencent.liteav.base.util.q;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WatermarkProcessor f35076a;

    /* renamed from: b  reason: collision with root package name */
    private final List f35077b;

    /* renamed from: c  reason: collision with root package name */
    private final q f35078c;

    private e(WatermarkProcessor watermarkProcessor, List list, q qVar) {
        this.f35076a = watermarkProcessor;
        this.f35077b = list;
        this.f35078c = qVar;
    }

    public static Runnable a(WatermarkProcessor watermarkProcessor, List list, q qVar) {
        return new e(watermarkProcessor, list, qVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35076a.setPasterListInternal(this.f35077b, this.f35078c);
    }
}
