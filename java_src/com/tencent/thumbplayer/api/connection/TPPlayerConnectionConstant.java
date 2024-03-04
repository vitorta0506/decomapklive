package com.tencent.thumbplayer.api.connection;

import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes4.dex */
public class TPPlayerConnectionConstant {
    @TPNativeKeyMap.MapConnectionAction(-1)
    public static final int ACTION_NONE = -1;
    @TPNativeKeyMap.MapConnectionAction(1)
    public static final int ACTION_OBTAIN_SYNC_CLOCK = 1;
    @TPNativeKeyMap.MapConnectionAction(0)
    public static final int ACTION_PROVIDE_SYNC_CLOCK = 0;
    @TPNativeKeyMap.MapConnectionConfig(0)
    public static final int CFG_LONG_SYNC_CLOCK_OFFSET_MS = 0;

    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface Action {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface Config {
    }
}
