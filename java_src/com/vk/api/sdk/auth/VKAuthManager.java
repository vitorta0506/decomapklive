package com.vk.api.sdk.auth;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.recaptcha.RecaptchaActionType;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.R$string;
import com.vk.api.sdk.VK;
import com.vk.api.sdk.VKKeyValueStorage;
import com.vk.api.sdk.auth.VKAuthenticationResult;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.api.sdk.exceptions.VKAuthException;
import com.vk.api.sdk.extensions.ContextExtKt;
import com.vk.api.sdk.ui.VKWebViewAuthActivity;
import com.vk.api.sdk.utils.VKUtils;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 *2\u00020\u0001:\u0001*B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0006\u0010\r\u001a\u00020\u000eJ\u001c\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\bH\u0002J8\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u000eJ\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0010\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\bJ\u0018\u0010&\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010'\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0002J\u000e\u0010(\u001a\u00020\u00062\u0006\u0010%\u001a\u00020)R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthManager;", "", "keyValueStorage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "(Lcom/vk/api/sdk/VKKeyValueStorage;)V", "clearAccessToken", "", "createVKClientAuthIntent", "Landroid/content/Intent;", NativeProtocol.WEB_DIALOG_PARAMS, "Lcom/vk/api/sdk/auth/VKAuthParams;", "getCurrentToken", "Lcom/vk/api/sdk/auth/VKAccessToken;", "isLoggedIn", "", RecaptchaActionType.LOGIN, PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "scopes", "", "Lcom/vk/api/sdk/auth/VKScope;", "obtainExceptionFromIntent", "Lcom/vk/api/sdk/exceptions/VKAuthException;", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "onActivityResult", "context", "Landroid/content/Context;", "requestCode", "", "resultCode", "data", "callback", "Lcom/vk/api/sdk/auth/VKAuthCallback;", "showErrorToast", "prepareScopes", "processResult", "Lcom/vk/api/sdk/auth/VKAuthenticationResult;", "result", "startAuthActivity", "startInternalAuthActivity", "storeLoginResult", "Lcom/vk/api/sdk/auth/VKAuthenticationResult$Success;", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKAuthManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String VK_APP_AUTH_ACTION = "com.vkontakte.android.action.SDK_AUTH";
    private static final int VK_APP_AUTH_CODE = 282;
    @NotNull
    public static final String VK_APP_PACKAGE_ID = "com.vkontakte.android";
    @NotNull
    public static final String VK_AUTH_ERROR = "error";
    @NotNull
    public static final String VK_EXTRA_TOKEN_DATA = "extra-token-data";
    @NotNull
    private final VKKeyValueStorage keyValueStorage;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthManager$Companion;", "", "()V", "VK_APP_AUTH_ACTION", "", "VK_APP_AUTH_CODE", "", "VK_APP_PACKAGE_ID", "VK_AUTH_ERROR", "VK_EXTRA_TOKEN_DATA", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public VKAuthManager(@NotNull VKKeyValueStorage keyValueStorage) {
        Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
        this.keyValueStorage = keyValueStorage;
    }

    private final VKAuthException obtainExceptionFromIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        int i9 = extras == null ? 0 : extras.getInt(VKApiCodes.EXTRA_VW_LOGIN_ERROR);
        Bundle extras2 = intent.getExtras();
        return new VKAuthException(i9, extras2 == null ? null : extras2.getString("error"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Collection<VKScope> prepareScopes(Collection<? extends VKScope> collection) {
        List plus;
        VKScope vKScope = VKScope.OFFLINE;
        if (collection.contains(vKScope)) {
            return collection;
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends VKScope>) ((Collection<? extends Object>) collection), vKScope);
        return plus;
    }

    private final void startAuthActivity(Activity activity, VKAuthParams vKAuthParams) {
        activity.startActivityForResult(createVKClientAuthIntent(vKAuthParams), VK_APP_AUTH_CODE);
    }

    private final void startInternalAuthActivity(Activity activity, VKAuthParams vKAuthParams) {
        VKWebViewAuthActivity.Companion.startForAuth(activity, vKAuthParams, VK_APP_AUTH_CODE);
    }

    public final void clearAccessToken() {
        VKAccessToken.Companion.remove(this.keyValueStorage);
    }

    @NotNull
    public final Intent createVKClientAuthIntent(@NotNull VKAuthParams params) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intent intent = new Intent(VK_APP_AUTH_ACTION, (Uri) null);
        intent.setPackage(VK_APP_PACKAGE_ID);
        intent.putExtras(params.toExtraBundle());
        return intent;
    }

    @Nullable
    public final VKAccessToken getCurrentToken() {
        return VKAccessToken.Companion.restore(this.keyValueStorage);
    }

    public final boolean isLoggedIn() {
        VKAccessToken currentToken = getCurrentToken();
        return currentToken != null && currentToken.isValid();
    }

    public final void login(@NotNull Activity activity, @NotNull Collection<? extends VKScope> scopes) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        VKAuthParams vKAuthParams = new VKAuthParams(VK.getAppId(activity), null, prepareScopes(scopes), 2, null);
        if (VKUtils.isIntentAvailable(activity, VK_APP_AUTH_ACTION, null, VK_APP_PACKAGE_ID)) {
            startAuthActivity(activity, vKAuthParams);
        } else {
            startInternalAuthActivity(activity, vKAuthParams);
        }
    }

    public final boolean onActivityResult(@NotNull Context context, int i9, int i10, @Nullable Intent intent, @NotNull VKAuthCallback callback, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (i9 != VK_APP_AUTH_CODE) {
            return false;
        }
        if (intent == null) {
            callback.onLoginFailed(new VKAuthException(0, null, 3, null));
            return true;
        }
        VKAuthenticationResult processResult = processResult(intent);
        if (i10 == -1 && !(processResult instanceof VKAuthenticationResult.Failed)) {
            VKAuthenticationResult.Success success = processResult instanceof VKAuthenticationResult.Success ? (VKAuthenticationResult.Success) processResult : null;
            if (success != null) {
                storeLoginResult(success);
                callback.onLogin(success.getToken());
            }
        } else {
            VKAuthenticationResult.Failed failed = processResult instanceof VKAuthenticationResult.Failed ? (VKAuthenticationResult.Failed) processResult : null;
            VKAuthException exception = failed != null ? failed.getException() : null;
            if (exception == null) {
                exception = obtainExceptionFromIntent(intent);
            }
            callback.onLoginFailed(exception);
            if (z10 && !exception.isCanceled()) {
                ContextExtKt.showToast(context, R$string.vk_message_login_error);
            }
        }
        return true;
    }

    @NotNull
    public final VKAuthenticationResult processResult(@Nullable Intent intent) {
        Map map;
        if (intent == null) {
            return new VKAuthenticationResult.Failed(new VKAuthException(0, "No result from caller provided", 1, null));
        }
        if (intent.hasExtra(VK_EXTRA_TOKEN_DATA)) {
            map = VKUtils.explodeQueryString(intent.getStringExtra(VK_EXTRA_TOKEN_DATA));
        } else if (intent.getExtras() != null) {
            map = new HashMap();
            Bundle extras = intent.getExtras();
            Intrinsics.checkNotNull(extras);
            for (String key : extras.keySet()) {
                Intrinsics.checkNotNullExpressionValue(key, "key");
                Bundle extras2 = intent.getExtras();
                Intrinsics.checkNotNull(extras2);
                map.put(key, String.valueOf(extras2.get(key)));
            }
        } else {
            map = null;
        }
        if (map != null && map.get("error") == null) {
            try {
                return new VKAuthenticationResult.Success(new VKAccessToken(map));
            } catch (Exception e10) {
                Log.e(VKAuthManager.class.getSimpleName(), "Failed to get VK token", e10);
                return new VKAuthenticationResult.Failed(new VKAuthException(0, Intrinsics.stringPlus("Auth failed due to exception: ", e10.getMessage()), 1, null));
            }
        }
        return new VKAuthenticationResult.Failed(obtainExceptionFromIntent(intent));
    }

    public final void storeLoginResult(@NotNull VKAuthenticationResult.Success result) {
        Intrinsics.checkNotNullParameter(result, "result");
        result.getToken().save(this.keyValueStorage);
        VK.INSTANCE.getApiManager$core_release().setCredentials(result.getToken().getAccessToken(), result.getToken().getSecret());
    }
}
