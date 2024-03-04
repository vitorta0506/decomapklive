package com.tencent.liteav.audio.route;

import com.tencent.liteav.audio.route.AudioRouteManager;
import java.util.List;
/* loaded from: classes4.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final AudioRouteManager.AnonymousClass2 f30842a;

    /* renamed from: b  reason: collision with root package name */
    private final List f30843b;

    private l(AudioRouteManager.AnonymousClass2 anonymousClass2, List list) {
        this.f30842a = anonymousClass2;
        this.f30843b = list;
    }

    public static Runnable a(AudioRouteManager.AnonymousClass2 anonymousClass2, List list) {
        return new l(anonymousClass2, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        AudioRouteManager.this.handleRecordingConfigChanged(this.f30843b);
    }
}
