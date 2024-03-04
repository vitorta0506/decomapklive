package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.util.l0;
import com.tencent.bugly.BuglyStrategy;
/* loaded from: classes.dex */
public class x implements DefaultAudioSink.d {

    /* renamed from: b  reason: collision with root package name */
    protected final int f5639b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f5640c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f5641d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f5642e;

    /* renamed from: f  reason: collision with root package name */
    protected final int f5643f;

    /* renamed from: g  reason: collision with root package name */
    public final int f5644g;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f5645a = 250000;

        /* renamed from: b  reason: collision with root package name */
        private int f5646b = 750000;

        /* renamed from: c  reason: collision with root package name */
        private int f5647c = 4;

        /* renamed from: d  reason: collision with root package name */
        private int f5648d = 250000;

        /* renamed from: e  reason: collision with root package name */
        private int f5649e = 50000000;

        /* renamed from: f  reason: collision with root package name */
        private int f5650f = 2;

        public x g() {
            return new x(this);
        }
    }

    protected x(a aVar) {
        this.f5639b = aVar.f5645a;
        this.f5640c = aVar.f5646b;
        this.f5641d = aVar.f5647c;
        this.f5642e = aVar.f5648d;
        this.f5643f = aVar.f5649e;
        this.f5644g = aVar.f5650f;
    }

    protected static int b(int i9, int i10, int i11) {
        return com.google.common.primitives.f.d(((i9 * i10) * i11) / 1000000);
    }

    protected static int d(int i9) {
        switch (i9) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH;
            case 11:
                return 16000;
            case 12:
                return 7000;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return 256000;
            case 17:
                return 336000;
        }
    }

    @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.d
    public int a(int i9, int i10, int i11, int i12, int i13, double d10) {
        return (((Math.max(i9, (int) (c(i9, i10, i11, i12, i13) * d10)) + i12) - 1) / i12) * i12;
    }

    protected int c(int i9, int i10, int i11, int i12, int i13) {
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    return f(i10);
                }
                throw new IllegalArgumentException();
            }
            return e(i10);
        }
        return g(i9, i13, i12);
    }

    protected int e(int i9) {
        return com.google.common.primitives.f.d((this.f5643f * d(i9)) / 1000000);
    }

    protected int f(int i9) {
        int i10 = this.f5642e;
        if (i9 == 5) {
            i10 *= this.f5644g;
        }
        return com.google.common.primitives.f.d((i10 * d(i9)) / 1000000);
    }

    protected int g(int i9, int i10, int i11) {
        return l0.p(i9 * this.f5641d, b(this.f5639b, i10, i11), b(this.f5640c, i10, i11));
    }
}
