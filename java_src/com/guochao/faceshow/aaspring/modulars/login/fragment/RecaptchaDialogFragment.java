package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.FragmentActivity;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.views.FaceCastWebView;
import com.guochao.faceshow.utils.WebViewUrlTools;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0011\u001a\u00020\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u00152\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0003J\b\u0010\u0019\u001a\u00020\u0015H\u0014J\u0012\u0010\u001a\u001a\u00020\u00152\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;", "()V", "mJSAction", "", "getMJSAction", "()Ljava/lang/Object;", "setMJSAction", "(Ljava/lang/Object;)V", "mWebViewClient", "Landroid/webkit/WebViewClient;", "webView", "Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;", "getWebView", "()Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;", "setWebView", "(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;)V", "getJSAction", "getLayoutId", "", "initView", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "initWebView", "loadData", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateDialog", "Landroid/app/Dialog;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RecaptchaDialogFragment extends BaseDialogFragment {
    @Nullable
    private Object mJSAction;
    @Nullable
    private WebViewClient mWebViewClient;
    public FaceCastWebView webView;

    private final void initWebView(FaceCastWebView faceCastWebView, View view) {
        Object jSAction = getJSAction();
        if (jSAction instanceof HalloweenJSAction) {
            ((HalloweenJSAction) jSAction).setPopAnchorView(view);
        }
        if (faceCastWebView != null) {
            faceCastWebView.addJavascriptInterface(jSAction, "halloween");
            faceCastWebView.o(jSAction, null);
            if (Build.VERSION.SDK_INT >= 26) {
                faceCastWebView.getSettings().setSafeBrowsingEnabled(false);
            }
            WebViewClient webViewClient = this.mWebViewClient;
            if (webViewClient != null) {
                faceCastWebView.setWebViewClient(webViewClient);
            }
            if (getActivity() instanceof WebViewFragment.d) {
                FragmentActivity activity = getActivity();
                Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.OnWebViewBindListener");
                ((WebViewFragment.d) activity).onBindWebView(faceCastWebView);
            }
        }
    }

    @NotNull
    public final Object getJSAction() {
        if (this.mJSAction == null) {
            this.mJSAction = new HalloweenJSAction(getActivity());
        }
        Object obj = this.mJSAction;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Any");
        return obj;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_recaptcha;
    }

    @Nullable
    public final Object getMJSAction() {
        return this.mJSAction;
    }

    @NotNull
    public final FaceCastWebView getWebView() {
        FaceCastWebView faceCastWebView = this.webView;
        if (faceCastWebView != null) {
            return faceCastWebView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("webView");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        if (view != null) {
            View findViewById = view.findViewById(R.id.web_view);
            Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.web_view)");
            setWebView((FaceCastWebView) findViewById);
            this.mWebViewClient = new WebViewClient() { // from class: com.guochao.faceshow.aaspring.modulars.login.fragment.RecaptchaDialogFragment$initView$1
                @Override // android.webkit.WebViewClient
                @Deprecated(message = "Deprecated in Java")
                public void onReceivedError(@NotNull WebView view2, int i9, @NotNull String description, @NotNull String failingUrl) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                    Intrinsics.checkNotNullParameter(description, "description");
                    Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
                    super.onReceivedError(view2, i9, description, failingUrl);
                    if (Build.VERSION.SDK_INT < 23 && (RecaptchaDialogFragment.this.getActivity() instanceof WebViewFragment.d)) {
                        FragmentActivity activity = RecaptchaDialogFragment.this.getActivity();
                        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.OnWebViewBindListener");
                        ((WebViewFragment.d) activity).onLoadErr(i9, description, failingUrl);
                    }
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(@NotNull WebView view2, @NotNull WebResourceRequest request) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                    Intrinsics.checkNotNullParameter(request, "request");
                    if (RecaptchaDialogFragment.this.getActivity() instanceof WebViewFragment.d) {
                        FragmentActivity activity = RecaptchaDialogFragment.this.getActivity();
                        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.OnWebViewBindListener");
                        boolean onShouldOverrideUrlLoading = ((WebViewFragment.d) activity).onShouldOverrideUrlLoading(view2, request);
                        if (onShouldOverrideUrlLoading) {
                            return onShouldOverrideUrlLoading;
                        }
                    }
                    return super.shouldOverrideUrlLoading(view2, request);
                }

                @Override // android.webkit.WebViewClient
                @RequiresApi(api = 23)
                public void onReceivedError(@NotNull WebView view2, @NotNull WebResourceRequest request, @NotNull WebResourceError error) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                    Intrinsics.checkNotNullParameter(request, "request");
                    Intrinsics.checkNotNullParameter(error, "error");
                    if (RecaptchaDialogFragment.this.getActivity() instanceof WebViewFragment.d) {
                        FragmentActivity activity = RecaptchaDialogFragment.this.getActivity();
                        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.OnWebViewBindListener");
                        ((WebViewFragment.d) activity).onLoadErr(error.getErrorCode(), error.getDescription().toString(), request.getUrl().toString());
                    }
                    super.onReceivedError(view2, request, error);
                }
            };
            initWebView(getWebView(), view);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        getWebView().loadUrl(WebViewUrlTools.getLocalWebUrl(18));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setParamsHeight(-1);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        FaceCastDialog createCenterDialog = createCenterDialog();
        Intrinsics.checkNotNullExpressionValue(createCenterDialog, "createCenterDialog()");
        return createCenterDialog;
    }

    public final void setMJSAction(@Nullable Object obj) {
        this.mJSAction = obj;
    }

    public final void setWebView(@NotNull FaceCastWebView faceCastWebView) {
        Intrinsics.checkNotNullParameter(faceCastWebView, "<set-?>");
        this.webView = faceCastWebView;
    }
}
