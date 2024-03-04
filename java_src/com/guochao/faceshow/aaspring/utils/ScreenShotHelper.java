package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.display.VirtualDisplay;
import android.media.Image;
import android.media.ImageReader;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.aaspring.modulars.trtc.ScreenShotService;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.ServiceUtils;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class ScreenShotHelper {
    public static final int REQUEST_MEDIA_PROJECTION = 652;
    public static boolean onActivityResult = false;
    private static ScreenShotHelper sScreenShotHelper;
    private OnScreenShotListener mOnScreenShotListener;

    /* loaded from: classes3.dex */
    public interface OnScreenShotListener {
        void onCallBack(Bitmap bitmap);
    }

    private ScreenShotHelper() {
    }

    @RequiresApi(api = 21)
    private VirtualDisplay createVirtualDisplay(ImageReader imageReader, MediaProjection mediaProjection) {
        return mediaProjection.createVirtualDisplay("screen-mirror", ScreenTools.getScreenWidth(), ScreenTools.getScreenHeight(), Resources.getSystem().getDisplayMetrics().densityDpi, 16, imageReader.getSurface(), null, null);
    }

    public static ScreenShotHelper getInstance() {
        if (sScreenShotHelper == null) {
            synchronized (ScreenShotHelper.class) {
                if (sScreenShotHelper == null) {
                    sScreenShotHelper = new ScreenShotHelper();
                }
            }
        }
        return sScreenShotHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getScreenShot(final ImageReader imageReader, final MediaProjection mediaProjection) {
        final VirtualDisplay createVirtualDisplay = createVirtualDisplay(imageReader, mediaProjection);
        io.reactivex.k.just(1).delay(1L, TimeUnit.SECONDS).map(new vh.o<Integer, Bitmap>() { // from class: com.guochao.faceshow.aaspring.utils.ScreenShotHelper.5
            @Override // vh.o
            public Bitmap apply(Integer num) throws Exception {
                Image acquireNextImage = imageReader.acquireNextImage();
                int width = acquireNextImage.getWidth();
                int height = acquireNextImage.getHeight();
                Image.Plane[] planes = acquireNextImage.getPlanes();
                ByteBuffer buffer = planes[0].getBuffer();
                int pixelStride = planes[0].getPixelStride();
                Bitmap createBitmap = Bitmap.createBitmap(((planes[0].getRowStride() - (pixelStride * width)) / pixelStride) + width, height, Bitmap.Config.ARGB_8888);
                createBitmap.copyPixelsFromBuffer(buffer);
                Bitmap createBitmap2 = Bitmap.createBitmap(createBitmap, 0, 0, width, height);
                acquireNextImage.close();
                VirtualDisplay virtualDisplay = createVirtualDisplay;
                if (virtualDisplay != null) {
                    virtualDisplay.release();
                }
                mediaProjection.stop();
                return createBitmap2;
            }
        }).subscribeOn(sh.a.a()).observeOn(sh.a.a()).subscribe(new SimpleObserver<Bitmap>() { // from class: com.guochao.faceshow.aaspring.utils.ScreenShotHelper.4
            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(Bitmap bitmap) {
                if (ScreenShotHelper.this.mOnScreenShotListener != null) {
                    ScreenShotHelper.this.mOnScreenShotListener.onCallBack(bitmap);
                    ScreenShotHelper.onActivityResult = false;
                }
                ServiceUtils.safeStopForegroundService(ScreenShotService.class);
            }
        });
    }

    @RequiresApi(api = 21)
    public void onActivityResult(Activity activity, int i9, Intent intent) {
        final ImageReader newInstance = ImageReader.newInstance(ScreenTools.getScreenWidth(), ScreenTools.getScreenHeight(), 1, 1);
        if (Build.VERSION.SDK_INT >= 29) {
            Intent intent2 = new Intent(activity, ScreenShotService.class);
            intent2.putExtra("code", i9);
            intent2.putExtra("data", intent);
            MemoryCache.getInstance().put("OnMediaProjectionProvider", new ScreenShotService.a() { // from class: com.guochao.faceshow.aaspring.utils.ScreenShotHelper.3
                @Override // com.guochao.faceshow.aaspring.modulars.trtc.ScreenShotService.a
                public void onMediaProjectionValue(MediaProjection mediaProjection) {
                    ScreenShotHelper.this.getScreenShot(newInstance, mediaProjection);
                }
            });
            activity.startForegroundService(intent2);
            return;
        }
        getScreenShot(newInstance, ((MediaProjectionManager) activity.getSystemService("media_projection")).getMediaProjection(i9, intent));
    }

    public void startScreenShot(Activity activity, boolean z10, OnScreenShotListener onScreenShotListener) {
        this.mOnScreenShotListener = onScreenShotListener;
        Window window = activity.getWindow();
        if (Build.VERSION.SDK_INT >= 26 && !z10) {
            int[] iArr = new int[2];
            View decorView = window.getDecorView();
            final Bitmap createBitmap = Bitmap.createBitmap(decorView.getWidth(), decorView.getHeight() > 0 ? decorView.getHeight() : Math.abs(decorView.getHeight()), Bitmap.Config.ARGB_8888, true);
            window.getDecorView().getLocationInWindow(iArr);
            PixelCopy.request(window, new Rect(iArr[0], iArr[1], iArr[0] + decorView.getWidth(), iArr[1] + decorView.getHeight()), createBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.guochao.faceshow.aaspring.utils.ScreenShotHelper.1
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                public void onPixelCopyFinished(int i9) {
                    if (ScreenShotHelper.this.mOnScreenShotListener != null) {
                        ScreenShotHelper.this.mOnScreenShotListener.onCallBack(createBitmap);
                    }
                }
            }, new Handler(Looper.getMainLooper()));
            return;
        }
        activity.startActivityForResult(((MediaProjectionManager) activity.getSystemService("media_projection")).createScreenCaptureIntent(), REQUEST_MEDIA_PROJECTION);
    }

    public void startScreenShot(Fragment fragment, Window window, boolean z10, OnScreenShotListener onScreenShotListener) {
        this.mOnScreenShotListener = onScreenShotListener;
        if (Build.VERSION.SDK_INT >= 26 && !z10) {
            int[] iArr = new int[2];
            View decorView = window.getDecorView();
            final Bitmap createBitmap = Bitmap.createBitmap(decorView.getWidth(), decorView.getHeight(), Bitmap.Config.ARGB_8888, true);
            window.getDecorView().getLocationInWindow(iArr);
            PixelCopy.request(window, new Rect(iArr[0], iArr[1], iArr[0] + decorView.getWidth(), iArr[1] + decorView.getHeight()), createBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.guochao.faceshow.aaspring.utils.ScreenShotHelper.2
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                public void onPixelCopyFinished(int i9) {
                    if (ScreenShotHelper.this.mOnScreenShotListener != null) {
                        ScreenShotHelper.this.mOnScreenShotListener.onCallBack(createBitmap);
                    }
                }
            }, new Handler(Looper.getMainLooper()));
            return;
        }
        fragment.startActivityForResult(((MediaProjectionManager) fragment.getContext().getSystemService("media_projection")).createScreenCaptureIntent(), REQUEST_MEDIA_PROJECTION);
    }
}
