package com.guochao.faceshow.aaspring.base.fragment;

import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.webkit.ProxyConfig;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.PayoneerUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.aaspring.views.FaceCastWebView;
import com.guochao.faceshow.utils.WebViewUrlTools;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
/* loaded from: classes3.dex */
public class WebViewFragment extends BaseDialogFragment {
    private static final String TAG = "WebViewFragment";
    protected Object mJSAction;
    private String mTitle;
    private String mUrl;
    private WebChromeClient mWebChromeClient;
    @BindView
    protected FaceCastWebView mWebView;
    private WebViewClient mWebViewClient;

    /* loaded from: classes3.dex */
    class a extends WebChromeClient {

        /* renamed from: com.guochao.faceshow.aaspring.base.fragment.WebViewFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0148a implements e.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f16185a;

            C0148a(JsResult jsResult) {
                this.f16185a = jsResult;
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    this.f16185a.confirm();
                    return;
                }
                this.f16185a.cancel();
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        /* loaded from: classes3.dex */
        class b implements e.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsResult f16187a;

            b(JsResult jsResult) {
                this.f16187a = jsResult;
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    this.f16187a.confirm();
                    return;
                }
                this.f16187a.cancel();
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        /* loaded from: classes3.dex */
        class c implements e.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ JsPromptResult f16189a;

            c(JsPromptResult jsPromptResult) {
                this.f16189a = jsPromptResult;
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    this.f16189a.confirm();
                    return;
                }
                this.f16189a.cancel();
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        a() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z10, boolean z11, Message message) {
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            WebViewFragment.this.alert(null, str2, new C0148a(jsResult), true);
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            WebViewFragment.this.alert(null, str2, new b(jsResult), false);
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            WebViewFragment.this.alert(null, str2, new c(jsPromptResult), true);
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            if (WebViewFragment.this.getActivity() != null && TextUtils.isEmpty(WebViewFragment.this.mTitle)) {
                WebViewFragment.this.getActivity().setTitle(str);
            }
            super.onReceivedTitle(webView, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnKeyListener {
        c() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i9, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0 && i9 == 4 && WebViewFragment.this.mWebView.canGoBack()) {
                WebViewFragment.this.mWebView.goBack();
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void onBindWebView(WebView webView);

        void onLoadErr(int i9, String str, String str2);

        void onPageFinished(WebView webView, String str);

        boolean onShouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest);
    }

    public static WebViewFragment getInstance(@IdRes int i9, FragmentManager fragmentManager, String str, String str2) {
        WebViewFragment webViewFragment = new WebViewFragment();
        Bundle bundle = new Bundle();
        bundle.putString("url", str);
        bundle.putString("title", str2);
        webViewFragment.setArguments(bundle);
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.add(i9, webViewFragment, WebViewFragment.class.getSimpleName());
        beginTransaction.show(webViewFragment);
        beginTransaction.commitAllowingStateLoss();
        return webViewFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initWebView(FaceCastWebView faceCastWebView, View view) {
        Object jSAction = getJSAction();
        if (jSAction instanceof HalloweenJSAction) {
            ((HalloweenJSAction) jSAction).setPopAnchorView(view);
        }
        faceCastWebView.addJavascriptInterface(jSAction, "halloween");
        faceCastWebView.o(jSAction, null);
        if (Build.VERSION.SDK_INT >= 26) {
            faceCastWebView.getSettings().setSafeBrowsingEnabled(false);
        }
        faceCastWebView.setWebChromeClient(this.mWebChromeClient);
        faceCastWebView.setWebViewClient(this.mWebViewClient);
        faceCastWebView.setOnKeyListener(new c());
        if (getActivity() instanceof d) {
            ((d) getActivity()).onBindWebView(faceCastWebView);
        }
    }

    public Object getJSAction() {
        if (this.mJSAction == null) {
            this.mJSAction = new HalloweenJSAction(getActivity());
        }
        return this.mJSAction;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.activity_webview;
    }

    public FaceCastWebView getWebView() {
        return this.mWebView;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.mWebChromeClient = new a();
        this.mWebViewClient = new b();
        initWebView(this.mWebView, view);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        if (getArguments() != null) {
            this.mUrl = getArguments().getString("url");
            this.mTitle = getArguments().getString("title");
        }
        if (TextUtils.isEmpty(this.mWebView.getUrl())) {
            if (TextUtils.isEmpty(this.mUrl)) {
                this.mWebView.loadUrl(WebViewUrlTools.getLocalWebUrl(100));
                return;
            }
            String convertKeywordLoadOrSearch = StringUtils.convertKeywordLoadOrSearch(this.mUrl);
            this.mUrl = convertKeywordLoadOrSearch;
            this.mWebView.loadUrl(convertKeywordLoadOrSearch);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        try {
            this.mWebView.stopLoading();
            this.mWebView.removeAllViews();
            this.mWebView.loadUrl("about:blank");
            this.mWebView.destroy();
        } catch (Exception e10) {
            LogUtils.e(TAG, "an error occurred while onQuitLiveRoom webview ", e10);
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.mWebView.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.mWebView.onResume();
        if (this.mWebView == null || !isAdded()) {
            return;
        }
        this.mWebView.s(String.format("onResume()", new Object[0]));
    }

    /* loaded from: classes3.dex */
    class b extends WebViewClient {
        b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (WebViewFragment.this.getActivity() instanceof d) {
                ((d) WebViewFragment.this.getActivity()).onPageFinished(webView, str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i9, String str, String str2) {
            super.onReceivedError(webView, i9, str, str2);
            if (Build.VERSION.SDK_INT < 23 && (WebViewFragment.this.getActivity() instanceof d)) {
                ((d) WebViewFragment.this.getActivity()).onLoadErr(i9, str, str2);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            String url = webView.getUrl();
            if (TextUtils.isEmpty(url)) {
                url = "about:blank";
            }
            webView.destroy();
            ViewGroup viewGroup = (ViewGroup) webView.getParent();
            viewGroup.removeView(webView);
            WebViewFragment.this.mWebView = new FaceCastWebView(WebViewFragment.this.getActivity());
            viewGroup.addView(WebViewFragment.this.mWebView);
            WebViewFragment webViewFragment = WebViewFragment.this;
            webViewFragment.initWebView(webViewFragment.mWebView, webViewFragment.getView());
            WebViewFragment.this.mWebView.loadUrl(url);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            boolean onShouldOverrideUrlLoading;
            if ((WebViewFragment.this.getActivity() instanceof d) && (onShouldOverrideUrlLoading = ((d) WebViewFragment.this.getActivity()).onShouldOverrideUrlLoading(webView, webResourceRequest))) {
                return onShouldOverrideUrlLoading;
            }
            Uri url = webResourceRequest.getUrl();
            if (UrlUtils.checkPayoneerCallbackUrl(url.toString())) {
                PayoneerUtils.getPayonnerLoginOrRegistRequest(WebViewFragment.this.getActivity(), url.getPathSegments(), url.getLastPathSegment());
                return true;
            } else if (UrlUtils.shouldOpenOutside(url)) {
                PackageUtils.viewUri(WebViewFragment.this.getActivity(), url);
                return true;
            } else {
                String scheme = url.getScheme();
                if (webResourceRequest.isForMainFrame() && ("http".equalsIgnoreCase(scheme) || "ftp".equalsIgnoreCase(scheme) || ProxyConfig.MATCH_HTTPS.equalsIgnoreCase(scheme))) {
                    return false;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(url);
                if (WebViewFragment.this.getActivity().getPackageManager().resolveActivity(intent, 65536) != null) {
                    try {
                        WebViewFragment.this.startActivity(intent);
                        return true;
                    } catch (Exception unused) {
                        if (webResourceRequest.isForMainFrame()) {
                            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
                        }
                        return true;
                    }
                }
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(api = 23)
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (WebViewFragment.this.getActivity() instanceof d) {
                ((d) WebViewFragment.this.getActivity()).onLoadErr(webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
            }
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }
    }
}
