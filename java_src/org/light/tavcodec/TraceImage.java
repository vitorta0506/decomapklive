package org.light.tavcodec;

import android.graphics.Bitmap;
import android.util.Log;
import java.nio.ByteBuffer;
/* loaded from: classes7.dex */
public class TraceImage {
    public static void Trace(String str, ByteBuffer byteBuffer, int i9, int i10) {
        Bitmap createBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.ARGB_8888);
        createBitmap.copyPixelsFromBuffer(byteBuffer);
        Log.i(str, "Image(width = " + createBitmap.getWidth() + ", height = " + createBitmap.getHeight() + ")");
    }
}
