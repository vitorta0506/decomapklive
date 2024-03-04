package com.guochao.faceshow.utils;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.TXVideoEditer;
import com.tencent.ugc.TXVideoInfoReader;
import com.tencent.ugc.UGCTransitionRules;
import java.io.File;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class TailWaterMark {
    public static final int PERCENT_NULL = -1;
    private final Context mContext;
    private String mCurrWaterMarkPath;
    private boolean mDownLoadPercentShow = false;
    private com.guochao.faceshow.aaspring.base.utils.a mDownLoadRequest;
    private TXVideoEditer mTxVideoEditor;
    private WaterMarkProcessListener mWaterMarkProcessListener;

    /* loaded from: classes4.dex */
    public interface WaterMarkProcessListener {
        void onNetWorkError();

        void onWaterMarkFinish(String str, Boolean bool, String str2);

        void onWaterMarkProgress(int i9);
    }

    public TailWaterMark(Context context) {
        this.mContext = context;
        this.mTxVideoEditor = new TXVideoEditer(context);
    }

    private Boolean checkVideoWaterMark(String str) {
        return Boolean.valueOf(FileUtil.isFileExist(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDownLoadWaterMark(String str, String str2, String str3, String str4, int i9, int i10, String str5) {
        int i11;
        int i12;
        if (this.mTxVideoEditor.setVideoPath(str3) != 0) {
            return;
        }
        if (i10 == 0 || i9 == 0) {
            TXVideoEditConstants.TXVideoInfo videoFileInfo = TXVideoInfoReader.getInstance().getVideoFileInfo(str3);
            int i13 = videoFileInfo == null ? 0 : videoFileInfo.width;
            i11 = videoFileInfo == null ? 0 : videoFileInfo.height;
            i12 = i13;
        } else {
            i12 = i9;
            i11 = i10;
        }
        tailWaterMark(str, str2, str4, i12, i11, str5);
    }

    private void downLoadVideo(final String str, String str2, final String str3, final String str4, final String str5, final int i9, final int i10, final String str6) {
        WaterMarkProcessListener waterMarkProcessListener = this.mWaterMarkProcessListener;
        if (waterMarkProcessListener != null) {
            waterMarkProcessListener.onWaterMarkProgress(0);
        }
        this.mDownLoadRequest = FaceCastHttpClientImpl.h(BaseApplication.getInstance()).a(null, str2, str3, new com.guochao.faceshow.aaspring.base.http.callback.d<File>() { // from class: com.guochao.faceshow.utils.TailWaterMark.1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<File> aVar) {
                if (TailWaterMark.this.mWaterMarkProcessListener != null) {
                    TailWaterMark.this.mWaterMarkProcessListener.onNetWorkError();
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.d
            public void onProgress(long j10, long j11, double d10) {
                long j12 = (j10 * 100) / j11;
                int i11 = (int) (((float) (j12 < 100 ? j12 : 100L)) * 0.7f);
                if (TailWaterMark.this.mWaterMarkProcessListener != null) {
                    TailWaterMark.this.mWaterMarkProcessListener.onWaterMarkProgress(i11);
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
                onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
            }

            public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
                if (TailWaterMark.this.mWaterMarkProcessListener != null) {
                    TailWaterMark.this.mWaterMarkProcessListener.onWaterMarkProgress(70);
                }
                TailWaterMark.this.doDownLoadWaterMark(str, str4, str3, str5, i9, i10, str6);
            }
        });
    }

    private static Bitmap drawTextToBitmap(Bitmap bitmap, String str, Paint paint, int i9, int i10) {
        Bitmap.Config config = bitmap.getConfig();
        paint.setDither(true);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap copy = bitmap.copy(config, true);
        new Canvas(copy).drawText(str, i9, i10, paint);
        return copy;
    }

    private Bitmap drawTextToBottom(Context context, Bitmap bitmap, String str, int i9, int i10, int i11) {
        if (TextUtils.isEmpty(str)) {
            return bitmap;
        }
        Paint paint = new Paint(2);
        paint.setColor(-1);
        paint.setTextSize(DensityUtil.dp2px(context, i9));
        Rect rect = new Rect();
        paint.getTextBounds(str + "·", 0, TextUtils.isEmpty(str) ? 0 : str.length() + 1, rect);
        paint.setColor(i10);
        return drawTextToBitmap(bitmap, str, paint, bitmap.getWidth() - rect.width(), BaseConfig.isChinese() ? bitmap.getHeight() - DensityUtil.dp2px(15.0f) : bitmap.getHeight());
    }

    private void makeWaterMarkVideo(String str, String str2, String str3, String str4, String str5, int i9, int i10) {
        int i11;
        int i12;
        cancelProcess();
        if (checkVideoWaterMark(str2).booleanValue()) {
            WaterMarkProcessListener waterMarkProcessListener = this.mWaterMarkProcessListener;
            if (waterMarkProcessListener != null) {
                waterMarkProcessListener.onWaterMarkFinish(str, Boolean.TRUE, str2);
                return;
            }
            return;
        }
        String str6 = FilePathProvider.getCachePath("download") + File.separator + str4 + FileUtils.PIC_POSTFIX_MP4;
        if (FileUtil.isFileExist(str6)) {
            if (this.mTxVideoEditor.setVideoPath(str6) != 0) {
                this.mDownLoadPercentShow = true;
                downLoadVideo(str, str3, str6, str2, str5, i9, i10, str4);
                return;
            }
            this.mDownLoadPercentShow = false;
            WaterMarkProcessListener waterMarkProcessListener2 = this.mWaterMarkProcessListener;
            if (waterMarkProcessListener2 != null) {
                waterMarkProcessListener2.onWaterMarkProgress(0);
            }
            if (i10 == 0 || i9 == 0) {
                TXVideoEditConstants.TXVideoInfo videoFileInfo = TXVideoInfoReader.getInstance().getVideoFileInfo(str6);
                int i13 = videoFileInfo == null ? 0 : videoFileInfo.width;
                i11 = videoFileInfo != null ? videoFileInfo.height : 0;
                i12 = i13;
            } else {
                i12 = i9;
                i11 = i10;
            }
            tailWaterMark(str, str2, str5, i12, i11, str4);
            return;
        }
        this.mDownLoadPercentShow = true;
        downLoadVideo(str, str3, str6, str2, str5, i9, i10, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanCameraFile(String str) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(str)));
        this.mContext.sendBroadcast(intent);
    }

    private void tailWaterMark(final String str, final String str2, String str3, int i9, int i10, final String str4) {
        this.mCurrWaterMarkPath = str2;
        new TXVideoEditConstants.TXVideoInfo();
        int min = (i9 * UGCTransitionRules.DEFAULT_IMAGE_WIDTH) / Math.min(i9, i10);
        int min2 = (i10 * UGCTransitionRules.DEFAULT_IMAGE_WIDTH) / Math.min(i9, i10);
        this.mTxVideoEditor.setVideoGenerateListener(new TXVideoEditer.TXVideoGenerateListener() { // from class: com.guochao.faceshow.utils.TailWaterMark.2
            @Override // com.tencent.ugc.TXVideoEditer.TXVideoGenerateListener
            public void onGenerateComplete(TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
                if (TailWaterMark.this.mWaterMarkProcessListener == null) {
                    return;
                }
                if (tXGenerateResult.retCode == 0) {
                    TailWaterMark.this.mWaterMarkProcessListener.onWaterMarkProgress(100);
                    String str5 = str2;
                    if (Build.VERSION.SDK_INT >= 29) {
                        str5 = FilePathProvider.getCameraPath() + File.separator + str4 + "water_.mp4";
                        com.guochao.faceshow.aaspring.utils.FileUtils.saveVideoToGallery(str2, str5);
                        File file = new File(str2);
                        if (file.exists()) {
                            file.delete();
                        }
                    } else {
                        TailWaterMark.this.scanCameraFile(str5);
                    }
                    TailWaterMark.this.mWaterMarkProcessListener.onWaterMarkFinish(str, Boolean.TRUE, str5);
                    return;
                }
                TailWaterMark.this.mWaterMarkProcessListener.onWaterMarkFinish(str, Boolean.FALSE, "");
            }

            @Override // com.tencent.ugc.TXVideoEditer.TXVideoGenerateListener
            public void onGenerateProgress(float f10) {
                if (TailWaterMark.this.mWaterMarkProcessListener == null) {
                    return;
                }
                float f11 = f10 * 100.0f;
                if (TailWaterMark.this.mDownLoadPercentShow) {
                    f11 = (f11 * 0.3f) + 70.0f;
                }
                if (f11 >= 100.0f) {
                    f11 = 99.0f;
                }
                TailWaterMark.this.mWaterMarkProcessListener.onWaterMarkProgress((int) f11);
            }
        });
        float dp2px = DensityUtil.dp2px(this.mContext, 12.0f);
        float dp2px2 = DensityUtil.dp2px(this.mContext, 20.0f);
        Bitmap drawTextToBottom = drawTextToBottom(this.mContext, BitmapFactory.decodeResource(this.mContext.getResources(), R.mipmap.hello_water_maker), String.format("ID:%s", str3), 18, ContextCompat.getColor(this.mContext, R.color.white), DensityUtil.dp2px(this.mContext, 6.0f));
        Matrix matrix = new Matrix();
        float min3 = 360.0f / Math.min(min, min2);
        matrix.setScale(min3, min3);
        Bitmap createBitmap = Bitmap.createBitmap(drawTextToBottom, 0, 0, drawTextToBottom.getWidth(), drawTextToBottom.getHeight(), matrix, true);
        TXVideoEditConstants.TXRect tXRect = new TXVideoEditConstants.TXRect();
        float f10 = min;
        tXRect.width = (createBitmap.getWidth() * 1.0f) / f10;
        if (min2 != 0 && (min2 != 100 || min != 100)) {
            if (min > min2 && SharePlatformBean.Instagram.NAME.equals(str)) {
                tXRect.f34645x = ((((min + min2) / 2.0f) - createBitmap.getWidth()) - dp2px) / f10;
                tXRect.f34646y = ((min2 - createBitmap.getHeight()) - dp2px2) / min2;
            } else if (SharePlatformBean.Instagram.NAME.equals(str)) {
                tXRect.f34645x = ((min - createBitmap.getWidth()) - dp2px) / f10;
                tXRect.f34646y = ((((min + min2) / 2.0f) - createBitmap.getHeight()) - dp2px2) / min2;
            } else {
                tXRect.f34645x = ((min - createBitmap.getWidth()) - dp2px) / f10;
                tXRect.f34646y = ((min2 - createBitmap.getHeight()) - dp2px2) / min2;
            }
        } else {
            tXRect.f34645x = 0.6f;
            tXRect.f34646y = 0.85f;
        }
        this.mTxVideoEditor.generateVideo(3, str2);
        this.mTxVideoEditor.setWaterMark(createBitmap, tXRect);
    }

    public void cancelProcess() {
        com.guochao.faceshow.aaspring.base.utils.a aVar = this.mDownLoadRequest;
        if (aVar != null) {
            aVar.cancel();
        }
        TXVideoEditer tXVideoEditer = this.mTxVideoEditor;
        if (tXVideoEditer != null) {
            tXVideoEditer.cancel();
        }
        FileUtil.deleteFile(this.mCurrWaterMarkPath);
        this.mCurrWaterMarkPath = "";
    }

    public void destroy() {
        TXVideoEditer tXVideoEditer = this.mTxVideoEditor;
        if (tXVideoEditer != null) {
            tXVideoEditer.cancel();
            this.mTxVideoEditor.release();
            this.mTxVideoEditor.setVideoGenerateListener(null);
            this.mTxVideoEditor = null;
        }
        com.guochao.faceshow.aaspring.base.utils.a aVar = this.mDownLoadRequest;
        if (aVar != null) {
            aVar.cancel();
        }
        this.mCurrWaterMarkPath = "";
    }

    public void makeWaterMarkVideoToDCMI(String str, String str2, String str3, String str4, int i9, int i10) {
        String str5;
        if (Build.VERSION.SDK_INT >= 29) {
            str5 = FilePathProvider.getCachePath() + File.separator + str3 + "water_.mp4";
        } else {
            str5 = FilePathProvider.getCameraPath() + File.separator + str3 + "water_.mp4";
        }
        String str6 = str5;
        if (TextUtils.isEmpty(str4)) {
            str4 = SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID);
        }
        makeWaterMarkVideo(str, str6, str2, str3, str4, i9, i10);
    }

    public void makeWaterMarkVideoToFaceShow(String str, String str2, String str3, String str4, int i9, int i10) {
        String str5 = FilePathProvider.getCameraPath() + str3 + "water_.mp4";
        String str6 = FilePathProvider.getMusicPath("Video") + File.separator + str3 + "water_.mp4";
        if (checkVideoWaterMark(str5).booleanValue()) {
            WaterMarkProcessListener waterMarkProcessListener = this.mWaterMarkProcessListener;
            if (waterMarkProcessListener != null) {
                waterMarkProcessListener.onWaterMarkFinish(str, Boolean.TRUE, str5);
                return;
            }
            return;
        }
        makeWaterMarkVideo(str, str6, str2, str3, TextUtils.isEmpty(str4) ? SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID) : str4, i9, i10);
    }

    public void setWaterMarkProcessListener(WaterMarkProcessListener waterMarkProcessListener) {
        this.mWaterMarkProcessListener = waterMarkProcessListener;
    }
}
