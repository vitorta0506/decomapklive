package androidx.webkit.internal;

import android.net.Uri;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewRenderProcess;
import androidx.webkit.WebViewRenderProcessClient;
import fl.a;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
/* loaded from: classes.dex */
public class WebViewProviderAdapter {
    WebViewProviderBoundaryInterface mImpl;

    public WebViewProviderAdapter(@NonNull WebViewProviderBoundaryInterface webViewProviderBoundaryInterface) {
        this.mImpl = webViewProviderBoundaryInterface;
    }

    @NonNull
    public ScriptReferenceImpl addDocumentStartJavaScript(@NonNull String str, @NonNull String[] strArr) {
        return ScriptReferenceImpl.toScriptReferenceCompat(this.mImpl.addDocumentStartJavaScript(str, strArr));
    }

    @RequiresApi(19)
    public void addWebMessageListener(@NonNull String str, @NonNull String[] strArr, @NonNull WebViewCompat.WebMessageListener webMessageListener) {
        this.mImpl.addWebMessageListener(str, strArr, a.c(new WebMessageListenerAdapter(webMessageListener)));
    }

    @NonNull
    public WebMessagePortCompat[] createWebMessageChannel() {
        InvocationHandler[] createWebMessageChannel = this.mImpl.createWebMessageChannel();
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[createWebMessageChannel.length];
        for (int i9 = 0; i9 < createWebMessageChannel.length; i9++) {
            webMessagePortCompatArr[i9] = new WebMessagePortImpl(createWebMessageChannel[i9]);
        }
        return webMessagePortCompatArr;
    }

    @Nullable
    public WebChromeClient getWebChromeClient() {
        return this.mImpl.getWebChromeClient();
    }

    @NonNull
    public WebViewClient getWebViewClient() {
        return this.mImpl.getWebViewClient();
    }

    @Nullable
    public WebViewRenderProcess getWebViewRenderProcess() {
        return WebViewRenderProcessImpl.forInvocationHandler(this.mImpl.getWebViewRenderer());
    }

    @Nullable
    public WebViewRenderProcessClient getWebViewRenderProcessClient() {
        InvocationHandler webViewRendererClient = this.mImpl.getWebViewRendererClient();
        if (webViewRendererClient == null) {
            return null;
        }
        return ((WebViewRenderProcessClientAdapter) a.e(webViewRendererClient)).getWebViewRenderProcessClient();
    }

    @RequiresApi(19)
    public void insertVisualStateCallback(long j10, @NonNull WebViewCompat.VisualStateCallback visualStateCallback) {
        this.mImpl.insertVisualStateCallback(j10, a.c(new VisualStateCallbackAdapter(visualStateCallback)));
    }

    @RequiresApi(19)
    public void postWebMessage(@NonNull WebMessageCompat webMessageCompat, @NonNull Uri uri) {
        this.mImpl.postMessageToMainFrame(a.c(new WebMessageAdapter(webMessageCompat)), uri);
    }

    public void removeWebMessageListener(@NonNull String str) {
        this.mImpl.removeWebMessageListener(str);
    }

    @RequiresApi(19)
    public void setWebViewRenderProcessClient(@Nullable Executor executor, @Nullable WebViewRenderProcessClient webViewRenderProcessClient) {
        this.mImpl.setWebViewRendererClient(webViewRenderProcessClient != null ? a.c(new WebViewRenderProcessClientAdapter(executor, webViewRenderProcessClient)) : null);
    }
}
