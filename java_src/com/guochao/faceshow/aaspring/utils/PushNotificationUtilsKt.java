package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.utils.PushUtils;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\u0003\"\u0017\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004\"\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"sLiveInfos", "", "Lcom/guochao/faceshow/utils/PushUtils$LiveInfo;", "getSLiveInfos", "()Ljava/util/List;", "vibratorPattern", "", "getVibratorPattern", "()[J", "app_GooglePlayRelease"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PushNotificationUtilsKt {
    @NotNull
    private static final List<PushUtils.LiveInfo> sLiveInfos = new LinkedList();
    @NotNull
    private static final long[] vibratorPattern = {200, 100, 200};

    @NotNull
    public static final List<PushUtils.LiveInfo> getSLiveInfos() {
        return sLiveInfos;
    }

    @NotNull
    public static final long[] getVibratorPattern() {
        return vibratorPattern;
    }
}
