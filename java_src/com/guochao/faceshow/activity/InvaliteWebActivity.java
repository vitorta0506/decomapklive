package com.guochao.faceshow.activity;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import c8.a;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.fragment.f;
import com.guochao.faceshow.aaspring.beans.AdsBean;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.WebViewUrlTools;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
/* loaded from: classes3.dex */
public class InvaliteWebActivity extends BaseActivity implements WebViewFragment.d {

    /* renamed from: a  reason: collision with root package name */
    private String f24526a;

    /* renamed from: b  reason: collision with root package name */
    private String f24527b;

    /* renamed from: c  reason: collision with root package name */
    private String f24528c;

    /* renamed from: d  reason: collision with root package name */
    private String f24529d;

    /* renamed from: e  reason: collision with root package name */
    private LinearLayout f24530e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f24531f;

    /* renamed from: g  reason: collision with root package name */
    private eb.b f24532g;

    /* renamed from: h  reason: collision with root package name */
    WebViewFragment f24533h;

    /* loaded from: classes3.dex */
    class a implements HalloweenJSAction.OnCallBack {
        a() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public /* synthetic */ void getReCaptChaToken(Object obj) {
            com.guochao.faceshow.web.jsinterface.a.a(this, obj);
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void onInviteClick() {
            InvaliteWebActivity.this.f24532g.F(InvaliteWebActivity.this.getWindow().getDecorView().getRootView(), InvaliteWebActivity.this.f24528c, TextUtils.isEmpty(InvaliteWebActivity.this.f24527b) ? InvaliteWebActivity.this.f24526a : InvaliteWebActivity.this.f24527b, InvaliteWebActivity.this.f24529d, InvaliteWebActivity.this.f24526a, "");
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public /* synthetic */ void onInviteClick(Object obj) {
            com.guochao.faceshow.web.jsinterface.a.b(this, obj);
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public /* synthetic */ void playWinAnimation() {
            com.guochao.faceshow.web.jsinterface.a.c(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements a.h {
        b() {
        }

        @Override // c8.a.h
        public void a() {
            if (InvaliteWebActivity.this.isFinishing() || InvaliteWebActivity.this.isDestroyed() || InvaliteWebActivity.this.f24531f == null) {
                return;
            }
            InvaliteWebActivity.this.f24531f.setText(InvaliteWebActivity.this.getString(R.string.loading));
        }

        @Override // c8.a.h
        public void b(AdsBean adsBean) {
            if (InvaliteWebActivity.this.isFinishing() || InvaliteWebActivity.this.isDestroyed()) {
                return;
            }
            if (InvaliteWebActivity.this.f24531f != null) {
                InvaliteWebActivity.this.f24531f.setText(InvaliteWebActivity.this.getString(R.string.ugc_claim));
            }
            p9.a.g().B(p9.a.g().f() + 1);
        }

        @Override // c8.a.h
        public void c(String str) {
            if (InvaliteWebActivity.this.isFinishing() || InvaliteWebActivity.this.isDestroyed() || InvaliteWebActivity.this.f24531f == null) {
                return;
            }
            InvaliteWebActivity.this.f24531f.setText(InvaliteWebActivity.this.getString(R.string.ugc_claim));
        }

        @Override // c8.a.h
        public void onError() {
            if (InvaliteWebActivity.this.isFinishing() || InvaliteWebActivity.this.isDestroyed()) {
                return;
            }
            if (InvaliteWebActivity.this.f24531f != null) {
                InvaliteWebActivity.this.f24531f.setText(InvaliteWebActivity.this.getString(R.string.unavailable));
            }
            InvaliteWebActivity.this.f24530e.setBackgroundResource(R.drawable.zz_shape_rect_radius_ads_gray);
            InvaliteWebActivity.this.f24530e.setClickable(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                c8.a.r().y(InvaliteWebActivity.this.getActivity());
            }
        }
    }

    private void m0() {
        if (getCurrentUser().getRegType() != 2 && c8.a.r().q() != 0) {
            c8.a.r().w(this, new b());
            this.f24530e.setOnClickListener(new c());
            return;
        }
        TextView textView = this.f24531f;
        if (textView != null) {
            textView.setText(getString(R.string.unavailable));
        }
        this.f24530e.setBackgroundResource(R.drawable.zz_shape_rect_radius_ads_gray);
        this.f24530e.setClickable(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_invalite_web;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f24530e = (LinearLayout) findViewById(R.id.ads_ll);
        this.f24531f = (TextView) findViewById(R.id.ads_tv);
        this.f24533h = WebViewFragment.getInstance(R.id.fragment_container, getSupportFragmentManager(), WebViewUrlTools.getLocalWebUrl(100), "");
        this.f24532g = new eb.b(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onBindWebView(WebView webView) {
        WebViewFragment webViewFragment = this.f24533h;
        if (webViewFragment != null) {
            Object jSAction = webViewFragment.getJSAction();
            if (jSAction instanceof HalloweenJSAction) {
                ((HalloweenJSAction) jSAction).setOnCallBack(new a());
            }
        }
        ViewGroup.LayoutParams layoutParams = webView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = -2;
            webView.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @RequiresApi(api = 26)
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        super.setTitle(getString(R.string.earn_diamond));
        String a10 = qa.a.a(SpUtils.getStr(this, Contants.USER_ID).getBytes());
        if (BaseConfig.isChinese()) {
            this.f24526a = "https://zaime.gchao.cn/index.html?token=" + a10;
            this.f24529d = "https://zaimefile.gchao.cn/storage1/M00/00/03/wKgACWB_4yqAObpDAABN06Tq9hA939.png";
        } else {
            this.f24526a = "https://www.buzzcast.info/index.html?token=" + a10;
            this.f24529d = "http://mp4.facecast.xyz/storage1/M00/00/89/aPODC1s5_PmARWf8AAAYs5OGKPY374.png";
        }
        this.f24528c = SpUtils.getStr(this, Contants.USER_NICKNAME) + getResources().getString(R.string.invalite_friend);
        this.f24527b = getResources().getString(R.string.invalite_describ);
        m0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        c8.a.r().z();
        v9.c.c();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onLoadErr(int i9, String str, String str2) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public /* synthetic */ void onPageFinished(WebView webView, String str) {
        f.a(this, webView, str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public boolean onShouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, android.app.Activity
    public void setTitle(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, android.app.Activity
    public void setTitle(CharSequence charSequence) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void setTitle(CharSequence charSequence, int i9) {
    }
}
