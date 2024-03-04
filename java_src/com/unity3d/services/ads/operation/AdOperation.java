package com.unity3d.services.ads.operation;

import com.unity3d.services.core.webview.bridge.invocation.IWebViewBridgeInvocation;
/* loaded from: classes4.dex */
public abstract class AdOperation implements IAdOperation {
    private static String invocationClassName = "webview";
    private String _invocationMethodName;
    private IWebViewBridgeInvocation _webViewBridgeInvocation;

    /* JADX INFO: Access modifiers changed from: protected */
    public AdOperation(IWebViewBridgeInvocation iWebViewBridgeInvocation, String str) throws NullPointerException {
        this._invocationMethodName = str;
        if (str != null && str != "") {
            this._webViewBridgeInvocation = iWebViewBridgeInvocation;
            if (iWebViewBridgeInvocation == null) {
                throw new IllegalArgumentException("webViewBridgeInvocation cannot be null");
            }
            return;
        }
        throw new IllegalArgumentException("invocationMethodName cannot be null");
    }

    @Override // com.unity3d.services.ads.operation.IAdOperation
    public void invoke(int i9, Object... objArr) {
        this._webViewBridgeInvocation.invoke(invocationClassName, this._invocationMethodName, i9, objArr);
    }
}
