package com.guochao.faceshow.aaspring.base.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.FaceCastWebView;
/* loaded from: classes3.dex */
public class WebViewFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private WebViewFragment f16193b;

    @UiThread
    public WebViewFragment_ViewBinding(WebViewFragment webViewFragment, View view) {
        this.f16193b = webViewFragment;
        webViewFragment.mWebView = (FaceCastWebView) butterknife.internal.c.d(view, R.id.web_view, "field 'mWebView'", FaceCastWebView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebViewFragment webViewFragment = this.f16193b;
        if (webViewFragment != null) {
            this.f16193b = null;
            webViewFragment.mWebView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
