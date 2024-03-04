package com.guochao.faceshow.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.lib_service_center.util.service.ISensitiveWordFilter;
@Route(path = RouterPath.ROUTER_SENSITIVE_WORD_FILTER)
/* loaded from: classes4.dex */
public class SensitiveWordFilterProxy implements ISensitiveWordFilter {
    @Override // com.guochao.lib_service_center.util.service.ISensitiveWordFilter
    @NonNull
    public String checkWord(@NonNull String str) {
        return SensitiveWordFilter.getInstance().checkKeyword(str);
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(Context context) {
    }
}
