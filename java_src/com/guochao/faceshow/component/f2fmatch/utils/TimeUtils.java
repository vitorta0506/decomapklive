package com.guochao.faceshow.component.f2fmatch.utils;

import com.facebook.internal.security.CertificateUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/TimeUtils;", "", "()V", "timeToString", "", "timeInMillis", "", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TimeUtils {
    @NotNull
    public static final TimeUtils INSTANCE = new TimeUtils();

    private TimeUtils() {
    }

    @Nullable
    public final String timeToString(long j10) {
        int abs = (int) (Math.abs(j10 + 500) / 1000);
        StringBuilder sb2 = new StringBuilder();
        int i9 = abs / 60;
        if (i9 < 10) {
            sb2.append("0");
        }
        sb2.append(i9);
        sb2.append(CertificateUtil.DELIMITER);
        int i10 = abs % 60;
        if (i10 < 10) {
            sb2.append("0");
        }
        sb2.append(i10);
        return sb2.toString();
    }
}
