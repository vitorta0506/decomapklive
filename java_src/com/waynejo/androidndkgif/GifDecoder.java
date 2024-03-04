package com.waynejo.androidndkgif;

import android.graphics.Bitmap;
/* loaded from: classes5.dex */
public class GifDecoder {

    /* renamed from: e  reason: collision with root package name */
    private int f36188e;

    /* renamed from: a  reason: collision with root package name */
    private int f36184a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f36185b = 0;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap[] f36186c = new Bitmap[0];

    /* renamed from: d  reason: collision with root package name */
    private int[] f36187d = new int[0];

    /* renamed from: f  reason: collision with root package name */
    private boolean f36189f = false;

    static {
        System.loadLibrary("androidndkgif");
    }

    private native void nativeClose(long j10);

    private native int nativeGetDelay(long j10, int i9);

    private native Bitmap nativeGetFrame(long j10, int i9);

    private native int nativeGetFrameCount(long j10);

    private native int nativeGetHeight(long j10);

    private native int nativeGetWidth(long j10);

    private native long nativeInit();

    private native boolean nativeLoad(long j10, String str);

    public int a(int i9) {
        int i10 = this.f36188e;
        if (i10 == 0) {
            return 0;
        }
        return this.f36187d[i9 % i10];
    }

    public Bitmap b(int i9) {
        int i10 = this.f36188e;
        if (i10 == 0) {
            return null;
        }
        return this.f36186c[i9 % i10];
    }

    public int c() {
        return this.f36188e;
    }

    public int d() {
        return this.f36185b;
    }

    public boolean e(String str) {
        long nativeInit = nativeInit();
        if (!nativeLoad(nativeInit, str)) {
            nativeClose(nativeInit);
            return false;
        }
        this.f36184a = nativeGetWidth(nativeInit);
        this.f36185b = nativeGetHeight(nativeInit);
        int nativeGetFrameCount = nativeGetFrameCount(nativeInit);
        this.f36188e = nativeGetFrameCount;
        this.f36186c = new Bitmap[nativeGetFrameCount];
        this.f36187d = new int[nativeGetFrameCount];
        for (int i9 = 0; i9 < this.f36188e; i9++) {
            this.f36186c[i9] = nativeGetFrame(nativeInit, i9);
            this.f36187d[i9] = nativeGetDelay(nativeInit, i9);
        }
        nativeClose(nativeInit);
        return true;
    }

    public int f() {
        return this.f36184a;
    }
}
