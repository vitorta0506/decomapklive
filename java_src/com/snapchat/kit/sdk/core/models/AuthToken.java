package com.snapchat.kit.sdk.core.models;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.facebook.AccessToken;
import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes4.dex */
public class AuthToken implements Serializable {
    @SerializedName("access_token")
    @Expose
    private String mAccessToken;
    @SerializedName(AccessToken.EXPIRES_IN_KEY)
    @Expose
    private long mExpiresIn;
    @SerializedName("last_updated")
    @Expose
    private long mLastUpdated;
    @SerializedName("refresh_token")
    @Expose
    private String mRefreshToken;
    @SerializedName("scope")
    @Expose
    private String mScope;
    @SerializedName("token_type")
    @Expose
    private String mTokenType;

    public AuthToken(String str, String str2, String str3, long j10, long j11, String str4) {
        this.mAccessToken = str;
        this.mTokenType = str2;
        this.mRefreshToken = str3;
        this.mExpiresIn = j10;
        this.mLastUpdated = j11;
        this.mScope = str4;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AuthToken) {
            AuthToken authToken = (AuthToken) obj;
            return Objects.equals(this.mAccessToken, authToken.mAccessToken) && Objects.equals(this.mTokenType, authToken.mTokenType) && Objects.equals(this.mRefreshToken, authToken.mRefreshToken) && Objects.equals(Long.valueOf(this.mExpiresIn), Long.valueOf(authToken.mExpiresIn)) && Objects.equals(Long.valueOf(this.mLastUpdated), Long.valueOf(authToken.mLastUpdated));
        }
        return false;
    }

    public String getAccessToken() {
        return this.mAccessToken;
    }

    public long getExpiresIn() {
        return this.mExpiresIn;
    }

    public long getExpiresInMillis() {
        return this.mExpiresIn * 1000;
    }

    public long getLastUpdated() {
        return this.mLastUpdated;
    }

    public String getRefreshToken() {
        return this.mRefreshToken;
    }

    public String getScope() {
        return this.mScope;
    }

    public String getTokenType() {
        return this.mTokenType;
    }

    public boolean hasAccessToScope(@NonNull String str) {
        if (TextUtils.isEmpty(getScope())) {
            return false;
        }
        return Arrays.asList(getScope().split(" ")).contains(str);
    }

    public int hashCode() {
        return Objects.hash(this.mAccessToken, this.mTokenType, this.mRefreshToken, Long.valueOf(this.mExpiresIn), Long.valueOf(this.mLastUpdated));
    }

    public boolean isComplete() {
        return !TextUtils.isEmpty(getAccessToken()) && !TextUtils.isEmpty(getRefreshToken()) && TextUtils.equals(getTokenType(), "Bearer") && getExpiresIn() > 0 && getLastUpdated() > 0 && !TextUtils.isEmpty(getScope());
    }

    public boolean isExpired() {
        return System.currentTimeMillis() >= getLastUpdated() + getExpiresInMillis();
    }

    public void setLastUpdated(long j10) {
        this.mLastUpdated = j10;
    }

    public void setRefreshToken(String str) {
        this.mRefreshToken = str;
    }

    public String toJson() {
        return new Gson().toJson(this);
    }

    public String toString() {
        return toJson();
    }

    public boolean willBeExpiredAfter(Long l10) {
        return (getLastUpdated() + getExpiresInMillis()) - System.currentTimeMillis() <= l10.longValue();
    }
}
