package com.guochao.faceshow.aaspring.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewGroup;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.DensityUtil;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.opensource.svgaplayer.bitmap.SVGABitmapDecoderKt;
/* loaded from: classes3.dex */
public class SvgaImageViewUtils {
    static final long GB = 1073741824;

    public static void decodeRaw(int i9, String str, SVGAParser.ParseCompletion parseCompletion) {
        getParser().decodeFromInputStream(GCApplication.app().getResources().openRawResource(i9), str, parseCompletion, true);
    }

    public static void fitImageView(SVGAVideoEntity sVGAVideoEntity, SVGAImageView sVGAImageView) {
        fitImageView(sVGAVideoEntity, sVGAImageView, 3.0f);
    }

    public static void fitScreenWidth(SVGAVideoEntity sVGAVideoEntity, View view) {
        GCApplication app = GCApplication.app();
        double height = sVGAVideoEntity.getVideoSize().getHeight();
        double width = sVGAVideoEntity.getVideoSize().getWidth();
        int i9 = app.getResources().getDisplayMetrics().widthPixels;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = i9;
        layoutParams.height = (int) (height * ((float) (i9 / width)));
        view.setLayoutParams(layoutParams);
    }

    public static void fitWidth(SVGAVideoEntity sVGAVideoEntity, View view) {
        double height = sVGAVideoEntity.getVideoSize().getHeight();
        double width = sVGAVideoEntity.getVideoSize().getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = (int) (height * ((float) (view.getMeasuredWidth() / width)));
        view.setLayoutParams(layoutParams);
    }

    public static SVGAParser getParser() {
        return SVGAParser.Companion.shareParser();
    }

    public static void setOptions(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
        if (activityManager == null) {
            return;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        float f10 = (((float) memoryInfo.totalMem) * 1.0f) / 1.0737418E9f;
        if (f10 <= 1.7f) {
            options.inSampleSize = 3;
        } else if (f10 <= 3.0f) {
            options.inSampleSize = 2;
        }
        SVGABitmapDecoderKt.setOption(options);
    }

    public static void fitImageView(SVGAVideoEntity sVGAVideoEntity, SVGAImageView sVGAImageView, float f10) {
        if (sVGAVideoEntity == null || sVGAImageView == null) {
            return;
        }
        double d10 = f10;
        double dp2px = DensityUtil.dp2px((float) (sVGAVideoEntity.getVideoSize().getHeight() / d10));
        double dp2px2 = DensityUtil.dp2px((float) (sVGAVideoEntity.getVideoSize().getWidth() / d10));
        ViewGroup.LayoutParams layoutParams = sVGAImageView.getLayoutParams();
        layoutParams.width = (int) dp2px2;
        layoutParams.height = (int) dp2px;
        sVGAImageView.setLayoutParams(layoutParams);
    }
}
