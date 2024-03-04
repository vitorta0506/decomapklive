package com.tencent.liteav.videoconsumer.renderer;

import android.graphics.Matrix;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32470a;

    /* renamed from: b  reason: collision with root package name */
    private final ByteBuffer f32471b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32472c;

    /* renamed from: d  reason: collision with root package name */
    private final int f32473d;

    /* renamed from: e  reason: collision with root package name */
    private final Matrix f32474e;

    /* renamed from: f  reason: collision with root package name */
    private final TakeSnapshotListener f32475f;

    private z(p pVar, ByteBuffer byteBuffer, int i9, int i10, Matrix matrix, TakeSnapshotListener takeSnapshotListener) {
        this.f32470a = pVar;
        this.f32471b = byteBuffer;
        this.f32472c = i9;
        this.f32473d = i10;
        this.f32474e = matrix;
        this.f32475f = takeSnapshotListener;
    }

    public static Runnable a(p pVar, ByteBuffer byteBuffer, int i9, int i10, Matrix matrix, TakeSnapshotListener takeSnapshotListener) {
        return new z(pVar, byteBuffer, i9, i10, matrix, takeSnapshotListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32470a, this.f32471b, this.f32472c, this.f32473d, this.f32474e, this.f32475f);
    }
}
