package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCThumbnailGenerator f34943a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34944b;

    private fm(UGCThumbnailGenerator uGCThumbnailGenerator, List list) {
        this.f34943a = uGCThumbnailGenerator;
        this.f34944b = list;
    }

    public static Runnable a(UGCThumbnailGenerator uGCThumbnailGenerator, List list) {
        return new fm(uGCThumbnailGenerator, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCThumbnailGenerator.lambda$setVideoSourceList$1(this.f34943a, this.f34944b);
    }
}
