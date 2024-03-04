package com.vk.api.sdk.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import androidx.annotation.RequiresApi;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.AccessToken;
import com.facebook.GraphResponse;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.vk.api.sdk.R$id;
import com.vk.api.sdk.R$layout;
import com.vk.api.sdk.VK;
import com.vk.api.sdk.VKApiValidationHandler;
import com.vk.api.sdk.auth.VKAuthManager;
import com.vk.api.sdk.auth.VKAuthParams;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.api.sdk.extensions.ContextExtKt;
import com.vk.api.sdk.utils.VKUtils;
import com.vk.api.sdk.utils.VKValidationLocker;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u000eH\u0003J\u0014\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u000eH\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\u000eH\u0002J\u0012\u0010\u0018\u001a\u00020\u000e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u000eH\u0014J\b\u0010\u001c\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;", "Landroid/app/Activity;", "()V", NativeProtocol.WEB_DIALOG_PARAMS, "Lcom/vk/api/sdk/auth/VKAuthParams;", "progress", "Landroid/widget/ProgressBar;", "redirectUrl", "", "getRedirectUrl", "()Ljava/lang/String;", "webView", "Landroid/webkit/WebView;", "configureWebView", "", "getUrlParams", "", "handleSuccess", ShareConstants.MEDIA_URI, "Landroid/net/Uri;", "loadUrl", "needValidationResult", "", "notifyLockerAndFinish", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "showWebView", "Companion", "OAuthWebViewClient", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class VKWebViewAuthActivity extends Activity {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String LOG_TAG = "VKWebViewAuthActivity";
    @NotNull
    public static final String VK_EXTRA_AUTH_PARAMS = "vk_auth_params";
    @NotNull
    private static final String VK_EXTRA_VALIDATION_URL = "vk_validation_url";
    @NotNull
    public static final String VK_RESULT_INTENT_NAME = "com.vk.auth-token";
    @Nullable
    private static VKApiValidationHandler.Credentials validationResult;
    private VKAuthParams params;
    private ProgressBar progress;
    private WebView webView;

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0014J\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;", "", "()V", "LOG_TAG", "", "VK_EXTRA_AUTH_PARAMS", "VK_EXTRA_VALIDATION_URL", "VK_RESULT_INTENT_NAME", "validationResult", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "getValidationResult", "()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "setValidationResult", "(Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;)V", "createAuthIntent", "Landroid/content/Intent;", "ctx", "Landroid/content/Context;", NativeProtocol.WEB_DIALOG_PARAMS, "Lcom/vk/api/sdk/auth/VKAuthParams;", "createAuthIntent$core_release", "startForAuth", "", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "code", "", "startForValidation", "context", "validationUrl", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Intent createAuthIntent$core_release(@NotNull Context ctx, @NotNull VKAuthParams params) {
            Intrinsics.checkNotNullParameter(ctx, "ctx");
            Intrinsics.checkNotNullParameter(params, "params");
            Intent putExtra = new Intent(ctx, VKWebViewAuthActivity.class).putExtra(VKWebViewAuthActivity.VK_EXTRA_AUTH_PARAMS, params.toBundle());
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(ctx, VKWebViewAut…ARAMS, params.toBundle())");
            return putExtra;
        }

        @Nullable
        public final VKApiValidationHandler.Credentials getValidationResult() {
            return VKWebViewAuthActivity.validationResult;
        }

        public final void setValidationResult(@Nullable VKApiValidationHandler.Credentials credentials) {
            VKWebViewAuthActivity.validationResult = credentials;
        }

        public final void startForAuth(@NotNull Activity activity, @NotNull VKAuthParams params, int i9) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(params, "params");
            activity.startActivityForResult(createAuthIntent$core_release(activity, params), i9);
        }

        public final void startForValidation(@NotNull Context context, @NotNull String validationUrl) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(validationUrl, "validationUrl");
            Intent putExtra = new Intent(context, VKWebViewAuthActivity.class).putExtra(VKWebViewAuthActivity.VK_EXTRA_VALIDATION_URL, validationUrl);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(context, VKWebVie…ATION_URL, validationUrl)");
            if (ContextExtKt.toActivitySafe(context) == null) {
                putExtra.addFlags(268435456);
            }
            context.startActivity(putExtra);
        }
    }

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001c\u0010\f\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u000f\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\"\u0010\u0012\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0017J.\u0010\u0012\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u0016J\u001c\u0010\u0019\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0017J\u001c\u0010\u0019\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$OAuthWebViewClient;", "Landroid/webkit/WebViewClient;", "(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V", "hasError", "", "handleUrl", "url", "", "onError", "", "errorCode", "", "onPageFinished", ViewHierarchyConstants.VIEW_KEY, "Landroid/webkit/WebView;", "onPageStarted", "favicon", "Landroid/graphics/Bitmap;", "onReceivedError", "request", "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "description", "failingUrl", "shouldOverrideUrlLoading", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class OAuthWebViewClient extends WebViewClient {
        private boolean hasError;
        final /* synthetic */ VKWebViewAuthActivity this$0;

        public OAuthWebViewClient(VKWebViewAuthActivity this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
        }

        private final boolean handleUrl(String str) {
            int indexOf$default;
            boolean startsWith$default;
            String replace$default;
            int i9 = 0;
            if (str == null) {
                return false;
            }
            if (this.this$0.needValidationResult()) {
                replace$default = StringsKt__StringsJVMKt.replace$default(str, "#", "?", false, 4, (Object) null);
                Uri uri = Uri.parse(replace$default);
                if (uri.getQueryParameter(GraphResponse.SUCCESS_KEY) != null) {
                    VKWebViewAuthActivity vKWebViewAuthActivity = this.this$0;
                    Intrinsics.checkNotNullExpressionValue(uri, "uri");
                    vKWebViewAuthActivity.handleSuccess(uri);
                } else if (uri.getQueryParameter("cancel") != null) {
                    this.this$0.notifyLockerAndFinish();
                }
                return false;
            }
            String redirectUrl = this.this$0.getRedirectUrl();
            if (redirectUrl != null) {
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, redirectUrl, false, 2, null);
                if (!startsWith$default) {
                    return false;
                }
            }
            Intent intent = new Intent(VKWebViewAuthActivity.VK_RESULT_INTENT_NAME);
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, "#", 0, false, 6, (Object) null);
            String substring = str.substring(indexOf$default + 1);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
            intent.putExtra(VKAuthManager.VK_EXTRA_TOKEN_DATA, substring);
            Map<String, String> explodeQueryString = VKUtils.explodeQueryString(substring);
            if (explodeQueryString == null || (!explodeQueryString.containsKey("error") && !explodeQueryString.containsKey("cancel"))) {
                i9 = -1;
            }
            this.this$0.setResult(i9, intent);
            this.this$0.notifyLockerAndFinish();
            return true;
        }

        private final void onError(int i9) {
            this.hasError = true;
            Intent intent = new Intent();
            intent.putExtra(VKApiCodes.EXTRA_VW_LOGIN_ERROR, i9);
            this.this$0.setResult(0, intent);
            this.this$0.finish();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(@Nullable WebView webView, @Nullable String str) {
            super.onPageFinished(webView, str);
            if (this.hasError) {
                return;
            }
            this.this$0.showWebView();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(@Nullable WebView webView, @Nullable String str, @Nullable Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            handleUrl(str);
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(21)
        public void onReceivedError(@NotNull WebView view, @NotNull WebResourceRequest request, @Nullable WebResourceError webResourceError) {
            String str;
            int i9;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(request, "request");
            super.onReceivedError(view, request, webResourceError);
            String uri = request.getUrl().toString();
            Intrinsics.checkNotNullExpressionValue(uri, "request.url.toString()");
            if (Build.VERSION.SDK_INT < 23 || webResourceError == null) {
                str = "no_description";
                i9 = -1;
            } else {
                str = webResourceError.getDescription().toString();
                i9 = webResourceError.getErrorCode();
            }
            Log.w(VKWebViewAuthActivity.LOG_TAG, i9 + ':' + str + ':' + uri);
            WebView webView = this.this$0.webView;
            if (webView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webView");
                webView = null;
            }
            if (Intrinsics.areEqual(webView.getUrl(), uri)) {
                onError(i9);
            }
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(21)
        public boolean shouldOverrideUrlLoading(@Nullable WebView webView, @Nullable WebResourceRequest webResourceRequest) {
            return handleUrl(String.valueOf(webResourceRequest == null ? null : webResourceRequest.getUrl()));
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(@Nullable WebView webView, @Nullable String str) {
            return handleUrl(str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@Nullable WebView webView, int i9, @Nullable String str, @Nullable String str2) {
            super.onReceivedError(webView, i9, str, str2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i9);
            sb2.append(':');
            sb2.append((Object) str);
            sb2.append(':');
            sb2.append((Object) str2);
            Log.w(VKWebViewAuthActivity.LOG_TAG, sb2.toString());
            WebView webView2 = this.this$0.webView;
            if (webView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webView");
                webView2 = null;
            }
            if (Intrinsics.areEqual(webView2.getUrl(), str2)) {
                onError(i9);
            }
        }
    }

    private final void configureWebView() {
        WebView webView = this.webView;
        WebView webView2 = null;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView = null;
        }
        webView.setWebViewClient(new OAuthWebViewClient(this));
        webView.setVerticalScrollBarEnabled(false);
        webView.setVisibility(4);
        webView.setOverScrollMode(2);
        WebView webView3 = this.webView;
        if (webView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        } else {
            webView2 = webView3;
        }
        webView2.getSettings().setJavaScriptEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getRedirectUrl() {
        if (needValidationResult()) {
            return getIntent().getStringExtra(VK_EXTRA_VALIDATION_URL);
        }
        VKAuthParams vKAuthParams = this.params;
        if (vKAuthParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NativeProtocol.WEB_DIALOG_PARAMS);
            vKAuthParams = null;
        }
        return vKAuthParams.getRedirectUrl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSuccess(Uri uri) {
        VKApiValidationHandler.Credentials empty;
        if (uri.getQueryParameter("access_token") != null) {
            String queryParameter = uri.getQueryParameter("access_token");
            String queryParameter2 = uri.getQueryParameter("secret");
            String queryParameter3 = uri.getQueryParameter(AccessToken.USER_ID_KEY);
            empty = new VKApiValidationHandler.Credentials(queryParameter2, queryParameter, queryParameter3 == null ? null : Integer.valueOf(Integer.parseInt(queryParameter3)));
        } else {
            empty = VKApiValidationHandler.Credentials.Companion.getEMPTY();
        }
        validationResult = empty;
        notifyLockerAndFinish();
    }

    private final void loadUrl() {
        String uri;
        try {
            if (needValidationResult()) {
                uri = getIntent().getStringExtra(VK_EXTRA_VALIDATION_URL);
                if (uri == null) {
                    throw new IllegalStateException("There is no vk_validation_url key inside");
                }
            } else {
                Uri.Builder buildUpon = Uri.parse("https://oauth.vk.com/authorize").buildUpon();
                for (Map.Entry<String, String> entry : getUrlParams().entrySet()) {
                    buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                uri = buildUpon.build().toString();
                Intrinsics.checkNotNullExpressionValue(uri, "{\n                val ur….toString()\n            }");
            }
            WebView webView = this.webView;
            if (webView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("webView");
                webView = null;
            }
            webView.loadUrl(uri);
        } catch (Exception e10) {
            e10.printStackTrace();
            setResult(0);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean needValidationResult() {
        return getIntent().getStringExtra(VK_EXTRA_VALIDATION_URL) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyLockerAndFinish() {
        VKValidationLocker.INSTANCE.signal();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showWebView() {
        ProgressBar progressBar = this.progress;
        WebView webView = null;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progress");
            progressBar = null;
        }
        progressBar.setVisibility(8);
        WebView webView2 = this.webView;
        if (webView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
        } else {
            webView = webView2;
        }
        webView.setVisibility(0);
    }

    @NotNull
    protected Map<String, String> getUrlParams() {
        Map<String, String> mapOf;
        Pair[] pairArr = new Pair[7];
        VKAuthParams vKAuthParams = this.params;
        VKAuthParams vKAuthParams2 = null;
        if (vKAuthParams == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NativeProtocol.WEB_DIALOG_PARAMS);
            vKAuthParams = null;
        }
        pairArr[0] = TuplesKt.to("client_id", String.valueOf(vKAuthParams.getAppId()));
        VKAuthParams vKAuthParams3 = this.params;
        if (vKAuthParams3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NativeProtocol.WEB_DIALOG_PARAMS);
            vKAuthParams3 = null;
        }
        pairArr[1] = TuplesKt.to("scope", vKAuthParams3.getScopeString());
        VKAuthParams vKAuthParams4 = this.params;
        if (vKAuthParams4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(NativeProtocol.WEB_DIALOG_PARAMS);
        } else {
            vKAuthParams2 = vKAuthParams4;
        }
        pairArr[2] = TuplesKt.to("redirect_uri", vKAuthParams2.getRedirectUrl());
        pairArr[3] = TuplesKt.to(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, JThirdPlatFormInterface.KEY_TOKEN);
        pairArr[4] = TuplesKt.to(ServerProtocol.DIALOG_PARAM_DISPLAY, "mobile");
        pairArr[5] = TuplesKt.to(NotifyType.VIBRATE, VK.getApiVersion());
        pairArr[6] = TuplesKt.to("revoke", "1");
        mapOf = MapsKt__MapsKt.mapOf(pairArr);
        return mapOf;
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.vk_webview_auth_dialog);
        View findViewById = findViewById(R$id.webView);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.webView)");
        this.webView = (WebView) findViewById;
        View findViewById2 = findViewById(R$id.progress);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.progress)");
        this.progress = (ProgressBar) findViewById2;
        VKAuthParams fromBundle = VKAuthParams.Companion.fromBundle(getIntent().getBundleExtra(VK_EXTRA_AUTH_PARAMS));
        if (fromBundle == null) {
            if (!needValidationResult()) {
                finish();
            }
        } else {
            this.params = fromBundle;
        }
        configureWebView();
        loadUrl();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        WebView webView = this.webView;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("webView");
            webView = null;
        }
        webView.destroy();
        VKValidationLocker.INSTANCE.signal();
        super.onDestroy();
    }
}
