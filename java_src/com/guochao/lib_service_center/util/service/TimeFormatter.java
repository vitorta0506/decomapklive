package com.guochao.lib_service_center.util.service;

import com.alibaba.android.arouter.facade.template.IProvider;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/guochao/lib_service_center/util/service/TimeFormatter;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "getIMTime", "", CrashHianalyticsData.TIME, "", "getVoiceRoomOfflineTime", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface TimeFormatter extends IProvider {
    @NotNull
    String getIMTime(long j10);

    @NotNull
    String getVoiceRoomOfflineTime(long j10);
}
