package androidx.webkit;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.webkit.internal.WebMessagePortImpl;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import androidx.webkit.internal.WebViewProviderAdapter;
import androidx.webkit.internal.WebViewProviderFactory;
import androidx.webkit.internal.WebViewRenderProcessClientFrameworkAdapter;
import androidx.webkit.internal.WebViewRenderProcessImpl;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
/* loaded from: classes.dex */
public class WebViewCompat {
    private static final Uri WILDCARD_URI = Uri.parse(ProxyConfig.MATCH_ALL_SCHEMES);
    private static final Uri EMPTY_URI = Uri.parse("");

    /* loaded from: classes.dex */
    public interface VisualStateCallback {
        @UiThread
        void onComplete(long j10);
    }

    /* loaded from: classes.dex */
    public interface WebMessageListener {
        @UiThread
        void onPostMessage(@NonNull WebView webView, @NonNull WebMessageCompat webMessageCompat, @NonNull Uri uri, boolean z10, @NonNull JavaScriptReplyProxy javaScriptReplyProxy);
    }

    private WebViewCompat() {
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static ScriptReferenceCompat addDocumentStartJavaScript(@NonNull WebView webView, @NonNull String str, @NonNull Set<String> set) {
        if (WebViewFeatureInternal.DOCUMENT_START_SCRIPT.isSupportedByWebView()) {
            return getProvider(webView).addDocumentStartJavaScript(str, (String[]) set.toArray(new String[0]));
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void addWebMessageListener(@NonNull WebView webView, @NonNull String str, @NonNull Set<String> set, @NonNull WebMessageListener webMessageListener) {
        if (WebViewFeatureInternal.WEB_MESSAGE_LISTENER.isSupportedByWebView()) {
            getProvider(webView).addWebMessageListener(str, (String[]) set.toArray(new String[0]), webMessageListener);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    private static void checkThread(WebView webView) {
        if (Build.VERSION.SDK_INT >= 28) {
            if (webView.getWebViewLooper() == Looper.myLooper()) {
                return;
            }
            throw new RuntimeException("A WebView method was called on thread '" + Thread.currentThread().getName() + "'. All WebView methods must be called on the same thread. (Expected Looper " + webView.getWebViewLooper() + " called on " + Looper.myLooper() + ", FYI main Looper is " + Looper.getMainLooper() + ")");
        }
        try {
            Method declaredMethod = WebView.class.getDeclaredMethod("checkThread", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(webView, new Object[0]);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchMethodException e11) {
            throw new RuntimeException(e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException(e12);
        }
    }

    private static WebViewProviderBoundaryInterface createProvider(WebView webView) {
        return getFactory().createWebView(webView);
    }

    @NonNull
    public static WebMessagePortCompat[] createWebMessageChannel(@NonNull WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.CREATE_WEB_MESSAGE_CHANNEL;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return WebMessagePortImpl.portsToCompat(webView.createWebMessageChannel());
        }
        if (webViewFeatureInternal.isSupportedByWebView()) {
            return getProvider(webView).createWebMessageChannel();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Nullable
    public static PackageInfo getCurrentWebViewPackage(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            return WebView.getCurrentWebViewPackage();
        }
        try {
            PackageInfo loadedWebViewPackageInfo = getLoadedWebViewPackageInfo();
            return loadedWebViewPackageInfo != null ? loadedWebViewPackageInfo : getNotYetLoadedWebViewPackageInfo(context);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    private static WebViewProviderFactory getFactory() {
        return WebViewGlueCommunicator.getFactory();
    }

    private static PackageInfo getLoadedWebViewPackageInfo() throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", new Class[0]).invoke(null, new Object[0]);
    }

    private static PackageInfo getNotYetLoadedWebViewPackageInfo(Context context) {
        String str;
        try {
            if (Build.VERSION.SDK_INT <= 23) {
                str = (String) Class.forName("android.webkit.WebViewFactory").getMethod("getWebViewPackageName", new Class[0]).invoke(null, new Object[0]);
            } else {
                str = (String) Class.forName("android.webkit.WebViewUpdateService").getMethod("getCurrentWebViewPackageName", new Class[0]).invoke(null, new Object[0]);
            }
            if (str == null) {
                return null;
            }
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    private static WebViewProviderAdapter getProvider(WebView webView) {
        return new WebViewProviderAdapter(createProvider(webView));
    }

    @NonNull
    public static Uri getSafeBrowsingPrivacyPolicyUrl() {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SAFE_BROWSING_PRIVACY_POLICY_URL;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return WebView.getSafeBrowsingPrivacyPolicyUrl();
        }
        if (webViewFeatureInternal.isSupportedByWebView()) {
            return getFactory().getStatics().getSafeBrowsingPrivacyPolicyUrl();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Nullable
    public static WebChromeClient getWebChromeClient(@NonNull WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.GET_WEB_CHROME_CLIENT;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return webView.getWebChromeClient();
        }
        if (webViewFeatureInternal.isSupportedByWebView()) {
            return getProvider(webView).getWebChromeClient();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @NonNull
    public static WebViewClient getWebViewClient(@NonNull WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.GET_WEB_VIEW_CLIENT;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            return webView.getWebViewClient();
        }
        if (webViewFeatureInternal.isSupportedByWebView()) {
            return getProvider(webView).getWebViewClient();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Nullable
    public static WebViewRenderProcess getWebViewRenderProcess(@NonNull WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.GET_WEB_VIEW_RENDERER;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            android.webkit.WebViewRenderProcess webViewRenderProcess = webView.getWebViewRenderProcess();
            if (webViewRenderProcess != null) {
                return WebViewRenderProcessImpl.forFrameworkObject(webViewRenderProcess);
            }
            return null;
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            return getProvider(webView).getWebViewRenderProcess();
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Nullable
    public static WebViewRenderProcessClient getWebViewRenderProcessClient(@NonNull WebView webView) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            android.webkit.WebViewRenderProcessClient webViewRenderProcessClient = webView.getWebViewRenderProcessClient();
            if (webViewRenderProcessClient == null || !(webViewRenderProcessClient instanceof WebViewRenderProcessClientFrameworkAdapter)) {
                return null;
            }
            return ((WebViewRenderProcessClientFrameworkAdapter) webViewRenderProcessClient).getFrameworkRenderProcessClient();
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            return getProvider(webView).getWebViewRenderProcessClient();
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    public static boolean isMultiProcessEnabled() {
        if (WebViewFeatureInternal.MULTI_PROCESS.isSupportedByWebView()) {
            return getFactory().getStatics().isMultiProcessEnabled();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void postVisualStateCallback(@NonNull WebView webView, long j10, @NonNull final VisualStateCallback visualStateCallback) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.VISUAL_STATE_CALLBACK;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webView.postVisualStateCallback(j10, new WebView.VisualStateCallback() { // from class: androidx.webkit.WebViewCompat.1
                @Override // android.webkit.WebView.VisualStateCallback
                public void onComplete(long j11) {
                    VisualStateCallback.this.onComplete(j11);
                }
            });
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            checkThread(webView);
            getProvider(webView).insertVisualStateCallback(j10, visualStateCallback);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    public static void postWebMessage(@NonNull WebView webView, @NonNull WebMessageCompat webMessageCompat, @NonNull Uri uri) {
        if (WILDCARD_URI.equals(uri)) {
            uri = EMPTY_URI;
        }
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.POST_WEB_MESSAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webView.postWebMessage(WebMessagePortImpl.compatToFrameworkMessage(webMessageCompat), uri);
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getProvider(webView).postWebMessage(webMessageCompat, uri);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    public static void removeWebMessageListener(@NonNull WebView webView, @NonNull String str) {
        if (WebViewFeatureInternal.WEB_MESSAGE_LISTENER.isSupportedByWebView()) {
            getProvider(webView).removeWebMessageListener(str);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static void setSafeBrowsingAllowlist(@NonNull Set<String> set, @Nullable ValueCallback<Boolean> valueCallback) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED;
        WebViewFeatureInternal webViewFeatureInternal2 = WebViewFeatureInternal.SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED;
        if (webViewFeatureInternal.isSupportedByWebView()) {
            getFactory().getStatics().setSafeBrowsingAllowlist(set, valueCallback);
            return;
        }
        ArrayList arrayList = new ArrayList(set);
        if (webViewFeatureInternal2.isSupportedByFramework()) {
            WebView.setSafeBrowsingWhitelist(arrayList, valueCallback);
        } else if (webViewFeatureInternal2.isSupportedByWebView()) {
            getFactory().getStatics().setSafeBrowsingWhitelist(arrayList, valueCallback);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Deprecated
    public static void setSafeBrowsingWhitelist(@NonNull List<String> list, @Nullable ValueCallback<Boolean> valueCallback) {
        setSafeBrowsingAllowlist(new HashSet(list), valueCallback);
    }

    public static void setWebViewRenderProcessClient(@NonNull WebView webView, @NonNull Executor executor, @NonNull WebViewRenderProcessClient webViewRenderProcessClient) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webView.setWebViewRenderProcessClient(executor, webViewRenderProcessClient != null ? new WebViewRenderProcessClientFrameworkAdapter(webViewRenderProcessClient) : null);
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getProvider(webView).setWebViewRenderProcessClient(executor, webViewRenderProcessClient);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    public static void startSafeBrowsing(@NonNull Context context, @Nullable ValueCallback<Boolean> valueCallback) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.START_SAFE_BROWSING;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            WebView.startSafeBrowsing(context, valueCallback);
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getFactory().getStatics().initSafeBrowsing(context, valueCallback);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    public static void setWebViewRenderProcessClient(@NonNull WebView webView, @Nullable WebViewRenderProcessClient webViewRenderProcessClient) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            webView.setWebViewRenderProcessClient(webViewRenderProcessClient != null ? new WebViewRenderProcessClientFrameworkAdapter(webViewRenderProcessClient) : null);
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getProvider(webView).setWebViewRenderProcessClient(null, webViewRenderProcessClient);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }
}
