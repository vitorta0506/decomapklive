package com.bumptech.glide.load.resource.bitmap;
/* loaded from: classes.dex */
public abstract class DownsampleStrategy {

    /* renamed from: a  reason: collision with root package name */
    public static final DownsampleStrategy f4482a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final DownsampleStrategy f4483b = new b();

    /* renamed from: c  reason: collision with root package name */
    public static final DownsampleStrategy f4484c = new e();

    /* renamed from: d  reason: collision with root package name */
    public static final DownsampleStrategy f4485d = new c();

    /* renamed from: e  reason: collision with root package name */
    public static final DownsampleStrategy f4486e;

    /* renamed from: f  reason: collision with root package name */
    public static final DownsampleStrategy f4487f;

    /* renamed from: g  reason: collision with root package name */
    public static final DownsampleStrategy f4488g;

    /* renamed from: h  reason: collision with root package name */
    public static final e0.d<DownsampleStrategy> f4489h;

    /* renamed from: i  reason: collision with root package name */
    static final boolean f4490i;

    /* loaded from: classes.dex */
    public enum SampleSizeRounding {
        MEMORY,
        QUALITY
    }

    /* loaded from: classes.dex */
    private static class a extends DownsampleStrategy {
        a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i9, int i10, int i11, int i12) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i9, int i10, int i11, int i12) {
            int min = Math.min(i10 / i12, i9 / i11);
            if (min == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(min);
        }
    }

    /* loaded from: classes.dex */
    private static class b extends DownsampleStrategy {
        b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i9, int i10, int i11, int i12) {
            return SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i9, int i10, int i11, int i12) {
            int ceil = (int) Math.ceil(Math.max(i10 / i12, i9 / i11));
            int max = Math.max(1, Integer.highestOneBit(ceil));
            return 1.0f / (max << (max >= ceil ? 0 : 1));
        }
    }

    /* loaded from: classes.dex */
    private static class c extends DownsampleStrategy {
        c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i9, int i10, int i11, int i12) {
            if (b(i9, i10, i11, i12) == 1.0f) {
                return SampleSizeRounding.QUALITY;
            }
            return DownsampleStrategy.f4484c.a(i9, i10, i11, i12);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i9, int i10, int i11, int i12) {
            return Math.min(1.0f, DownsampleStrategy.f4484c.b(i9, i10, i11, i12));
        }
    }

    /* loaded from: classes.dex */
    private static class d extends DownsampleStrategy {
        d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i9, int i10, int i11, int i12) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i9, int i10, int i11, int i12) {
            return Math.max(i11 / i9, i12 / i10);
        }
    }

    /* loaded from: classes.dex */
    private static class e extends DownsampleStrategy {
        e() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i9, int i10, int i11, int i12) {
            if (DownsampleStrategy.f4490i) {
                return SampleSizeRounding.QUALITY;
            }
            return SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i9, int i10, int i11, int i12) {
            if (DownsampleStrategy.f4490i) {
                return Math.min(i11 / i9, i12 / i10);
            }
            int max = Math.max(i10 / i12, i9 / i11);
            if (max == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(max);
        }
    }

    /* loaded from: classes.dex */
    private static class f extends DownsampleStrategy {
        f() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding a(int i9, int i10, int i11, int i12) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float b(int i9, int i10, int i11, int i12) {
            return 1.0f;
        }
    }

    static {
        d dVar = new d();
        f4486e = dVar;
        f4487f = new f();
        f4488g = dVar;
        f4489h = e0.d.f("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", dVar);
        f4490i = true;
    }

    public abstract SampleSizeRounding a(int i9, int i10, int i11, int i12);

    public abstract float b(int i9, int i10, int i11, int i12);
}
