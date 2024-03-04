package androidx.webkit.internal;

import android.net.Uri;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import fl.a;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface;
/* loaded from: classes.dex */
public class WebMessageListenerAdapter implements WebMessageListenerBoundaryInterface {
    private WebViewCompat.WebMessageListener mWebMessageListener;

    public WebMessageListenerAdapter(@NonNull WebViewCompat.WebMessageListener webMessageListener) {
        this.mWebMessageListener = webMessageListener;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    @NonNull
    public String[] getSupportedFeatures() {
        return new String[]{WebViewFeature.WEB_MESSAGE_LISTENER};
    }

    @Override // org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface
    public void onPostMessage(@NonNull WebView webView, @NonNull InvocationHandler invocationHandler, @NonNull Uri uri, boolean z10, @NonNull InvocationHandler invocationHandler2) {
        this.mWebMessageListener.onPostMessage(webView, WebMessageAdapter.webMessageCompatFromBoundaryInterface((WebMessageBoundaryInterface) a.a(WebMessageBoundaryInterface.class, invocationHandler)), uri, z10, JavaScriptReplyProxyImpl.forInvocationHandler(invocationHandler2));
    }
}
