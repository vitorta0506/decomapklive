package com.tencent.liteav.videobase.utils;

import android.graphics.Bitmap;
import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f31913a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31914b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31915c;

    /* renamed from: d  reason: collision with root package name */
    private final TakeSnapshotListener f31916d;

    private l(ByteBuffer byteBuffer, int i9, int i10, TakeSnapshotListener takeSnapshotListener) {
        this.f31913a = byteBuffer;
        this.f31914b = i9;
        this.f31915c = i10;
        this.f31916d = takeSnapshotListener;
    }

    public static Runnable a(ByteBuffer byteBuffer, int i9, int i10, TakeSnapshotListener takeSnapshotListener) {
        return new l(byteBuffer, i9, i10, takeSnapshotListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ByteBuffer byteBuffer = this.f31913a;
        int i9 = this.f31914b;
        int i10 = this.f31915c;
        TakeSnapshotListener takeSnapshotListener = this.f31916d;
        byteBuffer.position(0);
        Bitmap createBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.ARGB_8888);
        createBitmap.copyPixelsFromBuffer(byteBuffer);
        takeSnapshotListener.onComplete(createBitmap);
    }
}
