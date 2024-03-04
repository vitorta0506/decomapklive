package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.AuthenticationToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.FacebookServiceException;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018\u0000 52\u00020\u0001:\u00015B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0014\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\b\u0010\u001a\u001a\u00020\u0016H\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\rH\u0014J\b\u0010\u001d\u001a\u00020\rH\u0014J\u0012\u0010\u001e\u001a\u00020\u00162\b\u0010\u001f\u001a\u0004\u0018\u00010\rH\u0014J\b\u0010 \u001a\u00020!H\u0016J\"\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\u0018\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0014J\u0010\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020!H\u0016J\u0010\u00101\u001a\u00020$2\u0006\u0010*\u001a\u00020+H&J\u0018\u00102\u001a\u00020\u00162\u0006\u00103\u001a\u00020\u00062\u0006\u00104\u001a\u00020$H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0004R,\u0010\u000b\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u00066"}, d2 = {"Lcom/facebook/login/LoginMethodHandler;", "Landroid/os/Parcelable;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", ShareConstants.FEED_SOURCE_PARAM, "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "getLoginClient", "()Lcom/facebook/login/LoginClient;", "setLoginClient", "methodLoggingExtras", "", "", "getMethodLoggingExtras", "()Ljava/util/Map;", "setMethodLoggingExtras", "(Ljava/util/Map;)V", "nameForLogging", "getNameForLogging", "()Ljava/lang/String;", "addLoggingExtra", "", "key", "value", "", "cancel", "getClientState", "authId", "getRedirectUrl", "logWebLoginCompleted", "e2e", "needsInternetPermission", "", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "processCodeExchange", "Landroid/os/Bundle;", "request", "Lcom/facebook/login/LoginClient$Request;", "values", "putChallengeParam", RemoteMessageConst.MessageBody.PARAM, "Lorg/json/JSONObject;", "shouldKeepTrackOfMultipleIntents", "tryAuthorize", "writeToParcel", "dest", "flags", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@VisibleForTesting(otherwise = 3)
/* loaded from: classes.dex */
public abstract class LoginMethodHandler implements Parcelable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String NO_SIGNED_REQUEST_ERROR_MESSAGE = "Authorization response does not contain the signed_request";
    @NotNull
    public static final String NO_USER_ID_ERROR_MESSAGE = "Failed to retrieve user_id from signed_request";
    @NotNull
    public static final String USER_CANCELED_LOG_IN_ERROR_MESSAGE = "User canceled log in.";
    public LoginClient loginClient;
    @Nullable
    private Map<String, String> methodLoggingExtras;

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u0004H\u0007J6\u0010\u000e\u001a\u0004\u0018\u00010\b2\u0010\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u0004H\u0007J\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u0015\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/facebook/login/LoginMethodHandler$Companion;", "", "()V", "NO_SIGNED_REQUEST_ERROR_MESSAGE", "", "NO_USER_ID_ERROR_MESSAGE", "USER_CANCELED_LOG_IN_ERROR_MESSAGE", "createAccessTokenFromNativeLogin", "Lcom/facebook/AccessToken;", "bundle", "Landroid/os/Bundle;", ShareConstants.FEED_SOURCE_PARAM, "Lcom/facebook/AccessTokenSource;", "applicationId", "createAccessTokenFromWebBundle", "requestedPermissions", "", "createAuthenticationTokenFromNativeLogin", "Lcom/facebook/AuthenticationToken;", "expectedNonce", "createAuthenticationTokenFromWebBundle", "getUserIDFromSignedRequest", "signedRequest", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @Nullable
        public final AccessToken createAccessTokenFromNativeLogin(@NotNull Bundle bundle, @Nullable AccessTokenSource accessTokenSource, @NotNull String applicationId) {
            String string;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Utility utility = Utility.INSTANCE;
            Date bundleLongAsDate = Utility.getBundleLongAsDate(bundle, NativeProtocol.EXTRA_EXPIRES_SECONDS_SINCE_EPOCH, new Date(0L));
            ArrayList<String> stringArrayList = bundle.getStringArrayList(NativeProtocol.EXTRA_PERMISSIONS);
            String string2 = bundle.getString(NativeProtocol.EXTRA_ACCESS_TOKEN);
            Date bundleLongAsDate2 = Utility.getBundleLongAsDate(bundle, NativeProtocol.EXTRA_DATA_ACCESS_EXPIRATION_TIME, new Date(0L));
            if (string2 != null) {
                if (!(string2.length() == 0) && (string = bundle.getString(NativeProtocol.EXTRA_USER_ID)) != null) {
                    if (!(string.length() == 0)) {
                        return new AccessToken(string2, applicationId, string, stringArrayList, null, null, accessTokenSource, bundleLongAsDate, new Date(), bundleLongAsDate2, bundle.getString("graph_domain"));
                    }
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00e7 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00e8  */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.facebook.AccessToken createAccessTokenFromWebBundle(@org.jetbrains.annotations.Nullable java.util.Collection<java.lang.String> r20, @org.jetbrains.annotations.NotNull android.os.Bundle r21, @org.jetbrains.annotations.Nullable com.facebook.AccessTokenSource r22, @org.jetbrains.annotations.NotNull java.lang.String r23) throws com.facebook.FacebookException {
            /*
                Method dump skipped, instructions count: 270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.LoginMethodHandler.Companion.createAccessTokenFromWebBundle(java.util.Collection, android.os.Bundle, com.facebook.AccessTokenSource, java.lang.String):com.facebook.AccessToken");
        }

        @JvmStatic
        @Nullable
        public final AuthenticationToken createAuthenticationTokenFromNativeLogin(@NotNull Bundle bundle, @Nullable String str) throws FacebookException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            String string = bundle.getString(NativeProtocol.EXTRA_AUTHENTICATION_TOKEN);
            if (string != null) {
                if (!(string.length() == 0) && str != null) {
                    if (!(str.length() == 0)) {
                        try {
                            return new AuthenticationToken(string, str);
                        } catch (Exception e10) {
                            throw new FacebookException(e10.getMessage());
                        }
                    }
                }
            }
            return null;
        }

        @JvmStatic
        @Nullable
        public final AuthenticationToken createAuthenticationTokenFromWebBundle(@NotNull Bundle bundle, @Nullable String str) throws FacebookException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            String string = bundle.getString("id_token");
            if (string != null) {
                if (!(string.length() == 0) && str != null) {
                    if (!(str.length() == 0)) {
                        try {
                            return new AuthenticationToken(string, str);
                        } catch (Exception e10) {
                            throw new FacebookException(e10.getMessage(), e10);
                        }
                    }
                }
            }
            return null;
        }

        @JvmStatic
        @NotNull
        public final String getUserIDFromSignedRequest(@Nullable String str) throws FacebookException {
            List split$default;
            Object[] array;
            if (str != null) {
                if (!(str.length() == 0)) {
                    try {
                        split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{"."}, false, 0, 6, (Object) null);
                        array = split$default.toArray(new String[0]);
                    } catch (UnsupportedEncodingException | JSONException unused) {
                    }
                    if (array != null) {
                        String[] strArr = (String[]) array;
                        if (strArr.length == 2) {
                            byte[] data = Base64.decode(strArr[1], 0);
                            Intrinsics.checkNotNullExpressionValue(data, "data");
                            String string = new JSONObject(new String(data, Charsets.UTF_8)).getString(AccessToken.USER_ID_KEY);
                            Intrinsics.checkNotNullExpressionValue(string, "jsonObject.getString(\"user_id\")");
                            return string;
                        }
                        throw new FacebookException(LoginMethodHandler.NO_USER_ID_ERROR_MESSAGE);
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            throw new FacebookException(LoginMethodHandler.NO_SIGNED_REQUEST_ERROR_MESSAGE);
        }
    }

    public LoginMethodHandler(@NotNull LoginClient loginClient) {
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        setLoginClient(loginClient);
    }

    @JvmStatic
    @Nullable
    public static final AccessToken createAccessTokenFromNativeLogin(@NotNull Bundle bundle, @Nullable AccessTokenSource accessTokenSource, @NotNull String str) {
        return Companion.createAccessTokenFromNativeLogin(bundle, accessTokenSource, str);
    }

    @JvmStatic
    @Nullable
    public static final AccessToken createAccessTokenFromWebBundle(@Nullable Collection<String> collection, @NotNull Bundle bundle, @Nullable AccessTokenSource accessTokenSource, @NotNull String str) throws FacebookException {
        return Companion.createAccessTokenFromWebBundle(collection, bundle, accessTokenSource, str);
    }

    @JvmStatic
    @Nullable
    public static final AuthenticationToken createAuthenticationTokenFromNativeLogin(@NotNull Bundle bundle, @Nullable String str) throws FacebookException {
        return Companion.createAuthenticationTokenFromNativeLogin(bundle, str);
    }

    @JvmStatic
    @Nullable
    public static final AuthenticationToken createAuthenticationTokenFromWebBundle(@NotNull Bundle bundle, @Nullable String str) throws FacebookException {
        return Companion.createAuthenticationTokenFromWebBundle(bundle, str);
    }

    @JvmStatic
    @NotNull
    public static final String getUserIDFromSignedRequest(@Nullable String str) throws FacebookException {
        return Companion.getUserIDFromSignedRequest(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addLoggingExtra(@Nullable String str, @Nullable Object obj) {
        if (this.methodLoggingExtras == null) {
            this.methodLoggingExtras = new HashMap();
        }
        Map<String, String> map = this.methodLoggingExtras;
        if (map == null) {
            return;
        }
        map.put(str, obj == null ? null : obj.toString());
    }

    public void cancel() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public String getClientState(@NotNull String authId) {
        Intrinsics.checkNotNullParameter(authId, "authId");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(LoginLogger.EVENT_PARAM_AUTH_LOGGER_ID, authId);
            jSONObject.put(LoginLogger.EVENT_PARAM_METHOD, getNameForLogging());
            putChallengeParam(jSONObject);
        } catch (JSONException e10) {
            Log.w("LoginMethodHandler", Intrinsics.stringPlus("Error creating client state json: ", e10.getMessage()));
        }
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "param.toString()");
        return jSONObject2;
    }

    @NotNull
    public final LoginClient getLoginClient() {
        LoginClient loginClient = this.loginClient;
        if (loginClient != null) {
            return loginClient;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loginClient");
        throw null;
    }

    @Nullable
    public final Map<String, String> getMethodLoggingExtras() {
        return this.methodLoggingExtras;
    }

    @NotNull
    public abstract String getNameForLogging();

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public String getRedirectUrl() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("fb");
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        sb2.append(FacebookSdk.getApplicationId());
        sb2.append("://authorize/");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void logWebLoginCompleted(@Nullable String str) {
        LoginClient.Request pendingRequest = getLoginClient().getPendingRequest();
        String applicationId = pendingRequest == null ? null : pendingRequest.getApplicationId();
        if (applicationId == null) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            applicationId = FacebookSdk.getApplicationId();
        }
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(getLoginClient().getActivity(), applicationId);
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_WEB_LOGIN_E2E, str);
        bundle.putLong(AnalyticsEvents.PARAMETER_WEB_LOGIN_SWITCHBACK_TIME, System.currentTimeMillis());
        bundle.putString("app_id", applicationId);
        internalAppEventsLogger.logEventImplicitly(AnalyticsEvents.EVENT_WEB_LOGIN_COMPLETE, null, bundle);
    }

    public boolean needsInternetPermission() {
        return false;
    }

    public boolean onActivityResult(int i9, int i10, @Nullable Intent intent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Bundle processCodeExchange(@NotNull LoginClient.Request request, @NotNull Bundle values) throws FacebookException {
        GraphRequest createCodeExchangeRequest;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(values, "values");
        String string = values.getString("code");
        Utility utility = Utility.INSTANCE;
        if (Utility.isNullOrEmpty(string)) {
            throw new FacebookException("No code param found from the request");
        }
        if (string == null) {
            createCodeExchangeRequest = null;
        } else {
            PKCEUtil pKCEUtil = PKCEUtil.INSTANCE;
            String redirectUrl = getRedirectUrl();
            String codeVerifier = request.getCodeVerifier();
            if (codeVerifier == null) {
                codeVerifier = "";
            }
            createCodeExchangeRequest = PKCEUtil.createCodeExchangeRequest(string, redirectUrl, codeVerifier);
        }
        if (createCodeExchangeRequest != null) {
            GraphResponse executeAndWait = createCodeExchangeRequest.executeAndWait();
            FacebookRequestError error = executeAndWait.getError();
            if (error == null) {
                try {
                    JSONObject jSONObject = executeAndWait.getJSONObject();
                    String string2 = jSONObject != null ? jSONObject.getString("access_token") : null;
                    if (jSONObject != null && !Utility.isNullOrEmpty(string2)) {
                        values.putString("access_token", string2);
                        if (jSONObject.has("id_token")) {
                            values.putString("id_token", jSONObject.getString("id_token"));
                        }
                        return values;
                    }
                    throw new FacebookException("No access token found from result");
                } catch (JSONException e10) {
                    throw new FacebookException(Intrinsics.stringPlus("Fail to process code exchange response: ", e10.getMessage()));
                }
            }
            throw new FacebookServiceException(error, error.getErrorMessage());
        }
        throw new FacebookException("Failed to create code exchange request");
    }

    public void putChallengeParam(@NotNull JSONObject param) throws JSONException {
        Intrinsics.checkNotNullParameter(param, "param");
    }

    public final void setLoginClient(@NotNull LoginClient loginClient) {
        Intrinsics.checkNotNullParameter(loginClient, "<set-?>");
        this.loginClient = loginClient;
    }

    public final void setMethodLoggingExtras(@Nullable Map<String, String> map) {
        this.methodLoggingExtras = map;
    }

    public boolean shouldKeepTrackOfMultipleIntents() {
        return false;
    }

    public abstract int tryAuthorize(@NotNull LoginClient.Request request);

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i9) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        Utility utility = Utility.INSTANCE;
        Utility.writeStringMapToParcel(dest, this.methodLoggingExtras);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LoginMethodHandler(@NotNull Parcel source) {
        Intrinsics.checkNotNullParameter(source, "source");
        Utility utility = Utility.INSTANCE;
        Map<String, String> readStringMapFromParcel = Utility.readStringMapFromParcel(source);
        this.methodLoggingExtras = readStringMapFromParcel == null ? null : MapsKt__MapsKt.toMutableMap(readStringMapFromParcel);
    }
}
