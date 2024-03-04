package com.unity3d.services.ads.operation;

import com.unity3d.services.core.request.metrics.ISDKMetricSender;
import com.unity3d.services.core.webview.bridge.IWebViewSharedObject;
import com.unity3d.services.core.webview.bridge.WebViewBridgeSharedObjectStore;
import com.unity3d.services.core.webview.bridge.invocation.WebViewBridgeInvocationSingleThreadedExecutor;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4.dex */
public abstract class AdModule<T extends IWebViewSharedObject, T2> extends WebViewBridgeSharedObjectStore<T> implements IAdModule<T, T2> {
    protected ExecutorService _executorService = WebViewBridgeInvocationSingleThreadedExecutor.getInstance().getExecutorService();
    protected ISDKMetricSender _sdkMetricSender;

    /* JADX INFO: Access modifiers changed from: protected */
    public AdModule(ISDKMetricSender iSDKMetricSender) {
        this._sdkMetricSender = iSDKMetricSender;
    }

    @Override // com.unity3d.services.ads.operation.IAdModule
    public ISDKMetricSender getMetricSender() {
        return this._sdkMetricSender;
    }
}
