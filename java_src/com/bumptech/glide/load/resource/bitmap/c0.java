package com.bumptech.glide.load.resource.bitmap;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import e0.d;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class c0<T> implements e0.f<T, Bitmap> {

    /* renamed from: d  reason: collision with root package name */
    public static final e0.d<Long> f4505d = e0.d.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());

    /* renamed from: e  reason: collision with root package name */
    public static final e0.d<Integer> f4506e = e0.d.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());

    /* renamed from: f  reason: collision with root package name */
    private static final e f4507f = new e();

    /* renamed from: a  reason: collision with root package name */
    private final f<T> f4508a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.d f4509b;

    /* renamed from: c  reason: collision with root package name */
    private final e f4510c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements d.b<Long> {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f4511a = ByteBuffer.allocate(8);

        a() {
        }

        @Override // e0.d.b
        /* renamed from: b */
        public void a(@NonNull byte[] bArr, @NonNull Long l10, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f4511a) {
                this.f4511a.position(0);
                messageDigest.update(this.f4511a.putLong(l10.longValue()).array());
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements d.b<Integer> {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f4512a = ByteBuffer.allocate(4);

        b() {
        }

        @Override // e0.d.b
        /* renamed from: b */
        public void a(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f4512a) {
                this.f4512a.position(0);
                messageDigest.update(this.f4512a.putInt(num.intValue()).array());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements f<AssetFileDescriptor> {
        private c() {
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.c0.f
        /* renamed from: b */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static final class d implements f<ByteBuffer> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends MediaDataSource {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ByteBuffer f4513a;

            a(ByteBuffer byteBuffer) {
                this.f4513a = byteBuffer;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // android.media.MediaDataSource
            public long getSize() {
                return this.f4513a.limit();
            }

            @Override // android.media.MediaDataSource
            public int readAt(long j10, byte[] bArr, int i9, int i10) {
                if (j10 >= this.f4513a.limit()) {
                    return -1;
                }
                this.f4513a.position((int) j10);
                int min = Math.min(i10, this.f4513a.remaining());
                this.f4513a.get(bArr, i9, min);
                return min;
            }
        }

        d() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.c0.f
        /* renamed from: b */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new a(byteBuffer));
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    static class e {
        e() {
        }

        public MediaMetadataRetriever a() {
            return new MediaMetadataRetriever();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface f<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class g implements f<ParcelFileDescriptor> {
        g() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.c0.f
        /* renamed from: b */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h extends RuntimeException {
        private static final long serialVersionUID = -2556382523004027815L;

        h() {
            super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        }
    }

    c0(g0.d dVar, f<T> fVar) {
        this(dVar, fVar, f4507f);
    }

    public static e0.f<AssetFileDescriptor, Bitmap> c(g0.d dVar) {
        return new c0(dVar, new c(null));
    }

    @RequiresApi(api = 23)
    public static e0.f<ByteBuffer, Bitmap> d(g0.d dVar) {
        return new c0(dVar, new d());
    }

    @Nullable
    private static Bitmap e(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i9, int i10, int i11, DownsampleStrategy downsampleStrategy) {
        Bitmap g10 = (Build.VERSION.SDK_INT < 27 || i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE || downsampleStrategy == DownsampleStrategy.f4487f) ? null : g(mediaMetadataRetriever, j10, i9, i10, i11, downsampleStrategy);
        if (g10 == null) {
            g10 = f(mediaMetadataRetriever, j10, i9);
        }
        if (g10 != null) {
            return g10;
        }
        throw new h();
    }

    private static Bitmap f(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i9) {
        return mediaMetadataRetriever.getFrameAtTime(j10, i9);
    }

    @Nullable
    private static Bitmap g(MediaMetadataRetriever mediaMetadataRetriever, long j10, int i9, int i10, int i11, DownsampleStrategy downsampleStrategy) {
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                parseInt2 = parseInt;
                parseInt = parseInt2;
            }
            float b10 = downsampleStrategy.b(parseInt, parseInt2, i10, i11);
            return mediaMetadataRetriever.getScaledFrameAtTime(j10, i9, Math.round(parseInt * b10), Math.round(b10 * parseInt2));
        } catch (Throwable th2) {
            if (Log.isLoggable("VideoDecoder", 3)) {
                Log.d("VideoDecoder", "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame", th2);
                return null;
            }
            return null;
        }
    }

    public static e0.f<ParcelFileDescriptor, Bitmap> h(g0.d dVar) {
        return new c0(dVar, new g());
    }

    @Override // e0.f
    public boolean a(@NonNull T t10, @NonNull e0.e eVar) {
        return true;
    }

    @Override // e0.f
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull T t10, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        long longValue = ((Long) eVar.a(f4505d)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
        Integer num = (Integer) eVar.a(f4506e);
        if (num == null) {
            num = 2;
        }
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) eVar.a(DownsampleStrategy.f4489h);
        if (downsampleStrategy == null) {
            downsampleStrategy = DownsampleStrategy.f4488g;
        }
        DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
        MediaMetadataRetriever a10 = this.f4510c.a();
        try {
            this.f4508a.a(a10, t10);
            return com.bumptech.glide.load.resource.bitmap.e.c(e(a10, longValue, num.intValue(), i9, i10, downsampleStrategy2), this.f4509b);
        } finally {
            if (Build.VERSION.SDK_INT >= 29) {
                a10.close();
            } else {
                a10.release();
            }
        }
    }

    @VisibleForTesting
    c0(g0.d dVar, f<T> fVar, e eVar) {
        this.f4509b = dVar;
        this.f4508a = fVar;
        this.f4510c = eVar;
    }
}
