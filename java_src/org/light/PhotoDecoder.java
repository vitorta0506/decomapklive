package org.light;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.text.TextUtils;
import java.nio.ByteBuffer;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class PhotoDecoder {
    private static final String ASSET = "asset://";
    private static final int AlphaType_Opaque = 1;
    private static final int AlphaType_Premul = 2;
    private static final int AlphaType_Unpremul = 3;
    private static final int ColorType_ARGB_4444 = 3;
    private static final int ColorType_Alpha_8 = 1;
    private static final int ColorType_BGRA_8888 = 5;
    private static final int ColorType_Gray_8 = 7;
    private static final int ColorType_Index_8 = 6;
    private static final int ColorType_RGBA_8888 = 4;
    private static final int ColorType_RGBA_F16 = 8;
    private static final int ColorType_RGB_565 = 2;
    private static final String TAG = "PhotoDecoder";
    boolean isNoConstrictFlag;
    private int photoHeight;
    private String photoPath;
    private int photoWidth;
    private OutputBitmap successBitmap = null;

    /* loaded from: classes7.dex */
    private static class OutputBitmap {
        Bitmap bitmap;
        int height;
        byte[] pixels;
        int rowBytes;
        int width;

        private OutputBitmap() {
        }
    }

    private PhotoDecoder(String str) {
        this.photoWidth = 0;
        this.photoHeight = 0;
        this.photoPath = str;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(this.photoPath, options);
            this.photoWidth = options.outWidth;
            this.photoHeight = options.outHeight;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static PhotoDecoder Create(String str) {
        LightLogUtil.i(TAG, "Create:" + str);
        PhotoDecoder photoDecoder = new PhotoDecoder(str);
        photoDecoder.isNoConstrictFlag = false;
        return photoDecoder;
    }

    private Bitmap convert(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setColor(0);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    private OutputBitmap decode(boolean z10) {
        Bitmap decodeStream;
        ByteBuffer byteBuffer;
        LightLogUtil.i(TAG, "decode :" + this.photoPath + ", nativeReadPixel:" + z10);
        OutputBitmap outputBitmap = this.successBitmap;
        if (outputBitmap != null) {
            return outputBitmap;
        }
        if (TextUtils.isEmpty(this.photoPath)) {
            return null;
        }
        if (this.photoPath.startsWith(ASSET)) {
            try {
                decodeStream = BitmapFactory.decodeStream(LibraryLoadUtils.getAppContext().getAssets().open(this.photoPath.substring(8)));
            } catch (Exception unused) {
                return null;
            }
        } else {
            decodeStream = BitmapFactory.decodeFile(this.photoPath);
        }
        if (decodeStream == null) {
            return null;
        }
        if (this.isNoConstrictFlag || Build.VERSION.SDK_INT < 26 || decodeStream.getConfig() != Bitmap.Config.HARDWARE) {
            LightLogUtil.i(TAG, "decode done:" + this.photoPath + ", isPremultiplied:" + decodeStream.isPremultiplied());
            if (z10 || this.isNoConstrictFlag) {
                byteBuffer = null;
            } else {
                byteBuffer = ByteBuffer.allocate(decodeStream.getHeight() * decodeStream.getRowBytes());
                decodeStream.copyPixelsToBuffer(byteBuffer);
            }
            Bitmap.Config config = decodeStream.getConfig();
            if (config == null) {
                config = Bitmap.Config.ARGB_8888;
            }
            if (config != Bitmap.Config.ARGB_8888) {
                LightLogUtil.i(TAG, this.photoPath + " need to convert");
                decodeStream = convert(decodeStream);
                if (decodeStream == null) {
                    return null;
                }
            }
            OutputBitmap outputBitmap2 = new OutputBitmap();
            this.successBitmap = outputBitmap2;
            if (!z10) {
                if (!this.isNoConstrictFlag && byteBuffer != null) {
                    outputBitmap2.pixels = byteBuffer.array();
                }
            } else {
                outputBitmap2.bitmap = decodeStream;
            }
            this.successBitmap.width = decodeStream.getWidth();
            this.successBitmap.height = decodeStream.getHeight();
            this.successBitmap.rowBytes = decodeStream.getRowBytes();
            return this.successBitmap;
        }
        return null;
    }

    private int height() {
        return this.photoHeight;
    }

    private void onRelease() {
        this.successBitmap = null;
    }

    private int width() {
        return this.photoWidth;
    }

    public void setNoConstrictFlag(boolean z10) {
        LightLogUtil.i(TAG, "setNoConstrictFlag:" + z10);
        this.isNoConstrictFlag = z10;
    }
}
