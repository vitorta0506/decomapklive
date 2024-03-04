package com.tencent.liteav.trtc;

import android.graphics.Bitmap;
import com.tencent.trtc.TRTCCloudListener;
/* loaded from: classes4.dex */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TRTCCloudListener.TRTCSnapshotListener f31344a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f31345b;

    private b(TRTCCloudListener.TRTCSnapshotListener tRTCSnapshotListener, Bitmap bitmap) {
        this.f31344a = tRTCSnapshotListener;
        this.f31345b = bitmap;
    }

    public static Runnable a(TRTCCloudListener.TRTCSnapshotListener tRTCSnapshotListener, Bitmap bitmap) {
        return new b(tRTCSnapshotListener, bitmap);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TrtcCloudJni.lambda$onSnapshotComplete$1(this.f31344a, this.f31345b);
    }
}
