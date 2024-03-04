package androidx.webkit.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
/* loaded from: classes.dex */
public class WebMessageAdapter implements WebMessageBoundaryInterface {
    private WebMessageCompat mWebMessageCompat;

    public WebMessageAdapter(@NonNull WebMessageCompat webMessageCompat) {
        this.mWebMessageCompat = webMessageCompat;
    }

    @NonNull
    private static WebMessagePortCompat[] toWebMessagePortCompats(InvocationHandler[] invocationHandlerArr) {
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[invocationHandlerArr.length];
        for (int i9 = 0; i9 < invocationHandlerArr.length; i9++) {
            webMessagePortCompatArr[i9] = new WebMessagePortImpl(invocationHandlerArr[i9]);
        }
        return webMessagePortCompatArr;
    }

    @NonNull
    public static WebMessageCompat webMessageCompatFromBoundaryInterface(@NonNull WebMessageBoundaryInterface webMessageBoundaryInterface) {
        return new WebMessageCompat(webMessageBoundaryInterface.getData(), toWebMessagePortCompats(webMessageBoundaryInterface.getPorts()));
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    @Nullable
    public String getData() {
        return this.mWebMessageCompat.getData();
    }

    @Override // org.chromium.support_lib_boundary.WebMessageBoundaryInterface
    @Nullable
    public InvocationHandler[] getPorts() {
        WebMessagePortCompat[] ports = this.mWebMessageCompat.getPorts();
        if (ports == null) {
            return null;
        }
        InvocationHandler[] invocationHandlerArr = new InvocationHandler[ports.length];
        for (int i9 = 0; i9 < ports.length; i9++) {
            invocationHandlerArr[i9] = ports[i9].getInvocationHandler();
        }
        return invocationHandlerArr;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    @NonNull
    public String[] getSupportedFeatures() {
        return new String[0];
    }
}
