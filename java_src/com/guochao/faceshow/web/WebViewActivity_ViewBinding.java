package com.guochao.faceshow.web;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class WebViewActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private WebViewActivity f27134c;

    @UiThread
    public WebViewActivity_ViewBinding(WebViewActivity webViewActivity, View view) {
        super(webViewActivity, view);
        this.f27134c = webViewActivity;
        webViewActivity.titleBarView = view.findViewById(R.id.float_title_back);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WebViewActivity webViewActivity = this.f27134c;
        if (webViewActivity != null) {
            this.f27134c = null;
            webViewActivity.titleBarView = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
