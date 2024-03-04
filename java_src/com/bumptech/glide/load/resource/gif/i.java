package com.bumptech.glide.load.resource.gif;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.u;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes.dex */
public class i implements e0.f<InputStream, GifDrawable> {

    /* renamed from: a  reason: collision with root package name */
    private final List<ImageHeaderParser> f4630a;

    /* renamed from: b  reason: collision with root package name */
    private final e0.f<ByteBuffer, GifDrawable> f4631b;

    /* renamed from: c  reason: collision with root package name */
    private final g0.b f4632c;

    public i(List<ImageHeaderParser> list, e0.f<ByteBuffer, GifDrawable> fVar, g0.b bVar) {
        this.f4630a = list;
        this.f4631b = fVar;
        this.f4632c = bVar;
    }

    private static byte[] e(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e10) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e10);
                return null;
            }
            return null;
        }
    }

    @Override // e0.f
    /* renamed from: c */
    public u<GifDrawable> b(@NonNull InputStream inputStream, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        byte[] e10 = e(inputStream);
        if (e10 == null) {
            return null;
        }
        return this.f4631b.b(ByteBuffer.wrap(e10), i9, i10, eVar);
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull InputStream inputStream, @NonNull e0.e eVar) throws IOException {
        return !((Boolean) eVar.a(h.f4629b)).booleanValue() && com.bumptech.glide.load.a.f(this.f4630a, inputStream, this.f4632c) == ImageHeaderParser.ImageType.GIF;
    }
}
