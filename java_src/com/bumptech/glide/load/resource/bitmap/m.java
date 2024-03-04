package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.s;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: f  reason: collision with root package name */
    public static final e0.d<DecodeFormat> f4523f = e0.d.f("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);

    /* renamed from: g  reason: collision with root package name */
    public static final e0.d<PreferredColorSpace> f4524g = e0.d.e("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace");
    @Deprecated

    /* renamed from: h  reason: collision with root package name */
    public static final e0.d<DownsampleStrategy> f4525h = DownsampleStrategy.f4489h;

    /* renamed from: i  reason: collision with root package name */
    public static final e0.d<Boolean> f4526i;

    /* renamed from: j  reason: collision with root package name */
    public static final e0.d<Boolean> f4527j;

    /* renamed from: k  reason: collision with root package name */
    private static final Set<String> f4528k;

    /* renamed from: l  reason: collision with root package name */
    private static final b f4529l;

    /* renamed from: m  reason: collision with root package name */
    private static final Set<ImageHeaderParser.ImageType> f4530m;

    /* renamed from: n  reason: collision with root package name */
    private static final Queue<BitmapFactory.Options> f4531n;

    /* renamed from: a  reason: collision with root package name */
    private final g0.d f4532a;

    /* renamed from: b  reason: collision with root package name */
    private final DisplayMetrics f4533b;

    /* renamed from: c  reason: collision with root package name */
    private final g0.b f4534c;

    /* renamed from: d  reason: collision with root package name */
    private final List<ImageHeaderParser> f4535d;

    /* renamed from: e  reason: collision with root package name */
    private final r f4536e = r.b();

    /* loaded from: classes.dex */
    class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.m.b
        public void a(g0.d dVar, Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.m.b
        public void b() {
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(g0.d dVar, Bitmap bitmap) throws IOException;

        void b();
    }

    static {
        Boolean bool = Boolean.FALSE;
        f4526i = e0.d.f("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f4527j = e0.d.f("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        f4528k = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f4529l = new a();
        f4530m = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        f4531n = v0.k.f(0);
    }

    public m(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, g0.d dVar, g0.b bVar) {
        this.f4535d = list;
        this.f4533b = (DisplayMetrics) v0.j.d(displayMetrics);
        this.f4532a = (g0.d) v0.j.d(dVar);
        this.f4534c = (g0.b) v0.j.d(bVar);
    }

    private static int a(double d10) {
        int l10 = l(d10);
        int x10 = x(l10 * d10);
        return x((d10 / (x10 / l10)) * x10);
    }

    private void b(s sVar, DecodeFormat decodeFormat, boolean z10, boolean z11, BitmapFactory.Options options, int i9, int i10) {
        if (this.f4536e.i(i9, i10, options, z10, z11)) {
            return;
        }
        if (decodeFormat != DecodeFormat.PREFER_ARGB_8888) {
            boolean z12 = false;
            try {
                z12 = sVar.d().hasAlpha();
            } catch (IOException e10) {
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e10);
                }
            }
            Bitmap.Config config = z12 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            options.inPreferredConfig = config;
            if (config == Bitmap.Config.RGB_565) {
                options.inDither = true;
                return;
            }
            return;
        }
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
    }

    private static void c(ImageHeaderParser.ImageType imageType, s sVar, b bVar, g0.d dVar, DownsampleStrategy downsampleStrategy, int i9, int i10, int i11, int i12, int i13, BitmapFactory.Options options) throws IOException {
        int i14;
        int i15;
        int min;
        int i16;
        int floor;
        double floor2;
        int i17;
        if (i10 > 0 && i11 > 0) {
            if (r(i9)) {
                i15 = i10;
                i14 = i11;
            } else {
                i14 = i10;
                i15 = i11;
            }
            float b10 = downsampleStrategy.b(i14, i15, i12, i13);
            if (b10 > 0.0f) {
                DownsampleStrategy.SampleSizeRounding a10 = downsampleStrategy.a(i14, i15, i12, i13);
                if (a10 != null) {
                    float f10 = i14;
                    float f11 = i15;
                    int x10 = i14 / x(b10 * f10);
                    int x11 = i15 / x(b10 * f11);
                    DownsampleStrategy.SampleSizeRounding sampleSizeRounding = DownsampleStrategy.SampleSizeRounding.MEMORY;
                    if (a10 == sampleSizeRounding) {
                        min = Math.max(x10, x11);
                    } else {
                        min = Math.min(x10, x11);
                    }
                    int i18 = Build.VERSION.SDK_INT;
                    if (i18 > 23 || !f4528k.contains(options.outMimeType)) {
                        int max = Math.max(1, Integer.highestOneBit(min));
                        if (a10 == sampleSizeRounding && max < 1.0f / b10) {
                            max <<= 1;
                        }
                        i16 = max;
                    } else {
                        i16 = 1;
                    }
                    options.inSampleSize = i16;
                    if (imageType == ImageHeaderParser.ImageType.JPEG) {
                        float min2 = Math.min(i16, 8);
                        floor = (int) Math.ceil(f10 / min2);
                        i17 = (int) Math.ceil(f11 / min2);
                        int i19 = i16 / 8;
                        if (i19 > 0) {
                            floor /= i19;
                            i17 /= i19;
                        }
                    } else {
                        if (imageType != ImageHeaderParser.ImageType.PNG && imageType != ImageHeaderParser.ImageType.PNG_A) {
                            if (imageType.isWebp()) {
                                if (i18 >= 24) {
                                    float f12 = i16;
                                    floor = Math.round(f10 / f12);
                                    i17 = Math.round(f11 / f12);
                                } else {
                                    float f13 = i16;
                                    floor = (int) Math.floor(f10 / f13);
                                    floor2 = Math.floor(f11 / f13);
                                }
                            } else if (i14 % i16 == 0 && i15 % i16 == 0) {
                                floor = i14 / i16;
                                i17 = i15 / i16;
                            } else {
                                int[] m10 = m(sVar, options, bVar, dVar);
                                floor = m10[0];
                                i17 = m10[1];
                            }
                        } else {
                            float f14 = i16;
                            floor = (int) Math.floor(f10 / f14);
                            floor2 = Math.floor(f11 / f14);
                        }
                        i17 = (int) floor2;
                    }
                    double b11 = downsampleStrategy.b(floor, i17, i12, i13);
                    options.inTargetDensity = a(b11);
                    options.inDensity = l(b11);
                    if (s(options)) {
                        options.inScaled = true;
                    } else {
                        options.inTargetDensity = 0;
                        options.inDensity = 0;
                    }
                    if (Log.isLoggable("Downsampler", 2)) {
                        Log.v("Downsampler", "Calculate scaling, source: [" + i10 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i11 + "], degreesToRotate: " + i9 + ", target: [" + i12 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i13 + "], power of two scaled: [" + floor + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i17 + "], exact scale factor: " + b10 + ", power of 2 sample size: " + i16 + ", adjusted scale factor: " + b11 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Cannot round with null rounding");
            }
            throw new IllegalArgumentException("Cannot scale with factor: " + b10 + " from: " + downsampleStrategy + ", source: [" + i10 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i11 + "], target: [" + i12 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i13 + "]");
        } else if (Log.isLoggable("Downsampler", 3)) {
            Log.d("Downsampler", "Unable to determine dimensions for: " + imageType + " with target [" + i12 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i13 + "]");
        }
    }

    private com.bumptech.glide.load.engine.u<Bitmap> e(s sVar, int i9, int i10, e0.e eVar, b bVar) throws IOException {
        byte[] bArr = (byte[]) this.f4534c.c(65536, byte[].class);
        BitmapFactory.Options k10 = k();
        k10.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) eVar.a(f4523f);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) eVar.a(f4524g);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) eVar.a(DownsampleStrategy.f4489h);
        boolean booleanValue = ((Boolean) eVar.a(f4526i)).booleanValue();
        e0.d<Boolean> dVar = f4527j;
        try {
            return e.c(h(sVar, k10, downsampleStrategy, decodeFormat, preferredColorSpace, eVar.a(dVar) != null && ((Boolean) eVar.a(dVar)).booleanValue(), i9, i10, booleanValue, bVar), this.f4532a);
        } finally {
            v(k10);
            this.f4534c.put(bArr);
        }
    }

    private Bitmap h(s sVar, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, PreferredColorSpace preferredColorSpace, boolean z10, int i9, int i10, boolean z11, b bVar) throws IOException {
        int i11;
        int i12;
        int i13;
        String str;
        ColorSpace colorSpace;
        int round;
        int round2;
        long b10 = v0.f.b();
        int[] m10 = m(sVar, options, bVar, this.f4532a);
        boolean z12 = false;
        int i14 = m10[0];
        int i15 = m10[1];
        String str2 = options.outMimeType;
        boolean z13 = (i14 == -1 || i15 == -1) ? false : z10;
        int c10 = sVar.c();
        int j10 = a0.j(c10);
        boolean m11 = a0.m(c10);
        if (i9 == Integer.MIN_VALUE) {
            i11 = i10;
            i12 = r(j10) ? i15 : i14;
        } else {
            i11 = i10;
            i12 = i9;
        }
        if (i11 == Integer.MIN_VALUE) {
            i13 = r(j10) ? i14 : i15;
        } else {
            i13 = i11;
        }
        ImageHeaderParser.ImageType d10 = sVar.d();
        c(d10, sVar, bVar, this.f4532a, downsampleStrategy, j10, i14, i15, i12, i13, options);
        b(sVar, decodeFormat, z13, m11, options, i12, i13);
        int i16 = Build.VERSION.SDK_INT;
        int i17 = options.inSampleSize;
        if (z(d10)) {
            if (i14 < 0 || i15 < 0 || !z11) {
                float f10 = s(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i18 = options.inSampleSize;
                float f11 = i18;
                round = Math.round(((int) Math.ceil(i14 / f11)) * f10);
                round2 = Math.round(((int) Math.ceil(i15 / f11)) * f10);
                str = "Downsampler";
                if (Log.isLoggable(str, 2)) {
                    Log.v(str, "Calculated target [" + round + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + round2 + "] for source [" + i14 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i15 + "], sampleSize: " + i18 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f10);
                }
            } else {
                str = "Downsampler";
                round = i12;
                round2 = i13;
            }
            if (round > 0 && round2 > 0) {
                y(options, this.f4532a, round, round2);
            }
        } else {
            str = "Downsampler";
        }
        if (preferredColorSpace != null) {
            if (i16 >= 28) {
                if (preferredColorSpace == PreferredColorSpace.DISPLAY_P3 && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut()) {
                    z12 = true;
                }
                options.inPreferredColorSpace = ColorSpace.get(z12 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
            } else if (i16 >= 26) {
                options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
        }
        Bitmap i19 = i(sVar, options, bVar, this.f4532a);
        bVar.a(this.f4532a, i19);
        if (Log.isLoggable(str, 2)) {
            t(i14, i15, str2, options, i19, i9, i10, b10);
        }
        Bitmap bitmap = null;
        if (i19 != null) {
            i19.setDensity(this.f4533b.densityDpi);
            bitmap = a0.n(this.f4532a, i19, c10);
            if (!i19.equals(bitmap)) {
                this.f4532a.c(i19);
            }
        }
        return bitmap;
    }

    private static Bitmap i(s sVar, BitmapFactory.Options options, b bVar, g0.d dVar) throws IOException {
        if (!options.inJustDecodeBounds) {
            bVar.b();
            sVar.b();
        }
        int i9 = options.outWidth;
        int i10 = options.outHeight;
        String str = options.outMimeType;
        a0.i().lock();
        try {
            try {
                Bitmap a10 = sVar.a(options);
                a0.i().unlock();
                return a10;
            } catch (IllegalArgumentException e10) {
                IOException u10 = u(e10, i9, i10, str, options);
                if (Log.isLoggable("Downsampler", 3)) {
                    Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", u10);
                }
                Bitmap bitmap = options.inBitmap;
                if (bitmap != null) {
                    try {
                        dVar.c(bitmap);
                        options.inBitmap = null;
                        Bitmap i11 = i(sVar, options, bVar, dVar);
                        a0.i().unlock();
                        return i11;
                    } catch (IOException unused) {
                        throw u10;
                    }
                }
                throw u10;
            }
        } catch (Throwable th2) {
            a0.i().unlock();
            throw th2;
        }
    }

    @Nullable
    private static String j(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    private static synchronized BitmapFactory.Options k() {
        BitmapFactory.Options poll;
        synchronized (m.class) {
            Queue<BitmapFactory.Options> queue = f4531n;
            synchronized (queue) {
                poll = queue.poll();
            }
            if (poll == null) {
                poll = new BitmapFactory.Options();
                w(poll);
            }
        }
        return poll;
    }

    private static int l(double d10) {
        if (d10 > 1.0d) {
            d10 = 1.0d / d10;
        }
        return (int) Math.round(d10 * 2.147483647E9d);
    }

    private static int[] m(s sVar, BitmapFactory.Options options, b bVar, g0.d dVar) throws IOException {
        options.inJustDecodeBounds = true;
        i(sVar, options, bVar, dVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static String n(BitmapFactory.Options options) {
        return j(options.inBitmap);
    }

    private static boolean r(int i9) {
        return i9 == 90 || i9 == 270;
    }

    private static boolean s(BitmapFactory.Options options) {
        int i9;
        int i10 = options.inTargetDensity;
        return i10 > 0 && (i9 = options.inDensity) > 0 && i10 != i9;
    }

    private static void t(int i9, int i10, String str, BitmapFactory.Options options, Bitmap bitmap, int i11, int i12, long j10) {
        Log.v("Downsampler", "Decoded " + j(bitmap) + " from [" + i9 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i10 + "] " + str + " with inBitmap " + n(options) + " for [" + i11 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i12 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + v0.f.a(j10));
    }

    private static IOException u(IllegalArgumentException illegalArgumentException, int i9, int i10, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i9 + ", outHeight: " + i10 + ", outMimeType: " + str + ", inBitmap: " + n(options), illegalArgumentException);
    }

    private static void v(BitmapFactory.Options options) {
        w(options);
        Queue<BitmapFactory.Options> queue = f4531n;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    private static void w(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    private static int x(double d10) {
        return (int) (d10 + 0.5d);
    }

    private static void y(BitmapFactory.Options options, g0.d dVar, int i9, int i10) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = dVar.e(i9, i10, config);
    }

    private boolean z(ImageHeaderParser.ImageType imageType) {
        return true;
    }

    @RequiresApi(21)
    public com.bumptech.glide.load.engine.u<Bitmap> d(ParcelFileDescriptor parcelFileDescriptor, int i9, int i10, e0.e eVar) throws IOException {
        return e(new s.c(parcelFileDescriptor, this.f4535d, this.f4534c), i9, i10, eVar, f4529l);
    }

    public com.bumptech.glide.load.engine.u<Bitmap> f(InputStream inputStream, int i9, int i10, e0.e eVar, b bVar) throws IOException {
        return e(new s.b(inputStream, this.f4535d, this.f4534c), i9, i10, eVar, bVar);
    }

    public com.bumptech.glide.load.engine.u<Bitmap> g(ByteBuffer byteBuffer, int i9, int i10, e0.e eVar) throws IOException {
        return e(new s.a(byteBuffer, this.f4535d, this.f4534c), i9, i10, eVar, f4529l);
    }

    public boolean o(ParcelFileDescriptor parcelFileDescriptor) {
        return ParcelFileDescriptorRewinder.c();
    }

    public boolean p(InputStream inputStream) {
        return true;
    }

    public boolean q(ByteBuffer byteBuffer) {
        return true;
    }
}
