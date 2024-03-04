package com.tencent.liteav.videoproducer.capture.b;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    private static final c f32652a = new c();

    private c() {
    }

    public static Comparator a() {
        return f32652a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return a.a((int[]) obj, (int[]) obj2);
    }
}
