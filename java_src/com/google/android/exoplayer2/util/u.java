package com.google.android.exoplayer2.util;

import android.media.MediaFormat;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes2.dex */
public final class u {
    public static void a(MediaFormat mediaFormat, String str, @Nullable byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void b(MediaFormat mediaFormat, @Nullable k3.c cVar) {
        if (cVar != null) {
            d(mediaFormat, "color-transfer", cVar.f53526c);
            d(mediaFormat, "color-standard", cVar.f53524a);
            d(mediaFormat, "color-range", cVar.f53525b);
            a(mediaFormat, "hdr-static-info", cVar.f53527d);
        }
    }

    public static void c(MediaFormat mediaFormat, String str, float f10) {
        if (f10 != -1.0f) {
            mediaFormat.setFloat(str, f10);
        }
    }

    public static void d(MediaFormat mediaFormat, String str, int i9) {
        if (i9 != -1) {
            mediaFormat.setInteger(str, i9);
        }
    }

    public static void e(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            mediaFormat.setByteBuffer("csd-" + i9, ByteBuffer.wrap(list.get(i9)));
        }
    }
}
