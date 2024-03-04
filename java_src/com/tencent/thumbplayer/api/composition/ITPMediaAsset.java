package com.tencent.thumbplayer.api.composition;

import androidx.annotation.Nullable;
import java.util.Map;
/* loaded from: classes4.dex */
public interface ITPMediaAsset {
    public static final int INVALID_ID = -1;
    public static final int MEDIA_TYPE_AUDIO = 3;
    public static final int MEDIA_TYPE_AV_MIX = 1;
    public static final int MEDIA_TYPE_MUTABLE = 4;
    public static final int MEDIA_TYPE_VIDEO = 2;

    @Nullable
    ITPMediaAssetExtraParam getExtraParam();

    Map<String, String> getHttpHeader();

    int getMediaType();

    String getUrl();

    void setExtraParam(@Nullable ITPMediaAssetExtraParam iTPMediaAssetExtraParam);

    void setHttpHeader(@Nullable Map<String, String> map);
}
