package com.facebook.internal;

import android.os.Bundle;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.huawei.hms.api.FailedBinderCallBack;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b8\n\u0002\u0010\u001e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u00109\u001a\u00020\u0004H\u0007J\b\u0010:\u001a\u00020\u0004H\u0007J\b\u0010;\u001a\u00020\u0004H\u0007J\u000e\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00040=H\u0007J\u000e\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00040=H\u0007J\b\u0010?\u001a\u00020\u0004H\u0007J\b\u0010@\u001a\u00020\u0004H\u0007J\u0010\u0010A\u001a\u00020\u00042\u0006\u0010B\u001a\u00020\u0004H\u0007J\b\u0010C\u001a\u00020\u0004H\u0007J\b\u0010D\u001a\u00020\u0004H\u0007J$\u0010E\u001a\u0004\u0018\u00010F2\u0006\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010FH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006K"}, d2 = {"Lcom/facebook/internal/ServerProtocol;", "", "()V", "DIALOG_AUTHORITY_FORMAT", "", "DIALOG_CANCEL_URI", "DIALOG_PARAM_ACCESS_TOKEN", "DIALOG_PARAM_APP_ID", "DIALOG_PARAM_AUTHENTICATION_TOKEN", "DIALOG_PARAM_AUTH_TYPE", "DIALOG_PARAM_CBT", "DIALOG_PARAM_CCT_OVER_LOGGED_OUT_APP_SWITCH", "DIALOG_PARAM_CLIENT_ID", "DIALOG_PARAM_CODE_CHALLENGE", "DIALOG_PARAM_CODE_CHALLENGE_METHOD", "DIALOG_PARAM_CODE_REDIRECT_URI", "DIALOG_PARAM_CUSTOM_TABS_PREFETCHING", "DIALOG_PARAM_DEFAULT_AUDIENCE", "DIALOG_PARAM_DISPLAY", "DIALOG_PARAM_DISPLAY_TOUCH", "DIALOG_PARAM_E2E", "DIALOG_PARAM_FAIL_ON_LOGGED_OUT", "DIALOG_PARAM_FX_APP", "DIALOG_PARAM_IES", "DIALOG_PARAM_LEGACY_OVERRIDE", "DIALOG_PARAM_LOGIN_BEHAVIOR", "DIALOG_PARAM_MESSENGER_PAGE_ID", "DIALOG_PARAM_NONCE", "DIALOG_PARAM_REDIRECT_URI", "DIALOG_PARAM_RESET_MESSENGER_STATE", "DIALOG_PARAM_RESPONSE_TYPE", "DIALOG_PARAM_RETURN_SCOPES", "DIALOG_PARAM_SCOPE", "DIALOG_PARAM_SDK_VERSION", "DIALOG_PARAM_SKIP_DEDUPE", "DIALOG_PARAM_SSO_DEVICE", "DIALOG_PARAM_STATE", "DIALOG_PATH", "DIALOG_REDIRECT_CHROME_OS_URI", "DIALOG_REDIRECT_URI", "DIALOG_REREQUEST_AUTH_TYPE", "DIALOG_RESPONSE_TYPE_CODE", "DIALOG_RESPONSE_TYPE_ID_TOKEN_AND_SIGNED_REQUEST", "DIALOG_RESPONSE_TYPE_TOKEN_AND_SCOPES", "DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST", "DIALOG_RETURN_SCOPES_TRUE", "FALLBACK_DIALOG_DISPLAY_VALUE_TOUCH", "FALLBACK_DIALOG_PARAM_APP_ID", "FALLBACK_DIALOG_PARAM_BRIDGE_ARGS", "FALLBACK_DIALOG_PARAM_KEY_HASH", "FALLBACK_DIALOG_PARAM_METHOD_ARGS", "FALLBACK_DIALOG_PARAM_METHOD_RESULTS", "FALLBACK_DIALOG_PARAM_VERSION", "GRAPH_URL_FORMAT", "GRAPH_VIDEO_URL_FORMAT", "INSTAGRAM_OAUTH_PATH", "TAG", "getDefaultAPIVersion", "getDialogAuthority", "getErrorConnectionFailure", "getErrorsProxyAuthDisabled", "", "getErrorsUserCanceled", "getFacebookGraphUrlBase", "getGraphUrlBase", "getGraphUrlBaseForSubdomain", "subdomain", "getGraphVideoUrlBase", "getInstagramDialogAuthority", "getQueryParamsForPlatformActivityIntentWebFallback", "Landroid/os/Bundle;", FailedBinderCallBack.CALLER_ID, "version", "", "methodArgs", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ServerProtocol {
    @NotNull
    private static final String DIALOG_AUTHORITY_FORMAT = "m.%s";
    @NotNull
    public static final String DIALOG_CANCEL_URI = "fbconnect://cancel";
    @NotNull
    public static final String DIALOG_PARAM_ACCESS_TOKEN = "access_token";
    @NotNull
    public static final String DIALOG_PARAM_APP_ID = "app_id";
    @NotNull
    public static final String DIALOG_PARAM_AUTHENTICATION_TOKEN = "id_token";
    @NotNull
    public static final String DIALOG_PARAM_AUTH_TYPE = "auth_type";
    @NotNull
    public static final String DIALOG_PARAM_CBT = "cbt";
    @NotNull
    public static final String DIALOG_PARAM_CCT_OVER_LOGGED_OUT_APP_SWITCH = "cct_over_app_switch";
    @NotNull
    public static final String DIALOG_PARAM_CLIENT_ID = "client_id";
    @NotNull
    public static final String DIALOG_PARAM_CODE_CHALLENGE = "code_challenge";
    @NotNull
    public static final String DIALOG_PARAM_CODE_CHALLENGE_METHOD = "code_challenge_method";
    @NotNull
    public static final String DIALOG_PARAM_CODE_REDIRECT_URI = "code_redirect_uri";
    @NotNull
    public static final String DIALOG_PARAM_CUSTOM_TABS_PREFETCHING = "cct_prefetching";
    @NotNull
    public static final String DIALOG_PARAM_DEFAULT_AUDIENCE = "default_audience";
    @NotNull
    public static final String DIALOG_PARAM_DISPLAY = "display";
    @NotNull
    public static final String DIALOG_PARAM_DISPLAY_TOUCH = "touch";
    @NotNull
    public static final String DIALOG_PARAM_E2E = "e2e";
    @NotNull
    public static final String DIALOG_PARAM_FAIL_ON_LOGGED_OUT = "fail_on_logged_out";
    @NotNull
    public static final String DIALOG_PARAM_FX_APP = "fx_app";
    @NotNull
    public static final String DIALOG_PARAM_IES = "ies";
    @NotNull
    public static final String DIALOG_PARAM_LEGACY_OVERRIDE = "legacy_override";
    @NotNull
    public static final String DIALOG_PARAM_LOGIN_BEHAVIOR = "login_behavior";
    @NotNull
    public static final String DIALOG_PARAM_MESSENGER_PAGE_ID = "messenger_page_id";
    @NotNull
    public static final String DIALOG_PARAM_NONCE = "nonce";
    @NotNull
    public static final String DIALOG_PARAM_REDIRECT_URI = "redirect_uri";
    @NotNull
    public static final String DIALOG_PARAM_RESET_MESSENGER_STATE = "reset_messenger_state";
    @NotNull
    public static final String DIALOG_PARAM_RESPONSE_TYPE = "response_type";
    @NotNull
    public static final String DIALOG_PARAM_RETURN_SCOPES = "return_scopes";
    @NotNull
    public static final String DIALOG_PARAM_SCOPE = "scope";
    @NotNull
    public static final String DIALOG_PARAM_SDK_VERSION = "sdk";
    @NotNull
    public static final String DIALOG_PARAM_SKIP_DEDUPE = "skip_dedupe";
    @NotNull
    public static final String DIALOG_PARAM_SSO_DEVICE = "sso";
    @NotNull
    public static final String DIALOG_PARAM_STATE = "state";
    @NotNull
    public static final String DIALOG_PATH = "dialog/";
    @NotNull
    public static final String DIALOG_REDIRECT_CHROME_OS_URI = "fbconnect://chrome_os_success";
    @NotNull
    public static final String DIALOG_REDIRECT_URI = "fbconnect://success";
    @NotNull
    public static final String DIALOG_REREQUEST_AUTH_TYPE = "rerequest";
    @NotNull
    public static final String DIALOG_RESPONSE_TYPE_CODE = "code,signed_request,graph_domain";
    @NotNull
    public static final String DIALOG_RESPONSE_TYPE_ID_TOKEN_AND_SIGNED_REQUEST = "id_token,token,signed_request,graph_domain";
    @NotNull
    public static final String DIALOG_RESPONSE_TYPE_TOKEN_AND_SCOPES = "token,signed_request,graph_domain,granted_scopes";
    @NotNull
    public static final String DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST = "token,signed_request,graph_domain";
    @NotNull
    public static final String DIALOG_RETURN_SCOPES_TRUE = "true";
    @NotNull
    public static final String FALLBACK_DIALOG_DISPLAY_VALUE_TOUCH = "touch";
    @NotNull
    public static final String FALLBACK_DIALOG_PARAM_APP_ID = "app_id";
    @NotNull
    public static final String FALLBACK_DIALOG_PARAM_BRIDGE_ARGS = "bridge_args";
    @NotNull
    public static final String FALLBACK_DIALOG_PARAM_KEY_HASH = "android_key_hash";
    @NotNull
    public static final String FALLBACK_DIALOG_PARAM_METHOD_ARGS = "method_args";
    @NotNull
    public static final String FALLBACK_DIALOG_PARAM_METHOD_RESULTS = "method_results";
    @NotNull
    public static final String FALLBACK_DIALOG_PARAM_VERSION = "version";
    @NotNull
    private static final String GRAPH_URL_FORMAT = "https://graph.%s";
    @NotNull
    private static final String GRAPH_VIDEO_URL_FORMAT = "https://graph-video.%s";
    @NotNull
    public static final String INSTAGRAM_OAUTH_PATH = "oauth/authorize";
    @NotNull
    public static final ServerProtocol INSTANCE = new ServerProtocol();
    @NotNull
    private static final String TAG;

    static {
        String name = ServerProtocol.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "ServerProtocol::class.java.name");
        TAG = name;
    }

    private ServerProtocol() {
    }

    @JvmStatic
    @NotNull
    public static final String getDefaultAPIVersion() {
        return "v14.0";
    }

    @JvmStatic
    @NotNull
    public static final String getDialogAuthority() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String format = String.format(DIALOG_AUTHORITY_FORMAT, Arrays.copyOf(new Object[]{FacebookSdk.getFacebookDomain()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return format;
    }

    @JvmStatic
    @NotNull
    public static final String getErrorConnectionFailure() {
        return "CONNECTION_FAILURE";
    }

    @JvmStatic
    @NotNull
    public static final Collection<String> getErrorsProxyAuthDisabled() {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"service_disabled", "AndroidAuthKillSwitchException"});
        return listOf;
    }

    @JvmStatic
    @NotNull
    public static final Collection<String> getErrorsUserCanceled() {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"access_denied", "OAuthAccessDeniedException"});
        return listOf;
    }

    @JvmStatic
    @NotNull
    public static final String getFacebookGraphUrlBase() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String format = String.format(GRAPH_URL_FORMAT, Arrays.copyOf(new Object[]{FacebookSdk.getFacebookDomain()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return format;
    }

    @JvmStatic
    @NotNull
    public static final String getGraphUrlBase() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String format = String.format(GRAPH_URL_FORMAT, Arrays.copyOf(new Object[]{FacebookSdk.getGraphDomain()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return format;
    }

    @JvmStatic
    @NotNull
    public static final String getGraphUrlBaseForSubdomain(@NotNull String subdomain) {
        Intrinsics.checkNotNullParameter(subdomain, "subdomain");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(GRAPH_URL_FORMAT, Arrays.copyOf(new Object[]{subdomain}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return format;
    }

    @JvmStatic
    @NotNull
    public static final String getGraphVideoUrlBase() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String format = String.format(GRAPH_VIDEO_URL_FORMAT, Arrays.copyOf(new Object[]{FacebookSdk.getGraphDomain()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return format;
    }

    @JvmStatic
    @NotNull
    public static final String getInstagramDialogAuthority() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String format = String.format(DIALOG_AUTHORITY_FORMAT, Arrays.copyOf(new Object[]{FacebookSdk.getInstagramDomain()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return format;
    }

    @JvmStatic
    @Nullable
    public static final Bundle getQueryParamsForPlatformActivityIntentWebFallback(@NotNull String callId, int i9, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(callId, "callId");
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        String applicationSignature = FacebookSdk.getApplicationSignature(FacebookSdk.getApplicationContext());
        Utility utility = Utility.INSTANCE;
        if (Utility.isNullOrEmpty(applicationSignature)) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString(FALLBACK_DIALOG_PARAM_KEY_HASH, applicationSignature);
        bundle2.putString("app_id", FacebookSdk.getApplicationId());
        bundle2.putInt("version", i9);
        bundle2.putString(DIALOG_PARAM_DISPLAY, "touch");
        Bundle bundle3 = new Bundle();
        bundle3.putString("action_id", callId);
        try {
            BundleJSONConverter bundleJSONConverter = BundleJSONConverter.INSTANCE;
            JSONObject convertToJSON = BundleJSONConverter.convertToJSON(bundle3);
            if (bundle == null) {
                bundle = new Bundle();
            }
            JSONObject convertToJSON2 = BundleJSONConverter.convertToJSON(bundle);
            if (convertToJSON != null && convertToJSON2 != null) {
                bundle2.putString(FALLBACK_DIALOG_PARAM_BRIDGE_ARGS, convertToJSON.toString());
                bundle2.putString(FALLBACK_DIALOG_PARAM_METHOD_ARGS, convertToJSON2.toString());
                return bundle2;
            }
            return null;
        } catch (IllegalArgumentException e10) {
            Logger.Companion.log(LoggingBehavior.DEVELOPER_ERRORS, 6, TAG, Intrinsics.stringPlus("Error creating Url -- ", e10));
            return null;
        } catch (JSONException e11) {
            Logger.Companion.log(LoggingBehavior.DEVELOPER_ERRORS, 6, TAG, Intrinsics.stringPlus("Error creating Url -- ", e11));
            return null;
        }
    }
}
