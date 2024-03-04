package com.tencent.ugc;

import java.util.List;
/* loaded from: classes4.dex */
final /* synthetic */ class bs implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34785a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34786b;

    private bs(TXVideoJoiner tXVideoJoiner, List list) {
        this.f34785a = tXVideoJoiner;
        this.f34786b = list;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, List list) {
        return new bs(tXVideoJoiner, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34785a.mVideoSourceList = this.f34786b;
    }
}
