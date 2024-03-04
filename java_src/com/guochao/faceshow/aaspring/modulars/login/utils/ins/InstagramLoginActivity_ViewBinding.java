package com.guochao.faceshow.aaspring.modulars.login.utils.ins;

import android.view.View;
import android.webkit.WebView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class InstagramLoginActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private InstagramLoginActivity f20565c;

    @UiThread
    public InstagramLoginActivity_ViewBinding(InstagramLoginActivity instagramLoginActivity, View view) {
        super(instagramLoginActivity, view);
        this.f20565c = instagramLoginActivity;
        instagramLoginActivity.mWebView = (WebView) c.d(view, R.id.web_view, "field 'mWebView'", WebView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        InstagramLoginActivity instagramLoginActivity = this.f20565c;
        if (instagramLoginActivity != null) {
            this.f20565c = null;
            instagramLoginActivity.mWebView = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
