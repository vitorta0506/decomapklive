package androidx.webkit.internal;

import android.webkit.WebResourceError;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebResourceErrorCompat;
import fl.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.WebResourceErrorBoundaryInterface;
/* loaded from: classes.dex */
public class WebResourceErrorImpl extends WebResourceErrorCompat {
    private WebResourceErrorBoundaryInterface mBoundaryInterface;
    private WebResourceError mFrameworksImpl;

    public WebResourceErrorImpl(@NonNull InvocationHandler invocationHandler) {
        this.mBoundaryInterface = (WebResourceErrorBoundaryInterface) a.a(WebResourceErrorBoundaryInterface.class, invocationHandler);
    }

    private WebResourceErrorBoundaryInterface getBoundaryInterface() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = (WebResourceErrorBoundaryInterface) a.a(WebResourceErrorBoundaryInterface.class, WebViewGlueCommunicator.getCompatConverter().convertWebResourceError(this.mFrameworksImpl));
        }
        return this.mBoundaryInterface;
    }

    @RequiresApi(23)
    private WebResourceError getFrameworksImpl() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = WebViewGlueCommunicator.getCompatConverter().convertWebResourceError(Proxy.getInvocationHandler(this.mBoundaryInterface));
        }
        return this.mFrameworksImpl;
    }

    @Override // androidx.webkit.WebResourceErrorCompat
    @NonNull
    public CharSequence getDescription() {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_RESOURCE_ERROR_GET_DESCRIPTION;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return getFrameworksImpl().getDescription();
        }
        if (webViewFeatureInternal.isSupportedByWebView()) {
            return getBoundaryInterface().getDescription();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.WebResourceErrorCompat
    public int getErrorCode() {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_RESOURCE_ERROR_GET_CODE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return getFrameworksImpl().getErrorCode();
        }
        if (webViewFeatureInternal.isSupportedByWebView()) {
            return getBoundaryInterface().getErrorCode();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public WebResourceErrorImpl(@NonNull WebResourceError webResourceError) {
        this.mFrameworksImpl = webResourceError;
    }
}
