package com.tencent.liteav.videoproducer.capture;

import java.util.Comparator;
/* loaded from: classes4.dex */
final /* synthetic */ class ak implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    private static final ak f32563a = new ak();

    private ak() {
    }

    public static Comparator a() {
        return f32563a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((com.tencent.liteav.base.util.q) obj2).b() - ((com.tencent.liteav.base.util.q) obj).b();
    }
}
