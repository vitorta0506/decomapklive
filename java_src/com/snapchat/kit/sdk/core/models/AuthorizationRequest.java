package com.snapchat.kit.sdk.core.models;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import java.io.Serializable;
import java.util.Objects;
/* loaded from: classes4.dex */
public class AuthorizationRequest implements Serializable {
    @SerializedName("mClientId")
    @Expose
    private String mClientId;
    @SerializedName("mCodeChallenge")
    @Expose
    private String mCodeChallenge;
    @SerializedName("mCodeChallengeMethod")
    @Expose
    private String mCodeChallengeMethod;
    @SerializedName("mCodeVerifier")
    @Expose
    private String mCodeVerifier;
    @SerializedName("mFeatures")
    @Expose
    private String mFeatures;
    @SerializedName("mIsForFirebaseAuthentication")
    @Expose
    private boolean mIsForFirebaseAuthentication;
    @SerializedName("mKitPluginType")
    @Expose
    private KitPluginType mKitPluginType;
    @SerializedName("mRedirectUri")
    @Expose
    private String mRedirectUri;
    @SerializedName("mResponseType")
    @Expose
    private String mResponseType;
    @SerializedName("mScope")
    @Expose
    private String mScope;
    @SerializedName("mSdkIsFromReactNativePlugin")
    @Expose
    private boolean mSdkIsFromReactNativePlugin;
    @SerializedName("mState")
    @Expose
    private String mState;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AuthorizationRequest) {
            AuthorizationRequest authorizationRequest = (AuthorizationRequest) obj;
            return Objects.equals(this.mResponseType, authorizationRequest.mResponseType) && Objects.equals(this.mClientId, authorizationRequest.mClientId) && Objects.equals(this.mScope, authorizationRequest.mScope) && Objects.equals(this.mRedirectUri, authorizationRequest.mRedirectUri) && Objects.equals(this.mState, authorizationRequest.mState) && Objects.equals(this.mCodeVerifier, authorizationRequest.mCodeVerifier) && Objects.equals(this.mCodeChallengeMethod, authorizationRequest.mCodeChallengeMethod) && Objects.equals(this.mCodeChallenge, authorizationRequest.mCodeChallenge) && Objects.equals(this.mFeatures, authorizationRequest.mFeatures) && Objects.equals(this.mKitPluginType, authorizationRequest.mKitPluginType) && Objects.equals(Boolean.valueOf(this.mSdkIsFromReactNativePlugin), Boolean.valueOf(authorizationRequest.mSdkIsFromReactNativePlugin)) && Objects.equals(Boolean.valueOf(this.mIsForFirebaseAuthentication), Boolean.valueOf(authorizationRequest.mIsForFirebaseAuthentication));
        }
        return false;
    }

    public String getCodeVerifier() {
        return this.mCodeVerifier;
    }

    public String getFeatures() {
        return this.mFeatures;
    }

    public boolean getIsForFirebaseAuthentication() {
        return this.mIsForFirebaseAuthentication;
    }

    public String getRedirectUri() {
        return this.mRedirectUri;
    }

    public String getResponseType() {
        return this.mResponseType;
    }

    public boolean getSdkIsFromReactNativePlugin() {
        return this.mSdkIsFromReactNativePlugin;
    }

    public String getState() {
        return this.mState;
    }

    public int hashCode() {
        return Objects.hash(this.mResponseType, this.mClientId, this.mScope, this.mRedirectUri, this.mState, this.mCodeVerifier, this.mCodeChallengeMethod, this.mCodeChallenge, this.mFeatures, this.mKitPluginType, Boolean.valueOf(this.mSdkIsFromReactNativePlugin), Boolean.valueOf(this.mIsForFirebaseAuthentication));
    }

    public String toJson() {
        return new Gson().toJson(this);
    }

    public String toString() {
        return toJson();
    }

    public Uri toUri(@Nullable String str, @NonNull String str2, @Nullable String str3, @Nullable String str4) {
        if (TextUtils.isEmpty(str)) {
            str = "https://accounts.snapchat.com/accounts";
        }
        Uri.Builder appendQueryParameter = Uri.parse(str + str2).buildUpon().appendQueryParameter(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, this.mResponseType).appendQueryParameter("client_id", this.mClientId).appendQueryParameter("redirect_uri", this.mRedirectUri).appendQueryParameter("scope", this.mScope).appendQueryParameter(ServerProtocol.DIALOG_PARAM_STATE, this.mState).appendQueryParameter(ServerProtocol.DIALOG_PARAM_CODE_CHALLENGE_METHOD, this.mCodeChallengeMethod).appendQueryParameter(ServerProtocol.DIALOG_PARAM_CODE_CHALLENGE, this.mCodeChallenge).appendQueryParameter("sdk_is_from_react_native_plugin", String.valueOf(this.mSdkIsFromReactNativePlugin)).appendQueryParameter("is_for_firebase_authentication", String.valueOf(this.mIsForFirebaseAuthentication));
        if (!TextUtils.isEmpty(str3)) {
            appendQueryParameter.appendQueryParameter(PushConstants.PACKAGE_NAME, str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            appendQueryParameter.appendQueryParameter(ShareConstants.FEED_SOURCE_PARAM, str4);
        }
        if (!TextUtils.isEmpty(this.mFeatures)) {
            appendQueryParameter.appendQueryParameter("features", this.mFeatures);
        }
        appendQueryParameter.appendQueryParameter("kit_version", "1.13.2");
        appendQueryParameter.appendQueryParameter("link", this.mClientId);
        KitPluginType kitPluginType = this.mKitPluginType;
        if (kitPluginType != KitPluginType.NO_PLUGIN) {
            appendQueryParameter.appendQueryParameter("kitPluginType", kitPluginType.toString());
        }
        return appendQueryParameter.build();
    }

    public AuthorizationRequest withClientId(String str) {
        this.mClientId = str;
        return this;
    }

    public AuthorizationRequest withCodeChallenge(String str) {
        this.mCodeChallenge = str;
        return this;
    }

    public AuthorizationRequest withCodeChallengeMethod(String str) {
        this.mCodeChallengeMethod = str;
        return this;
    }

    public AuthorizationRequest withCodeVerifier(String str) {
        this.mCodeVerifier = str;
        return this;
    }

    public AuthorizationRequest withFeatures(String str) {
        this.mFeatures = str;
        return this;
    }

    public AuthorizationRequest withIsForFirebaseAuthentication(boolean z10) {
        this.mIsForFirebaseAuthentication = z10;
        return this;
    }

    public AuthorizationRequest withKitPluginType(KitPluginType kitPluginType) {
        this.mKitPluginType = kitPluginType;
        return this;
    }

    public AuthorizationRequest withRedirectUri(String str) {
        this.mRedirectUri = str;
        return this;
    }

    public AuthorizationRequest withResponseType(String str) {
        this.mResponseType = str;
        return this;
    }

    public AuthorizationRequest withScope(String str) {
        this.mScope = str;
        return this;
    }

    public AuthorizationRequest withSdkIsFromReactNativePlugin(boolean z10) {
        this.mSdkIsFromReactNativePlugin = z10;
        return this;
    }

    public AuthorizationRequest withState(String str) {
        this.mState = str;
        return this;
    }
}
