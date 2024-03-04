package com.guochao.lib_service_center.push.service;

import com.alibaba.android.arouter.facade.template.IProvider;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/guochao/lib_service_center/push/service/ThirdPushTokenManager;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "getThirdPushToken", "", "getThirdPushType", "", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface ThirdPushTokenManager extends IProvider {
    @NotNull
    String getThirdPushToken();

    int getThirdPushType();
}
