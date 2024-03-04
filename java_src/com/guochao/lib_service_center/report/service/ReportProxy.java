package com.guochao.lib_service_center.report.service;

import android.app.Activity;
import com.alibaba.android.arouter.facade.template.IProvider;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&¨\u0006\u000e"}, d2 = {"Lcom/guochao/lib_service_center/report/service/ReportProxy;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "start", "", "context", "Landroid/app/Activity;", "accountId", "", "infoId", "reportType", "withSurface", "", "screenShotSwitch", "", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface ReportProxy extends IProvider {
    void start(@NotNull Activity activity, @NotNull String str, @NotNull String str2, @NotNull String str3, boolean z10, int i9);
}
