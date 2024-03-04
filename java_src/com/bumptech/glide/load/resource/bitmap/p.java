package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
@RequiresApi(27)
/* loaded from: classes.dex */
public final class p implements ImageHeaderParser {
    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int a(@NonNull ByteBuffer byteBuffer, @NonNull g0.b bVar) throws IOException {
        return b(v0.a.g(byteBuffer), bVar);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int b(@NonNull InputStream inputStream, @NonNull g0.b bVar) throws IOException {
        int attributeInt = new ExifInterface(inputStream).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
        if (attributeInt == 0) {
            return -1;
        }
        return attributeInt;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType c(@NonNull ByteBuffer byteBuffer) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType d(@NonNull InputStream inputStream) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
