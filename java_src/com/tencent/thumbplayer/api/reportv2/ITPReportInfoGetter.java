package com.tencent.thumbplayer.api.reportv2;

import androidx.annotation.Nullable;
import java.util.Map;
/* loaded from: classes4.dex */
public interface ITPReportInfoGetter {
    @Nullable
    Map<String, String> getInitExtendReportInfo();

    @Nullable
    Map<String, String> getPeriodExtendReportInfo();
}
