package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import com.guochao.faceshow.aaspring.config.ServerConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u001c\u0010\u0003\u001a\u00020\u00048FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDownTimeUtils;", "", "()V", "lastLoginTime", "", "getLastLoginTime", "()J", "setLastLoginTime", "(J)V", "showIcon", "", "getShowIcon", "()Z", "setShowIcon", "(Z)V", "setLoginTime", "", "newConfig", "Lcom/guochao/faceshow/aaspring/config/ServerConfig;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FirstRechargeDownTimeUtils {
    @NotNull
    public static final FirstRechargeDownTimeUtils INSTANCE = new FirstRechargeDownTimeUtils();
    private static long lastLoginTime;
    private static boolean showIcon;

    private FirstRechargeDownTimeUtils() {
    }

    public final long getLastLoginTime() {
        Long l10 = (Long) com.guochao.faceshow.aaspring.manager.b.a("live", "LastLoginTime", Long.TYPE);
        if (l10 == null) {
            return 0L;
        }
        return l10.longValue();
    }

    public final boolean getShowIcon() {
        return showIcon;
    }

    public final void setLastLoginTime(long j10) {
        lastLoginTime = j10;
    }

    public final void setLoginTime(@NotNull ServerConfig newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        if (b8.e.g().c().getRecharged() == 1) {
            lastLoginTime = 0L;
            return;
        }
        long serverTimeDiff = newConfig.getServerTimeDiff() + System.currentTimeMillis();
        if (serverTimeDiff - getLastLoginTime() > 86400000) {
            lastLoginTime = serverTimeDiff;
            com.guochao.faceshow.aaspring.manager.b.f("live", "LastLoginTime", Long.valueOf(serverTimeDiff));
        }
    }

    public final void setShowIcon(boolean z10) {
        showIcon = z10;
    }
}
