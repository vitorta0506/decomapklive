package androidx.webkit.internal;

import android.webkit.SafeBrowsingResponse;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.webkit.SafeBrowsingResponseCompat;
import fl.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.SafeBrowsingResponseBoundaryInterface;
/* loaded from: classes.dex */
public class SafeBrowsingResponseImpl extends SafeBrowsingResponseCompat {
    private SafeBrowsingResponseBoundaryInterface mBoundaryInterface;
    private SafeBrowsingResponse mFrameworksImpl;

    public SafeBrowsingResponseImpl(@NonNull InvocationHandler invocationHandler) {
        this.mBoundaryInterface = (SafeBrowsingResponseBoundaryInterface) a.a(SafeBrowsingResponseBoundaryInterface.class, invocationHandler);
    }

    private SafeBrowsingResponseBoundaryInterface getBoundaryInterface() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = (SafeBrowsingResponseBoundaryInterface) a.a(SafeBrowsingResponseBoundaryInterface.class, WebViewGlueCommunicator.getCompatConverter().convertSafeBrowsingResponse(this.mFrameworksImpl));
        }
        return this.mBoundaryInterface;
    }

    @RequiresApi(27)
    private SafeBrowsingResponse getFrameworksImpl() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = WebViewGlueCommunicator.getCompatConverter().convertSafeBrowsingResponse(Proxy.getInvocationHandler(this.mBoundaryInterface));
        }
        return this.mFrameworksImpl;
    }

    @Override // androidx.webkit.SafeBrowsingResponseCompat
    public void backToSafety(boolean z10) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            getFrameworksImpl().backToSafety(z10);
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getBoundaryInterface().backToSafety(z10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Override // androidx.webkit.SafeBrowsingResponseCompat
    public void proceed(boolean z10) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SAFE_BROWSING_RESPONSE_PROCEED;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            getFrameworksImpl().proceed(z10);
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getBoundaryInterface().proceed(z10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Override // androidx.webkit.SafeBrowsingResponseCompat
    public void showInterstitial(boolean z10) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            getFrameworksImpl().showInterstitial(z10);
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getBoundaryInterface().showInterstitial(z10);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    public SafeBrowsingResponseImpl(@NonNull SafeBrowsingResponse safeBrowsingResponse) {
        this.mFrameworksImpl = safeBrowsingResponse;
    }
}
