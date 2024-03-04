package androidx.webkit.internal;

import android.os.Handler;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import fl.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface;
/* loaded from: classes.dex */
public class WebMessagePortImpl extends WebMessagePortCompat {
    private WebMessagePortBoundaryInterface mBoundaryInterface;
    private WebMessagePort mFrameworksImpl;

    public WebMessagePortImpl(WebMessagePort webMessagePort) {
        this.mFrameworksImpl = webMessagePort;
    }

    @NonNull
    @RequiresApi(23)
    public static WebMessage compatToFrameworkMessage(WebMessageCompat webMessageCompat) {
        return new WebMessage(webMessageCompat.getData(), compatToPorts(webMessageCompat.getPorts()));
    }

    @Nullable
    @RequiresApi(23)
    public static WebMessagePort[] compatToPorts(WebMessagePortCompat[] webMessagePortCompatArr) {
        if (webMessagePortCompatArr == null) {
            return null;
        }
        int length = webMessagePortCompatArr.length;
        WebMessagePort[] webMessagePortArr = new WebMessagePort[length];
        for (int i9 = 0; i9 < length; i9++) {
            webMessagePortArr[i9] = webMessagePortCompatArr[i9].getFrameworkPort();
        }
        return webMessagePortArr;
    }

    @NonNull
    @RequiresApi(23)
    public static WebMessageCompat frameworkMessageToCompat(WebMessage webMessage) {
        return new WebMessageCompat(webMessage.getData(), portsToCompat(webMessage.getPorts()));
    }

    private WebMessagePortBoundaryInterface getBoundaryInterface() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = (WebMessagePortBoundaryInterface) a.a(WebMessagePortBoundaryInterface.class, WebViewGlueCommunicator.getCompatConverter().convertWebMessagePort(this.mFrameworksImpl));
        }
        return this.mBoundaryInterface;
    }

    @RequiresApi(23)
    private WebMessagePort getFrameworksImpl() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = WebViewGlueCommunicator.getCompatConverter().convertWebMessagePort(Proxy.getInvocationHandler(this.mBoundaryInterface));
        }
        return this.mFrameworksImpl;
    }

    @Nullable
    public static WebMessagePortCompat[] portsToCompat(WebMessagePort[] webMessagePortArr) {
        if (webMessagePortArr == null) {
            return null;
        }
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[webMessagePortArr.length];
        for (int i9 = 0; i9 < webMessagePortArr.length; i9++) {
            webMessagePortCompatArr[i9] = new WebMessagePortImpl(webMessagePortArr[i9]);
        }
        return webMessagePortCompatArr;
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void close() {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_MESSAGE_PORT_CLOSE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            getFrameworksImpl().close();
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getBoundaryInterface().close();
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Override // androidx.webkit.WebMessagePortCompat
    @RequiresApi(23)
    public WebMessagePort getFrameworkPort() {
        return getFrameworksImpl();
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public InvocationHandler getInvocationHandler() {
        return Proxy.getInvocationHandler(getBoundaryInterface());
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void postMessage(@NonNull WebMessageCompat webMessageCompat) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_MESSAGE_PORT_POST_MESSAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            getFrameworksImpl().postMessage(compatToFrameworkMessage(webMessageCompat));
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getBoundaryInterface().postMessage(a.c(new WebMessageAdapter(webMessageCompat)));
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void setWebMessageCallback(@NonNull final WebMessagePortCompat.WebMessageCallbackCompat webMessageCallbackCompat) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            getFrameworksImpl().setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: androidx.webkit.internal.WebMessagePortImpl.1
                @Override // android.webkit.WebMessagePort.WebMessageCallback
                public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
                    webMessageCallbackCompat.onMessage(new WebMessagePortImpl(webMessagePort), WebMessagePortImpl.frameworkMessageToCompat(webMessage));
                }
            });
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getBoundaryInterface().setWebMessageCallback(a.c(new WebMessageCallbackAdapter(webMessageCallbackCompat)));
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    public WebMessagePortImpl(InvocationHandler invocationHandler) {
        this.mBoundaryInterface = (WebMessagePortBoundaryInterface) a.a(WebMessagePortBoundaryInterface.class, invocationHandler);
    }

    @Override // androidx.webkit.WebMessagePortCompat
    public void setWebMessageCallback(Handler handler, @NonNull final WebMessagePortCompat.WebMessageCallbackCompat webMessageCallbackCompat) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.CREATE_WEB_MESSAGE_CHANNEL;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            getFrameworksImpl().setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: androidx.webkit.internal.WebMessagePortImpl.2
                @Override // android.webkit.WebMessagePort.WebMessageCallback
                public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
                    webMessageCallbackCompat.onMessage(new WebMessagePortImpl(webMessagePort), WebMessagePortImpl.frameworkMessageToCompat(webMessage));
                }
            }, handler);
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getBoundaryInterface().setWebMessageCallback(a.c(new WebMessageCallbackAdapter(webMessageCallbackCompat)), handler);
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }
}
