package com.tencent.ugc.videoprocessor;

import com.tencent.liteav.base.util.q;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WatermarkProcessor f35070a;

    /* renamed from: b  reason: collision with root package name */
    private final List f35071b;

    /* renamed from: c  reason: collision with root package name */
    private final q f35072c;

    private c(WatermarkProcessor watermarkProcessor, List list, q qVar) {
        this.f35070a = watermarkProcessor;
        this.f35071b = list;
        this.f35072c = qVar;
    }

    public static Runnable a(WatermarkProcessor watermarkProcessor, List list, q qVar) {
        return new c(watermarkProcessor, list, qVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35070a.setSubtitleListInternal(this.f35071b, this.f35072c);
    }
}
