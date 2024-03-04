package com.tencent.qgame.animplayer.util;

import com.guochao.faceshow.aaspring.utils.Language;
import com.huawei.hms.opendevice.i;
import com.huawei.hms.push.e;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u001e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/tencent/qgame/animplayer/util/ALog;", "", "()V", "isDebug", "", "()Z", "setDebug", "(Z)V", "log", "Lcom/tencent/qgame/animplayer/util/IALog;", "getLog", "()Lcom/tencent/qgame/animplayer/util/IALog;", "setLog", "(Lcom/tencent/qgame/animplayer/util/IALog;)V", "d", "", "tag", "", "msg", e.f27721a, Language.TURKISH, "", i.TAG, "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class ALog {
    public static final ALog INSTANCE = new ALog();
    private static boolean isDebug;
    @Nullable
    private static IALog log;

    private ALog() {
    }

    public final void d(@NotNull String str, @NotNull String str2) {
        IALog iALog;
        if (!isDebug || (iALog = log) == null) {
            return;
        }
        iALog.d(str, str2);
    }

    public final void e(@NotNull String str, @NotNull String str2) {
        IALog iALog = log;
        if (iALog != null) {
            iALog.e(str, str2);
        }
    }

    @Nullable
    public final IALog getLog() {
        return log;
    }

    public final void i(@NotNull String str, @NotNull String str2) {
        IALog iALog = log;
        if (iALog != null) {
            iALog.i(str, str2);
        }
    }

    public final boolean isDebug() {
        return isDebug;
    }

    public final void setDebug(boolean z10) {
        isDebug = z10;
    }

    public final void setLog(@Nullable IALog iALog) {
        log = iALog;
    }

    public final void e(@NotNull String str, @NotNull String str2, @NotNull Throwable th2) {
        IALog iALog = log;
        if (iALog != null) {
            iALog.e(str, str2, th2);
        }
    }
}
