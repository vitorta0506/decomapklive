package com.guochao.faceshow.aaspring.modulars.push.messagehandler;

import androidx.collection.ArrayMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0006\u001a\u00020\u00072\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000b"}, d2 = {"TAG", "", "executor", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "getExecutor", "()Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "registerDisplayer", "", "map", "Landroidx/collection/ArrayMap;", "Lcom/guochao/faceshow/aaspring/modulars/push/messagehandler/PushNotificationDisplayer;", "app_GooglePlayRelease"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PushNotificationDisplayerKt {
    @NotNull
    public static final String TAG = "NotificationDisplayer";
    @NotNull
    private static final ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(2);

    @NotNull
    public static final ScheduledThreadPoolExecutor getExecutor() {
        return executor;
    }

    public static final void registerDisplayer(@NotNull ArrayMap<String, PushNotificationDisplayer> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        map.put("12", LiveRoomDisplayer.INSTANCE);
        map.put("58", PrivateLiveRoomDisplayer.INSTANCE);
        map.put("98", FirstRechargeDisplayer.INSTANCE);
    }
}
