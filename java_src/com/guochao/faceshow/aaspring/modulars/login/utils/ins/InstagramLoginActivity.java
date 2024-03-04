package com.guochao.faceshow.aaspring.modulars.login.utils.ins;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.utils.LogUtils;
/* loaded from: classes3.dex */
public class InstagramLoginActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f20563a;
    @BindView
    WebView mWebView;

    /* loaded from: classes3.dex */
    class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            LogUtils.i("zune：", "onPageFinished url = " + str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            LogUtils.i("zune：", "onReceivedError url = ");
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            LogUtils.i("zune：", "shouldOverrideUrlLoading url = " + str);
            if (str != null && str.endsWith("#_")) {
                String replace = str.replace("&state=%7B%22app_id%22%3A%22896255734201697%22%2C%22user_id%22%3A%2217841439049834677%22%2C%22nonce%22%3A%22Sp60zFZ3CgK4703O%22%7D#_", "");
                Intent intent = new Intent();
                String[] split = replace.split("code=");
                if (split.length >= 2) {
                    intent.putExtra("result", split[1].replace("#_", "").replace("&state=1", ""));
                    InstagramLoginActivity.this.setResult(-1, intent);
                    InstagramLoginActivity.this.finish();
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    public static void b0(Activity activity, String str) {
        Intent intent = new Intent(activity, InstagramLoginActivity.class);
        intent.putExtra("url", str);
        activity.startActivityForResult(intent, 555);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_webview;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f20563a = getIntent().getStringExtra("url");
        this.mWebView.setVerticalScrollBarEnabled(false);
        this.mWebView.setHorizontalScrollBarEnabled(false);
        this.mWebView.setWebViewClient(new a());
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.loadUrl(this.f20563a);
        if (getActivity() instanceof WebViewFragment.d) {
            ((WebViewFragment.d) getActivity()).onBindWebView(this.mWebView);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        WebView webView = this.mWebView;
        if (webView != null && webView.canGoBack()) {
            this.mWebView.goBack();
            return;
        }
        setResult(-1, new Intent());
        super.onBackPressed();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        try {
            this.mWebView.stopLoading();
            this.mWebView.removeAllViews();
            this.mWebView.loadUrl("about:blank");
            this.mWebView.destroy();
        } catch (Exception unused) {
        }
        super.onDestroy();
    }
}
