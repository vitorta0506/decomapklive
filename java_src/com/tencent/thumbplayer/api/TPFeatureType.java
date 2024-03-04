package com.tencent.thumbplayer.api;

import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes4.dex */
public class TPFeatureType {
    @TPNativeKeyMap.MapFeatureType(-1)
    public static final int TP_FEATURE_NONE = -1;
    @TPNativeKeyMap.MapFeatureType(0)
    public static final int TP_SUBTITLE_RGBA_OUTPUT = 0;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface TP_FEATURE_TYPE {
    }
}
