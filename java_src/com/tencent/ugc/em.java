package com.tencent.ugc;

import android.opengl.GLES20;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class em implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final int f34909a;

    /* renamed from: b  reason: collision with root package name */
    private final float[] f34910b;

    private em(int i9, float[] fArr) {
        this.f34909a = i9;
        this.f34910b = fArr;
    }

    public static Runnable a(int i9, float[] fArr) {
        return new em(i9, fArr);
    }

    @Override // java.lang.Runnable
    public final void run() {
        GLES20.glUniformMatrix4fv(this.f34909a, 1, false, this.f34910b, 0);
    }
}
