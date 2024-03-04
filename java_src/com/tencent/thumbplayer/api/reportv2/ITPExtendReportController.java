package com.tencent.thumbplayer.api.reportv2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public interface ITPExtendReportController {
    void addReportChannelListener(@NonNull ITPReportChannelListener iTPReportChannelListener);

    void setReportInfoGetter(@Nullable ITPReportInfoGetter iTPReportInfoGetter);
}
