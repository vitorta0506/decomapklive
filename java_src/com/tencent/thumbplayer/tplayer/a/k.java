package com.tencent.thumbplayer.tplayer.a;

import androidx.annotation.Nullable;
import com.tencent.thumbplayer.utils.TPLogUtil;
/* loaded from: classes4.dex */
public class k {
    @Nullable
    public static a a(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    TPLogUtil.e("TPReporterFactory", "Type is not match ReporterType, return null");
                    return null;
                }
                return new f();
            }
            return new e();
        }
        return new n();
    }
}
