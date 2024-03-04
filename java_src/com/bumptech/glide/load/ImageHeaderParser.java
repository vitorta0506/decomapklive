package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import g0.b;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface ImageHeaderParser {

    /* loaded from: classes.dex */
    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        ANIMATED_WEBP(true),
        AVIF(true),
        UNKNOWN(false);
        
        private final boolean hasAlpha;

        ImageType(boolean z10) {
            this.hasAlpha = z10;
        }

        public boolean hasAlpha() {
            return this.hasAlpha;
        }

        public boolean isWebp() {
            int i9 = a.f4206a[ordinal()];
            return i9 == 1 || i9 == 2 || i9 == 3;
        }
    }

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4206a;

        static {
            int[] iArr = new int[ImageType.values().length];
            f4206a = iArr;
            try {
                iArr[ImageType.WEBP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4206a[ImageType.WEBP_A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4206a[ImageType.ANIMATED_WEBP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    int a(@NonNull ByteBuffer byteBuffer, @NonNull b bVar) throws IOException;

    int b(@NonNull InputStream inputStream, @NonNull b bVar) throws IOException;

    @NonNull
    ImageType c(@NonNull ByteBuffer byteBuffer) throws IOException;

    @NonNull
    ImageType d(@NonNull InputStream inputStream) throws IOException;
}
