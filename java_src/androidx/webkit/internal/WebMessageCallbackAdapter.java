package androidx.webkit.internal;

import androidx.annotation.NonNull;
import androidx.webkit.WebMessagePortCompat;
import androidx.webkit.WebViewFeature;
import fl.a;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessageCallbackBoundaryInterface;
/* loaded from: classes.dex */
public class WebMessageCallbackAdapter implements WebMessageCallbackBoundaryInterface {
    WebMessagePortCompat.WebMessageCallbackCompat mImpl;

    public WebMessageCallbackAdapter(@NonNull WebMessagePortCompat.WebMessageCallbackCompat webMessageCallbackCompat) {
        this.mImpl = webMessageCallbackCompat;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    @NonNull
    public String[] getSupportedFeatures() {
        return new String[]{WebViewFeature.WEB_MESSAGE_CALLBACK_ON_MESSAGE};
    }

    @Override // org.chromium.support_lib_boundary.WebMessageCallbackBoundaryInterface
    public void onMessage(InvocationHandler invocationHandler, InvocationHandler invocationHandler2) {
        this.mImpl.onMessage(new WebMessagePortImpl(invocationHandler), WebMessageAdapter.webMessageCompatFromBoundaryInterface((WebMessageBoundaryInterface) a.a(WebMessageBoundaryInterface.class, invocationHandler2)));
    }
}
