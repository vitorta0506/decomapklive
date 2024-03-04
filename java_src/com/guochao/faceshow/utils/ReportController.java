package com.guochao.faceshow.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.ScreenShotHelper;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.activity.ReportDetailActivity;
import com.guochao.lib_service_center.report.service.ReportProxy;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.light.utils.FileUtils;
@Route(path = RouterPath.ROUTER_GC_GC_REPORT)
/* loaded from: classes4.dex */
public class ReportController implements ReportProxy {
    private static final String[] PERMISSIONS = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    public static final String REPORT_TYPE_COMMENT = "3";
    public static final String REPORT_TYPE_DYNAMIC = "12";
    public static final String REPORT_TYPE_DYNAMIC_COMMENT = "13";
    public static final String REPORT_TYPE_LIVE = "2";
    public static final String REPORT_TYPE_MOMENT = "4";
    public static final String REPORT_TYPE_ONE_V_ONE = "8";
    public static final String REPORT_TYPE_PERSON = "5";
    public static final String REPORT_TYPE_TOPIC = "12";
    public static final String REPORT_TYPE_TRTC = "16";
    public static final String REPORT_TYPE_VIDEO = "1";
    public static final String REPORT_TYPE_VOICE_ROOM = "17";

    /* loaded from: classes4.dex */
    public @interface ReportType {
    }

    private static Bitmap addMatrixTimeWatermark(Bitmap bitmap, float f10) {
        Matrix matrix = new Matrix();
        matrix.setScale(f10, f10);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
        paint.setColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_text_level_1));
        paint.setTextSize(TCUtils.sp2px(BaseApplication.getInstance(), 14.0f) * f10);
        canvas.drawText(format, (createBitmap.getWidth() - paint.measureText(format)) - (DensityUtil.dp2px(BaseApplication.getInstance(), 16.0f) * f10), (DensityUtil.dp2px(BaseApplication.getInstance(), 16.0f) * f10) + (TCUtils.sp2px(BaseApplication.getInstance(), 14.0f) * f10) + (StatusBarHelper.getStatusbarHeight(BaseApplication.getInstance()) * f10), paint);
        canvas.save();
        canvas.restore();
        return createBitmap;
    }

    private static Bitmap addTimeWatermark(Bitmap bitmap) {
        int width = bitmap.getWidth();
        Bitmap createBitmap = Bitmap.createBitmap(width, bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        Paint paint = new Paint();
        String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
        paint.setColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_text_level_1));
        paint.setTextSize(TCUtils.sp2px(BaseApplication.getInstance(), 14.0f));
        canvas.drawText(format, (width - paint.measureText(format)) - DensityUtil.dp2px(BaseApplication.getInstance(), 16.0f), DensityUtil.dp2px(BaseApplication.getInstance(), 16.0f) + TCUtils.sp2px(BaseApplication.getInstance(), 14.0f) + StatusBarHelper.getStatusbarHeight(BaseApplication.getInstance()), paint);
        canvas.save();
        canvas.restore();
        return createBitmap;
    }

    public static void afterBitmap(Activity activity, Bitmap bitmap, String str, String str2, String str3) {
        String str4 = FilePathProvider.getCachePath() + File.separator + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG;
        FileUtil.saveBitmap(str4, addMatrixTimeWatermark(bitmap, 0.7f));
        Intent intent = new Intent(activity, ReportDetailActivity.class);
        intent.putExtra("pathPhoto", str4);
        intent.putExtra("account", str);
        intent.putExtra("infoId", str2);
        intent.putExtra("reportType", str3);
        activity.startActivity(intent);
        if (REPORT_TYPE_TRTC.equals(str3)) {
            activity.getWindow().addFlags(8192);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap handleBitmap(Bitmap bitmap, Bitmap bitmap2) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap);
        new Canvas(createBitmap).drawBitmap(bitmap2, (bitmap.getWidth() - bitmap2.getWidth()) / 2, (bitmap.getHeight() - bitmap2.getHeight()) / 2, (Paint) null);
        return createBitmap;
    }

    public static void report(Activity activity, String str, String str2, @ReportType String str3) {
        report(activity, str, str2, str3, str3.equals(REPORT_TYPE_ONE_V_ONE));
    }

    public static void reportWithDialogAndActivity(final Activity activity, Fragment fragment, Window window, final String str, final String str2, @ReportType final String str3) {
        ScreenShotHelper.getInstance().startScreenShot(fragment, window, false, new ScreenShotHelper.OnScreenShotListener() { // from class: com.guochao.faceshow.utils.ReportController.4
            @Override // com.guochao.faceshow.aaspring.utils.ScreenShotHelper.OnScreenShotListener
            public void onCallBack(final Bitmap bitmap) {
                ScreenShotHelper.getInstance().startScreenShot(activity, false, new ScreenShotHelper.OnScreenShotListener() { // from class: com.guochao.faceshow.utils.ReportController.4.1
                    @Override // com.guochao.faceshow.aaspring.utils.ScreenShotHelper.OnScreenShotListener
                    public void onCallBack(Bitmap bitmap2) {
                        Bitmap handleBitmap = ReportController.handleBitmap(bitmap2, bitmap);
                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                        ReportController.afterBitmap(activity, handleBitmap, str, str2, str3);
                    }
                });
            }
        });
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(Context context) {
    }

    @Override // com.guochao.lib_service_center.report.service.ReportProxy
    public void start(@NonNull Activity activity, @NonNull String str, @NonNull String str2, @NonNull String str3, boolean z10, int i9) {
        report(activity, str, str2, str3, z10, i9);
    }

    public static void report(final Activity activity, final String str, final String str2, @ReportType final String str3, boolean z10) {
        final boolean equals = str3.equals(REPORT_TYPE_ONE_V_ONE);
        if (equals) {
            activity.getWindow().clearFlags(8192);
        }
        ScreenShotHelper.getInstance().startScreenShot(activity, z10, new ScreenShotHelper.OnScreenShotListener() { // from class: com.guochao.faceshow.utils.ReportController.1
            @Override // com.guochao.faceshow.aaspring.utils.ScreenShotHelper.OnScreenShotListener
            public void onCallBack(Bitmap bitmap) {
                if (equals) {
                    activity.getWindow().addFlags(8192);
                }
                ReportController.afterBitmap(activity, bitmap, str, str2, str3);
            }
        });
    }

    public static void report(final Activity activity, final String str, final String str2, @ReportType final String str3, boolean z10, final int i9) {
        final boolean equals = str3.equals(REPORT_TYPE_ONE_V_ONE);
        final boolean z11 = i9 == Contants.SWITCH_SCREEN_SHOTS_OFF;
        if (equals || z11) {
            activity.getWindow().clearFlags(8192);
        }
        ScreenShotHelper.getInstance().startScreenShot(activity, z10, new ScreenShotHelper.OnScreenShotListener() { // from class: com.guochao.faceshow.utils.ReportController.2
            @Override // com.guochao.faceshow.aaspring.utils.ScreenShotHelper.OnScreenShotListener
            public void onCallBack(Bitmap bitmap) {
                if (equals || z11) {
                    activity.getWindow().addFlags(8192);
                }
                ReportController.afterBitmap(activity, bitmap, str, str2, str3, i9);
            }
        });
    }

    public static void report(Activity activity, Fragment fragment, Window window, String str, String str2, @ReportType String str3) {
        report(activity, fragment, window, str, str2, str3, false);
    }

    public static void report(final Activity activity, Fragment fragment, Window window, final String str, final String str2, @ReportType final String str3, boolean z10) {
        ScreenShotHelper.getInstance().startScreenShot(fragment, window, z10, new ScreenShotHelper.OnScreenShotListener() { // from class: com.guochao.faceshow.utils.ReportController.3
            @Override // com.guochao.faceshow.aaspring.utils.ScreenShotHelper.OnScreenShotListener
            public void onCallBack(Bitmap bitmap) {
                ReportController.afterBitmap(activity, bitmap, str, str2, str3);
            }
        });
    }

    public static void afterBitmap(Activity activity, Bitmap bitmap, String str, String str2, String str3, int i9) {
        String str4 = FilePathProvider.getCachePath() + File.separator + System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG;
        FileUtil.saveBitmap(str4, addMatrixTimeWatermark(bitmap, 0.7f));
        Intent intent = new Intent(activity, ReportDetailActivity.class);
        intent.putExtra("pathPhoto", str4);
        intent.putExtra("account", str);
        intent.putExtra("infoId", str2);
        intent.putExtra("reportType", str3);
        intent.putExtra(Contants.SP_KEY_SWITCH_SCREEN_SHOTS, i9);
        activity.startActivity(intent);
        if (REPORT_TYPE_TRTC.equals(str3)) {
            activity.getWindow().addFlags(8192);
        }
    }
}
