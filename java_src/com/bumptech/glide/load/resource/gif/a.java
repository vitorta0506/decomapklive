package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import c0.a;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;
import v0.k;
/* loaded from: classes.dex */
public class a implements e0.f<ByteBuffer, GifDrawable> {

    /* renamed from: f  reason: collision with root package name */
    private static final C0069a f4592f = new C0069a();

    /* renamed from: g  reason: collision with root package name */
    private static final b f4593g = new b();

    /* renamed from: a  reason: collision with root package name */
    private final Context f4594a;

    /* renamed from: b  reason: collision with root package name */
    private final List<ImageHeaderParser> f4595b;

    /* renamed from: c  reason: collision with root package name */
    private final b f4596c;

    /* renamed from: d  reason: collision with root package name */
    private final C0069a f4597d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bumptech.glide.load.resource.gif.b f4598e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.gif.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0069a {
        C0069a() {
        }

        c0.a a(a.InterfaceC0021a interfaceC0021a, c0.c cVar, ByteBuffer byteBuffer, int i9) {
            return new c0.e(interfaceC0021a, cVar, byteBuffer, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Queue<c0.d> f4599a = k.f(0);

        b() {
        }

        synchronized c0.d a(ByteBuffer byteBuffer) {
            c0.d poll;
            poll = this.f4599a.poll();
            if (poll == null) {
                poll = new c0.d();
            }
            return poll.p(byteBuffer);
        }

        synchronized void b(c0.d dVar) {
            dVar.a();
            this.f4599a.offer(dVar);
        }
    }

    public a(Context context, List<ImageHeaderParser> list, g0.d dVar, g0.b bVar) {
        this(context, list, dVar, bVar, f4593g, f4592f);
    }

    @Nullable
    private d c(ByteBuffer byteBuffer, int i9, int i10, c0.d dVar, e0.e eVar) {
        Bitmap.Config config;
        long b10 = v0.f.b();
        try {
            c0.c c10 = dVar.c();
            if (c10.b() > 0 && c10.c() == 0) {
                if (eVar.a(h.f4628a) == DecodeFormat.PREFER_RGB_565) {
                    config = Bitmap.Config.RGB_565;
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                c0.a a10 = this.f4597d.a(this.f4598e, c10, byteBuffer, e(c10, i9, i10));
                a10.d(config);
                a10.b();
                Bitmap a11 = a10.a();
                if (a11 == null) {
                    return null;
                }
                d dVar2 = new d(new GifDrawable(this.f4594a, a10, com.bumptech.glide.load.resource.c.a(), i9, i10, a11));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + v0.f.a(b10));
                }
                return dVar2;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + v0.f.a(b10));
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + v0.f.a(b10));
            }
        }
    }

    private static int e(c0.c cVar, int i9, int i10) {
        int min = Math.min(cVar.a() / i10, cVar.d() / i9);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            Log.v("BufferGifDecoder", "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i9 + x.f19108w + i10 + "], actual dimens: [" + cVar.d() + x.f19108w + cVar.a() + "]");
        }
        return max;
    }

    @Override // e0.f
    /* renamed from: d */
    public d b(@NonNull ByteBuffer byteBuffer, int i9, int i10, @NonNull e0.e eVar) {
        c0.d a10 = this.f4596c.a(byteBuffer);
        try {
            return c(byteBuffer, i9, i10, a10, eVar);
        } finally {
            this.f4596c.b(a10);
        }
    }

    @Override // e0.f
    /* renamed from: f */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull e0.e eVar) throws IOException {
        return !((Boolean) eVar.a(h.f4629b)).booleanValue() && com.bumptech.glide.load.a.g(this.f4595b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    @VisibleForTesting
    a(Context context, List<ImageHeaderParser> list, g0.d dVar, g0.b bVar, b bVar2, C0069a c0069a) {
        this.f4594a = context.getApplicationContext();
        this.f4595b = list;
        this.f4597d = c0069a;
        this.f4598e = new com.bumptech.glide.load.resource.gif.b(dVar, bVar);
        this.f4596c = bVar2;
    }
}
