package com.vk.sdk.api.ads.dto;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J<\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u0010\u0010\n¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsCreateAdStatus;", "", "id", "", ShareConstants.RESULT_POST_ID, "errorCode", "errorDesc", "", "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getErrorCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getErrorDesc", "()Ljava/lang/String;", "getId", "()I", "getPostId", "component1", "component2", "component3", "component4", "copy", "(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/ads/dto/AdsCreateAdStatus;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsCreateAdStatus {
    @SerializedName("error_code")
    @Nullable
    private final Integer errorCode;
    @SerializedName("error_desc")
    @Nullable
    private final String errorDesc;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35667id;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;

    public AdsCreateAdStatus(int i9, @Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        this.f35667id = i9;
        this.postId = num;
        this.errorCode = num2;
        this.errorDesc = str;
    }

    public static /* synthetic */ AdsCreateAdStatus copy$default(AdsCreateAdStatus adsCreateAdStatus, int i9, Integer num, Integer num2, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = adsCreateAdStatus.f35667id;
        }
        if ((i10 & 2) != 0) {
            num = adsCreateAdStatus.postId;
        }
        if ((i10 & 4) != 0) {
            num2 = adsCreateAdStatus.errorCode;
        }
        if ((i10 & 8) != 0) {
            str = adsCreateAdStatus.errorDesc;
        }
        return adsCreateAdStatus.copy(i9, num, num2, str);
    }

    public final int component1() {
        return this.f35667id;
    }

    @Nullable
    public final Integer component2() {
        return this.postId;
    }

    @Nullable
    public final Integer component3() {
        return this.errorCode;
    }

    @Nullable
    public final String component4() {
        return this.errorDesc;
    }

    @NotNull
    public final AdsCreateAdStatus copy(int i9, @Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        return new AdsCreateAdStatus(i9, num, num2, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsCreateAdStatus) {
            AdsCreateAdStatus adsCreateAdStatus = (AdsCreateAdStatus) obj;
            return this.f35667id == adsCreateAdStatus.f35667id && Intrinsics.areEqual(this.postId, adsCreateAdStatus.postId) && Intrinsics.areEqual(this.errorCode, adsCreateAdStatus.errorCode) && Intrinsics.areEqual(this.errorDesc, adsCreateAdStatus.errorDesc);
        }
        return false;
    }

    @Nullable
    public final Integer getErrorCode() {
        return this.errorCode;
    }

    @Nullable
    public final String getErrorDesc() {
        return this.errorDesc;
    }

    public final int getId() {
        return this.f35667id;
    }

    @Nullable
    public final Integer getPostId() {
        return this.postId;
    }

    public int hashCode() {
        int i9 = this.f35667id * 31;
        Integer num = this.postId;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.errorCode;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.errorDesc;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f35667id;
        Integer num = this.postId;
        Integer num2 = this.errorCode;
        String str = this.errorDesc;
        return "AdsCreateAdStatus(id=" + i9 + ", postId=" + num + ", errorCode=" + num2 + ", errorDesc=" + str + ")";
    }

    public /* synthetic */ AdsCreateAdStatus(int i9, Integer num, Integer num2, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : num, (i10 & 4) != 0 ? null : num2, (i10 & 8) != 0 ? null : str);
    }
}
