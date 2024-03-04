package com.tencent.liteav.videoproducer.producer;

import android.graphics.Point;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33211a;

    /* renamed from: b  reason: collision with root package name */
    private final Point f33212b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33213c;

    /* renamed from: d  reason: collision with root package name */
    private final int f33214d;

    /* renamed from: e  reason: collision with root package name */
    private final int f33215e;

    /* renamed from: f  reason: collision with root package name */
    private final int f33216f;

    private aq(f fVar, Point point, int i9, int i10, int i11, int i12) {
        this.f33211a = fVar;
        this.f33212b = point;
        this.f33213c = i9;
        this.f33214d = i10;
        this.f33215e = i11;
        this.f33216f = i12;
    }

    public static Runnable a(f fVar, Point point, int i9, int i10, int i11, int i12) {
        return new aq(fVar, point, i9, i10, i11, i12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33211a, this.f33212b, this.f33213c, this.f33214d, this.f33215e, this.f33216f);
    }
}
