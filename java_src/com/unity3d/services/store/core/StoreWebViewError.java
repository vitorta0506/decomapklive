package com.unity3d.services.store.core;

import com.unity3d.scar.adapter.common.WebViewAdsError;
import com.unity3d.services.core.webview.WebViewEventCategory;
/* loaded from: classes4.dex */
public class StoreWebViewError extends WebViewAdsError {
    public StoreWebViewError(Enum<?> r12, String str, Object... objArr) {
        super(r12, str, objArr);
    }

    @Override // com.unity3d.scar.adapter.common.WebViewAdsError, com.unity3d.scar.adapter.common.IUnityAdsError
    public String getDomain() {
        return WebViewEventCategory.STORE.name();
    }
}
