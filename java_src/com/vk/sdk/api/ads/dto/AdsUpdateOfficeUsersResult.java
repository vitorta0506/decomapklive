package com.vk.sdk.api.ads.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseError;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsUpdateOfficeUsersResult;", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "isSuccess", "", "error", "Lcom/vk/sdk/api/base/dto/BaseError;", "(Lcom/vk/dto/common/id/UserId;ZLcom/vk/sdk/api/base/dto/BaseError;)V", "getError", "()Lcom/vk/sdk/api/base/dto/BaseError;", "()Z", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsUpdateOfficeUsersResult {
    @SerializedName("error")
    @Nullable
    private final BaseError error;
    @SerializedName("is_success")
    private final boolean isSuccess;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;

    public AdsUpdateOfficeUsersResult(@NotNull UserId userId, boolean z10, @Nullable BaseError baseError) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        this.isSuccess = z10;
        this.error = baseError;
    }

    public static /* synthetic */ AdsUpdateOfficeUsersResult copy$default(AdsUpdateOfficeUsersResult adsUpdateOfficeUsersResult, UserId userId, boolean z10, BaseError baseError, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = adsUpdateOfficeUsersResult.userId;
        }
        if ((i9 & 2) != 0) {
            z10 = adsUpdateOfficeUsersResult.isSuccess;
        }
        if ((i9 & 4) != 0) {
            baseError = adsUpdateOfficeUsersResult.error;
        }
        return adsUpdateOfficeUsersResult.copy(userId, z10, baseError);
    }

    @NotNull
    public final UserId component1() {
        return this.userId;
    }

    public final boolean component2() {
        return this.isSuccess;
    }

    @Nullable
    public final BaseError component3() {
        return this.error;
    }

    @NotNull
    public final AdsUpdateOfficeUsersResult copy(@NotNull UserId userId, boolean z10, @Nullable BaseError baseError) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new AdsUpdateOfficeUsersResult(userId, z10, baseError);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsUpdateOfficeUsersResult) {
            AdsUpdateOfficeUsersResult adsUpdateOfficeUsersResult = (AdsUpdateOfficeUsersResult) obj;
            return Intrinsics.areEqual(this.userId, adsUpdateOfficeUsersResult.userId) && this.isSuccess == adsUpdateOfficeUsersResult.isSuccess && Intrinsics.areEqual(this.error, adsUpdateOfficeUsersResult.error);
        }
        return false;
    }

    @Nullable
    public final BaseError getError() {
        return this.error;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.userId.hashCode() * 31;
        boolean z10 = this.isSuccess;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int i10 = (hashCode + i9) * 31;
        BaseError baseError = this.error;
        return i10 + (baseError == null ? 0 : baseError.hashCode());
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    @NotNull
    public String toString() {
        UserId userId = this.userId;
        boolean z10 = this.isSuccess;
        BaseError baseError = this.error;
        return "AdsUpdateOfficeUsersResult(userId=" + userId + ", isSuccess=" + z10 + ", error=" + baseError + ")";
    }

    public /* synthetic */ AdsUpdateOfficeUsersResult(UserId userId, boolean z10, BaseError baseError, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, z10, (i9 & 4) != 0 ? null : baseError);
    }
}
