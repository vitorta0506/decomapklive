package com.guochao.lib_service_center.liveroom.service;

import com.guochao.faceshow.utils.TCConstants;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H&¨\u0006\b"}, d2 = {"Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;", "", "notifyLocalImage", "", TCConstants.VIDEO_RECORD_VIDEPATH, "", "notifyNetworkImage", "url", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface CoverImageDisplayer {
    void notifyLocalImage(@Nullable String str);

    void notifyNetworkImage(@Nullable String str);
}
