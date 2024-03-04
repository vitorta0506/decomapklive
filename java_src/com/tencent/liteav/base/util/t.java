package com.tencent.liteav.base.util;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.tencent.ugc.UGCTransitionRules;
/* loaded from: classes4.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f31036a;

    /* renamed from: b  reason: collision with root package name */
    private static final a<CpuUsageMeasurer> f31037b = new a<>(u.b());

    public static int[] a() {
        if (f31036a) {
            f31036a = false;
            f31037b.a();
            CpuUsageMeasurer.a();
            return new int[]{0, 0};
        }
        f31037b.a();
        return CpuUsageMeasurer.a();
    }

    public static int b(Context context) {
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return windowManager.getDefaultDisplay().getRotation();
            }
            return 0;
        } catch (Exception e10) {
            LiteavLog.e("SystemUtil", "get display rotation failed.", e10);
            return 0;
        }
    }

    public static q a(Context context) {
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
                return new q(displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
        } catch (Exception e10) {
            LiteavLog.e("SystemUtil", "get display size failed.", e10);
        }
        return new q(UGCTransitionRules.DEFAULT_IMAGE_WIDTH, UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
    }
}
