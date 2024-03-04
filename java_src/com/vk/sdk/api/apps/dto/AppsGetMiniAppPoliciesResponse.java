package com.vk.sdk.api.apps.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/apps/dto/AppsGetMiniAppPoliciesResponse;", "", "privacyPolicy", "", "terms", "(Ljava/lang/String;Ljava/lang/String;)V", "getPrivacyPolicy", "()Ljava/lang/String;", "getTerms", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppsGetMiniAppPoliciesResponse {
    @SerializedName("privacy_policy")
    @Nullable
    private final String privacyPolicy;
    @SerializedName("terms")
    @Nullable
    private final String terms;

    public AppsGetMiniAppPoliciesResponse() {
        this(null, null, 3, null);
    }

    public AppsGetMiniAppPoliciesResponse(@Nullable String str, @Nullable String str2) {
        this.privacyPolicy = str;
        this.terms = str2;
    }

    public static /* synthetic */ AppsGetMiniAppPoliciesResponse copy$default(AppsGetMiniAppPoliciesResponse appsGetMiniAppPoliciesResponse, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = appsGetMiniAppPoliciesResponse.privacyPolicy;
        }
        if ((i9 & 2) != 0) {
            str2 = appsGetMiniAppPoliciesResponse.terms;
        }
        return appsGetMiniAppPoliciesResponse.copy(str, str2);
    }

    @Nullable
    public final String component1() {
        return this.privacyPolicy;
    }

    @Nullable
    public final String component2() {
        return this.terms;
    }

    @NotNull
    public final AppsGetMiniAppPoliciesResponse copy(@Nullable String str, @Nullable String str2) {
        return new AppsGetMiniAppPoliciesResponse(str, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppsGetMiniAppPoliciesResponse) {
            AppsGetMiniAppPoliciesResponse appsGetMiniAppPoliciesResponse = (AppsGetMiniAppPoliciesResponse) obj;
            return Intrinsics.areEqual(this.privacyPolicy, appsGetMiniAppPoliciesResponse.privacyPolicy) && Intrinsics.areEqual(this.terms, appsGetMiniAppPoliciesResponse.terms);
        }
        return false;
    }

    @Nullable
    public final String getPrivacyPolicy() {
        return this.privacyPolicy;
    }

    @Nullable
    public final String getTerms() {
        return this.terms;
    }

    public int hashCode() {
        String str = this.privacyPolicy;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.terms;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.privacyPolicy;
        String str2 = this.terms;
        return "AppsGetMiniAppPoliciesResponse(privacyPolicy=" + str + ", terms=" + str2 + ")";
    }

    public /* synthetic */ AppsGetMiniAppPoliciesResponse(String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2);
    }
}
