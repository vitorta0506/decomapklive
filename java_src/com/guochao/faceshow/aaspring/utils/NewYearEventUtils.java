package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Objects;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes3.dex */
public class NewYearEventUtils {
    private static boolean sPlayed = false;

    /* loaded from: classes3.dex */
    private static class ParseCallback implements SVGAParser.ParseCompletion {
        WeakReference<SVGAImageView> mSVGAImageViewWeakReference;

        public ParseCallback(SVGAImageView sVGAImageView) {
            this.mSVGAImageViewWeakReference = new WeakReference<>(sVGAImageView);
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SVGAImageView sVGAImageView = this.mSVGAImageViewWeakReference.get();
            if (sVGAImageView == null) {
                return;
            }
            sVGAImageView.setVideoItem(sVGAVideoEntity);
            SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, sVGAImageView);
            sVGAImageView.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    private static class SvgaCallback implements SVGACallback {
        WeakReference<Activity> mWeakReference;

        public SvgaCallback(Activity activity) {
            this.mWeakReference = new WeakReference<>(activity);
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
            SVGAImageView sVGAImageView;
            Activity activity = this.mWeakReference.get();
            if (activity == null || (sVGAImageView = (SVGAImageView) activity.findViewById(R.id.sVGAImageView)) == null) {
                return;
            }
            ((ViewGroup) activity.findViewById(16908290)).removeView(sVGAImageView);
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onPause() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onRepeat() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onStep(int i9, double d10) {
        }
    }

    public static void checkNewYearEvent(Activity activity, ServerConfig serverConfig) {
        if (!shouldShowNewYearEvent(serverConfig) || sPlayed) {
            return;
        }
        sPlayed = true;
        obtainSvgaImageView(activity).setCallback(new SvgaCallback(activity));
    }

    private static SVGAImageView obtainSvgaImageView(Activity activity) {
        View findViewById = activity.findViewById(R.id.sVGAImageView);
        if (findViewById != null) {
            return (SVGAImageView) findViewById;
        }
        SVGAImageView sVGAImageView = new SVGAImageView(activity);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 81;
        sVGAImageView.setLayoutParams(layoutParams);
        ((ViewGroup) activity.findViewById(16908290)).addView(sVGAImageView);
        sVGAImageView.bringToFront();
        sVGAImageView.setLoops(1);
        sVGAImageView.setClearsAfterStop(true);
        return sVGAImageView;
    }

    public static void reset() {
        sPlayed = false;
    }

    private static boolean shouldShowNewYearEvent(@Nullable ServerConfig serverConfig) {
        ServerConfig s10 = com.guochao.faceshow.aaspring.manager.i.u().s();
        if (serverConfig == null && s10 == null) {
            return false;
        }
        if (serverConfig == null && com.guochao.faceshow.aaspring.manager.i.u().s().getIsActivity() == 0) {
            return false;
        }
        if ((serverConfig == null || serverConfig.getIsActivity() != 1) && !(serverConfig == null && com.guochao.faceshow.aaspring.manager.i.u().s().getIsActivity() == 1)) {
            return false;
        }
        String str = "last_new_year_event" + b8.e.g().c().getUserId();
        String str2 = SpUtils.getStr(BaseApplication.getInstance(), str);
        String format = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date());
        if (!TextUtils.isEmpty(str2) && Objects.equals(str2, format)) {
            if (Objects.equals(str2, format)) {
                return false;
            }
            SpUtils.setStr(BaseApplication.getInstance(), str, format);
            return true;
        }
        SpUtils.setStr(BaseApplication.getInstance(), str, format);
        return true;
    }
}
