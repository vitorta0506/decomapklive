package com.guochao.faceshow.aaspring.modulars.game;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment_ViewBinding;
import com.guochao.faceshow.aaspring.views.WebGameLayout;
/* loaded from: classes3.dex */
public class WebGameFragment_ViewBinding extends WebViewFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private WebGameFragment f17783c;

    @UiThread
    public WebGameFragment_ViewBinding(WebGameFragment webGameFragment, View view) {
        super(webGameFragment, view);
        this.f17783c = webGameFragment;
        webGameFragment.mWebGameLayout = (WebGameLayout) c.d(view, R.id.content, "field 'mWebGameLayout'", WebGameLayout.class);
        webGameFragment.mViewGroup = (ViewGroup) c.d(view, R.id.real_content, "field 'mViewGroup'", ViewGroup.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WebGameFragment webGameFragment = this.f17783c;
        if (webGameFragment != null) {
            this.f17783c = null;
            webGameFragment.mWebGameLayout = null;
            webGameFragment.mViewGroup = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
