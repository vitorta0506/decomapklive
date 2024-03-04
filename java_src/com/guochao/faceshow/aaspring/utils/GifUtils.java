package com.guochao.faceshow.aaspring.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.MediaLocalData;
import com.guochao.faceshow.utils.FileUtil;
import com.waynejo.androidndkgif.GifDecoder;
import com.waynejo.androidndkgif.GifEncoder;
import java.io.File;
import java.io.IOException;
/* loaded from: classes3.dex */
public class GifUtils {
    static final int FPS = 6;
    public static final String TAG = "GifUtils";

    /* loaded from: classes3.dex */
    public interface OnGiftEncodeListener {
        void onEncodeFail(String str, String str2);

        void onEncodeSuccess(String str, String str2);
    }

    public static void convertMp4ToGif(final String str, final String str2, final int i9, final OnGiftEncodeListener onGiftEncodeListener) {
        io.reactivex.k.just(str).map(new vh.o<String, String>() { // from class: com.guochao.faceshow.aaspring.utils.GifUtils.4
            @Override // vh.o
            public String apply(String str3) throws Exception {
                try {
                    GifUtils.doConvert(str, str2, i9);
                    return str2;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    throw e10;
                }
            }
        }).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new SimpleObserver<String>() { // from class: com.guochao.faceshow.aaspring.utils.GifUtils.3
            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onError(Throwable th2) {
                super.onError(th2);
                OnGiftEncodeListener.this.onEncodeFail(str, str2);
            }

            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(String str3) {
                super.onNext((AnonymousClass3) str3);
                OnGiftEncodeListener.this.onEncodeSuccess(str, str2);
            }
        });
    }

    private static Bitmap cropBitmap(Bitmap bitmap, float f10, float f11, float f12, int i9, int i10) {
        int width = (int) ((bitmap.getWidth() * f12) + 0.5f);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, width, (int) ((bitmap.getHeight() * f12) + 0.5f), true);
        int i11 = BaseApplication.getInstance().getResources().getDisplayMetrics().widthPixels;
        Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap, (int) ((width * f10) + 0.5f), (int) (((createScaledBitmap.getHeight() - i11) * f11) + 0.5f), i11, i11);
        if (createBitmap != createScaledBitmap) {
            createScaledBitmap.recycle();
        }
        Bitmap createScaledBitmap2 = Bitmap.createScaledBitmap(createBitmap, i9, i10, true);
        if (createScaledBitmap2 != createScaledBitmap) {
            createScaledBitmap.recycle();
        }
        return createScaledBitmap2;
    }

    public static th.b cropGif(final String str, final float f10, final float f11, final float f12, final int i9, final int i10, final String str2, final OnGiftEncodeListener onGiftEncodeListener) {
        return io.reactivex.k.just(1).map(new vh.o<Integer, Integer>() { // from class: com.guochao.faceshow.aaspring.utils.GifUtils.2
            @Override // vh.o
            public Integer apply(Integer num) throws Exception {
                try {
                    GifUtils.doCrop(str, f10, f11, f12, i9, i10, str2);
                    return 1;
                } catch (Exception e10) {
                    LogUtils.e(GifUtils.TAG, "encode gif failed ...", e10);
                    return 2;
                }
            }
        }).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new vh.g<Integer>() { // from class: com.guochao.faceshow.aaspring.utils.GifUtils.1
            @Override // vh.g
            public void accept(Integer num) throws Exception {
                if (OnGiftEncodeListener.this != null) {
                    if (1 == num.intValue()) {
                        OnGiftEncodeListener.this.onEncodeSuccess(str, str2);
                    } else {
                        OnGiftEncodeListener.this.onEncodeFail(str, str2);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doConvert(String str, String str2, int i9) throws Exception {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(str);
        GifEncoder gifEncoder = new GifEncoder();
        File file = new File(str2);
        if (!file.exists()) {
            file.createNewFile();
        }
        gifEncoder.d(i9, i9, str2, GifEncoder.EncodingType.ENCODING_TYPE_SIMPLE_FAST);
        int parseLong = ((int) ((((float) Long.parseLong(mediaMetadataRetriever.extractMetadata(9))) * 1.0f) / 1000.0f)) * 6;
        if (Build.VERSION.SDK_INT >= 30) {
            for (int i10 = 0; i10 < parseLong; i10++) {
                MediaMetadataRetriever.BitmapParams bitmapParams = new MediaMetadataRetriever.BitmapParams();
                bitmapParams.setPreferredConfig(Bitmap.Config.ARGB_8888);
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(((i10 * 1000) * 1000) / 6, 3, bitmapParams);
                if (frameAtTime != null) {
                    Bitmap createScaledBitmap = Bitmap.createScaledBitmap(frameAtTime, i9, i9, false);
                    gifEncoder.b(createScaledBitmap, 166);
                    if (createScaledBitmap != null) {
                        createScaledBitmap.recycle();
                    }
                }
            }
        } else {
            for (int i11 = 0; i11 < parseLong; i11++) {
                Bitmap frameAtTime2 = mediaMetadataRetriever.getFrameAtTime(((i11 * 1000) * 1000) / 6, 3);
                if (frameAtTime2 != null) {
                    Bitmap createScaledBitmap2 = Bitmap.createScaledBitmap(frameAtTime2, i9, i9, false);
                    Bitmap createBitmap = Bitmap.createBitmap(i9, i9, Bitmap.Config.ARGB_8888);
                    new Canvas(createBitmap).drawBitmap(createScaledBitmap2, 0.0f, 0.0f, (Paint) null);
                    gifEncoder.b(createBitmap, 166);
                    createScaledBitmap2.recycle();
                    createBitmap.recycle();
                    frameAtTime2.recycle();
                }
            }
        }
        gifEncoder.a();
        mediaMetadataRetriever.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doCrop(String str, float f10, float f11, float f12, int i9, int i10, String str2) throws IOException {
        GifDecoder gifDecoder = new GifDecoder();
        if (gifDecoder.e(str)) {
            GifEncoder gifEncoder = new GifEncoder();
            File file = new File(str2);
            if (!file.exists()) {
                file.createNewFile();
            }
            gifEncoder.c(i9, i10, str2);
            for (int i11 = 0; i11 < gifDecoder.c(); i11++) {
                gifEncoder.b(cropBitmap(gifDecoder.b(i11), f10, f11, f12, i9, i10), gifDecoder.a(i11));
                gifDecoder.b(i11).recycle();
            }
            gifEncoder.a();
            return;
        }
        throw new RuntimeException("decode gif file failed...");
    }

    public static boolean oldGifToNewGif(MediaLocalData mediaLocalData, String str) {
        try {
            String str2 = FilePathProvider.getCachePath("crop") + org.light.utils.FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + ".gif";
            FileUtil.copyUriToFile(BaseApplication.getInstance(), mediaLocalData.getUri(), new File(str2));
            GifDecoder gifDecoder = new GifDecoder();
            if (gifDecoder.e(str2)) {
                GifEncoder gifEncoder = new GifEncoder();
                File file = new File(str);
                if (!file.exists()) {
                    file.createNewFile();
                }
                gifEncoder.c(gifDecoder.f(), gifDecoder.d(), str);
                for (int i9 = 0; i9 < gifDecoder.c(); i9++) {
                    gifEncoder.b(LutUtils.applyLutToBitmap(BaseApplication.getInstance(), gifDecoder.b(i9), 2), gifDecoder.a(i9));
                    gifDecoder.b(i9).recycle();
                }
                gifEncoder.a();
                return true;
            }
            throw new RuntimeException("decode gif file failed...");
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
