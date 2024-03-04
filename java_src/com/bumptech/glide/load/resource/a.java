package com.bumptech.glide.load.resource;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.m;
import com.bumptech.glide.load.resource.bitmap.r;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import e0.d;
import e0.e;
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class a implements ImageDecoder.OnHeaderDecodedListener {

    /* renamed from: a  reason: collision with root package name */
    private final r f4468a = r.b();

    /* renamed from: b  reason: collision with root package name */
    private final int f4469b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4470c;

    /* renamed from: d  reason: collision with root package name */
    private final DecodeFormat f4471d;

    /* renamed from: e  reason: collision with root package name */
    private final DownsampleStrategy f4472e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f4473f;

    /* renamed from: g  reason: collision with root package name */
    private final PreferredColorSpace f4474g;

    /* renamed from: com.bumptech.glide.load.resource.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0068a implements ImageDecoder.OnPartialImageListener {
        C0068a() {
        }

        @Override // android.graphics.ImageDecoder.OnPartialImageListener
        public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
            return false;
        }
    }

    public a(int i9, int i10, @NonNull e eVar) {
        this.f4469b = i9;
        this.f4470c = i10;
        this.f4471d = (DecodeFormat) eVar.a(m.f4523f);
        this.f4472e = (DownsampleStrategy) eVar.a(DownsampleStrategy.f4489h);
        d<Boolean> dVar = m.f4527j;
        this.f4473f = eVar.a(dVar) != null && ((Boolean) eVar.a(dVar)).booleanValue();
        this.f4474g = (PreferredColorSpace) eVar.a(m.f4524g);
    }

    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
    public void onHeaderDecoded(@NonNull ImageDecoder imageDecoder, @NonNull ImageDecoder.ImageInfo imageInfo, @NonNull ImageDecoder.Source source) {
        boolean z10 = false;
        if (this.f4468a.e(this.f4469b, this.f4470c, this.f4473f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f4471d == DecodeFormat.PREFER_RGB_565) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new C0068a());
        Size size = imageInfo.getSize();
        int i9 = this.f4469b;
        if (i9 == Integer.MIN_VALUE) {
            i9 = size.getWidth();
        }
        int i10 = this.f4470c;
        if (i10 == Integer.MIN_VALUE) {
            i10 = size.getHeight();
        }
        float b10 = this.f4472e.b(size.getWidth(), size.getHeight(), i9, i10);
        int round = Math.round(size.getWidth() * b10);
        int round2 = Math.round(size.getHeight() * b10);
        if (Log.isLoggable("ImageDecoder", 2)) {
            Log.v("ImageDecoder", "Resizing from [" + size.getWidth() + x.f19108w + size.getHeight() + "] to [" + round + x.f19108w + round2 + "] scaleFactor: " + b10);
        }
        imageDecoder.setTargetSize(round, round2);
        PreferredColorSpace preferredColorSpace = this.f4474g;
        if (preferredColorSpace != null) {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 < 28) {
                if (i11 >= 26) {
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                    return;
                }
                return;
            }
            if (preferredColorSpace == PreferredColorSpace.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                z10 = true;
            }
            imageDecoder.setTargetColorSpace(ColorSpace.get(z10 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
        }
    }
}
