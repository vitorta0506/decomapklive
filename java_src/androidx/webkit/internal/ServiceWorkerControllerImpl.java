package androidx.webkit.internal;

import android.webkit.ServiceWorkerController;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.ServiceWorkerClientCompat;
import androidx.webkit.ServiceWorkerControllerCompat;
import androidx.webkit.ServiceWorkerWebSettingsCompat;
import fl.a;
import org.chromium.support_lib_boundary.ServiceWorkerControllerBoundaryInterface;
/* loaded from: classes.dex */
public class ServiceWorkerControllerImpl extends ServiceWorkerControllerCompat {
    private ServiceWorkerControllerBoundaryInterface mBoundaryInterface;
    private ServiceWorkerController mFrameworksImpl;
    private final ServiceWorkerWebSettingsCompat mWebSettings;

    public ServiceWorkerControllerImpl() {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SERVICE_WORKER_BASIC_USAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            ServiceWorkerController serviceWorkerController = ServiceWorkerController.getInstance();
            this.mFrameworksImpl = serviceWorkerController;
            this.mBoundaryInterface = null;
            this.mWebSettings = new ServiceWorkerWebSettingsImpl(serviceWorkerController.getServiceWorkerWebSettings());
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            this.mFrameworksImpl = null;
            ServiceWorkerControllerBoundaryInterface serviceWorkerController2 = WebViewGlueCommunicator.getFactory().getServiceWorkerController();
            this.mBoundaryInterface = serviceWorkerController2;
            this.mWebSettings = new ServiceWorkerWebSettingsImpl(serviceWorkerController2.getServiceWorkerWebSettings());
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }

    private ServiceWorkerControllerBoundaryInterface getBoundaryInterface() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = WebViewGlueCommunicator.getFactory().getServiceWorkerController();
        }
        return this.mBoundaryInterface;
    }

    @RequiresApi(24)
    private ServiceWorkerController getFrameworksImpl() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = ServiceWorkerController.getInstance();
        }
        return this.mFrameworksImpl;
    }

    @Override // androidx.webkit.ServiceWorkerControllerCompat
    @NonNull
    public ServiceWorkerWebSettingsCompat getServiceWorkerWebSettings() {
        return this.mWebSettings;
    }

    @Override // androidx.webkit.ServiceWorkerControllerCompat
    public void setServiceWorkerClient(@Nullable ServiceWorkerClientCompat serviceWorkerClientCompat) {
        WebViewFeatureInternal webViewFeatureInternal = WebViewFeatureInternal.SERVICE_WORKER_BASIC_USAGE;
        if (webViewFeatureInternal.isSupportedByFramework()) {
            getFrameworksImpl().setServiceWorkerClient(new FrameworkServiceWorkerClient(serviceWorkerClientCompat));
        } else if (webViewFeatureInternal.isSupportedByWebView()) {
            getBoundaryInterface().setServiceWorkerClient(a.c(new ServiceWorkerClientAdapter(serviceWorkerClientCompat)));
        } else {
            throw WebViewFeatureInternal.getUnsupportedOperationException();
        }
    }
}
