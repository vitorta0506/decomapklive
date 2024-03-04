package com.vk.sdk.api.ads.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0013J:\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsUserSpecificationCutted;", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "role", "Lcom/vk/sdk/api/ads/dto/AdsAccessRolePublic;", "clientId", "", "viewBudget", "", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/ads/dto/AdsAccessRolePublic;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "getClientId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getRole", "()Lcom/vk/sdk/api/ads/dto/AdsAccessRolePublic;", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "getViewBudget", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "copy", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/ads/dto/AdsAccessRolePublic;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/vk/sdk/api/ads/dto/AdsUserSpecificationCutted;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsUserSpecificationCutted {
    @SerializedName("client_id")
    @Nullable
    private final Integer clientId;
    @SerializedName("role")
    @NotNull
    private final AdsAccessRolePublic role;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;
    @SerializedName("view_budget")
    @Nullable
    private final Boolean viewBudget;

    public AdsUserSpecificationCutted(@NotNull UserId userId, @NotNull AdsAccessRolePublic role, @Nullable Integer num, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(role, "role");
        this.userId = userId;
        this.role = role;
        this.clientId = num;
        this.viewBudget = bool;
    }

    public static /* synthetic */ AdsUserSpecificationCutted copy$default(AdsUserSpecificationCutted adsUserSpecificationCutted, UserId userId, AdsAccessRolePublic adsAccessRolePublic, Integer num, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = adsUserSpecificationCutted.userId;
        }
        if ((i9 & 2) != 0) {
            adsAccessRolePublic = adsUserSpecificationCutted.role;
        }
        if ((i9 & 4) != 0) {
            num = adsUserSpecificationCutted.clientId;
        }
        if ((i9 & 8) != 0) {
            bool = adsUserSpecificationCutted.viewBudget;
        }
        return adsUserSpecificationCutted.copy(userId, adsAccessRolePublic, num, bool);
    }

    @NotNull
    public final UserId component1() {
        return this.userId;
    }

    @NotNull
    public final AdsAccessRolePublic component2() {
        return this.role;
    }

    @Nullable
    public final Integer component3() {
        return this.clientId;
    }

    @Nullable
    public final Boolean component4() {
        return this.viewBudget;
    }

    @NotNull
    public final AdsUserSpecificationCutted copy(@NotNull UserId userId, @NotNull AdsAccessRolePublic role, @Nullable Integer num, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(role, "role");
        return new AdsUserSpecificationCutted(userId, role, num, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsUserSpecificationCutted) {
            AdsUserSpecificationCutted adsUserSpecificationCutted = (AdsUserSpecificationCutted) obj;
            return Intrinsics.areEqual(this.userId, adsUserSpecificationCutted.userId) && this.role == adsUserSpecificationCutted.role && Intrinsics.areEqual(this.clientId, adsUserSpecificationCutted.clientId) && Intrinsics.areEqual(this.viewBudget, adsUserSpecificationCutted.viewBudget);
        }
        return false;
    }

    @Nullable
    public final Integer getClientId() {
        return this.clientId;
    }

    @NotNull
    public final AdsAccessRolePublic getRole() {
        return this.role;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    @Nullable
    public final Boolean getViewBudget() {
        return this.viewBudget;
    }

    public int hashCode() {
        int hashCode = ((this.userId.hashCode() * 31) + this.role.hashCode()) * 31;
        Integer num = this.clientId;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.viewBudget;
        return hashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        UserId userId = this.userId;
        AdsAccessRolePublic adsAccessRolePublic = this.role;
        Integer num = this.clientId;
        Boolean bool = this.viewBudget;
        return "AdsUserSpecificationCutted(userId=" + userId + ", role=" + adsAccessRolePublic + ", clientId=" + num + ", viewBudget=" + bool + ")";
    }

    public /* synthetic */ AdsUserSpecificationCutted(UserId userId, AdsAccessRolePublic adsAccessRolePublic, Integer num, Boolean bool, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, adsAccessRolePublic, (i9 & 4) != 0 ? null : num, (i9 & 8) != 0 ? null : bool);
    }
}
