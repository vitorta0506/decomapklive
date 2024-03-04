package com.tencent.ugc;

import java.util.List;
/* loaded from: classes4.dex */
final /* synthetic */ class bw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34795a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34796b;

    private bw(TXVideoJoiner tXVideoJoiner, List list) {
        this.f34795a = tXVideoJoiner;
        this.f34796b = list;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, List list) {
        return new bw(tXVideoJoiner, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.lambda$setVideoVolumes$11(this.f34795a, this.f34796b);
    }
}
