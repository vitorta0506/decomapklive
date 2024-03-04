package com.vk.sdk.api.ads.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0010JL\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u00072\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\nHÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0016\u0010\u0010¨\u0006#"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsUserSpecification;", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "role", "Lcom/vk/sdk/api/ads/dto/AdsAccessRolePublic;", "grantAccessToAllClients", "", "clientIds", "", "", "viewBudget", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/ads/dto/AdsAccessRolePublic;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;)V", "getClientIds", "()Ljava/util/List;", "getGrantAccessToAllClients", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getRole", "()Lcom/vk/sdk/api/ads/dto/AdsAccessRolePublic;", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "getViewBudget", "component1", "component2", "component3", "component4", "component5", "copy", "(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/ads/dto/AdsAccessRolePublic;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;)Lcom/vk/sdk/api/ads/dto/AdsUserSpecification;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsUserSpecification {
    @SerializedName("client_ids")
    @Nullable
    private final List<Integer> clientIds;
    @SerializedName("grant_access_to_all_clients")
    @Nullable
    private final Boolean grantAccessToAllClients;
    @SerializedName("role")
    @NotNull
    private final AdsAccessRolePublic role;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;
    @SerializedName("view_budget")
    @Nullable
    private final Boolean viewBudget;

    public AdsUserSpecification(@NotNull UserId userId, @NotNull AdsAccessRolePublic role, @Nullable Boolean bool, @Nullable List<Integer> list, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(role, "role");
        this.userId = userId;
        this.role = role;
        this.grantAccessToAllClients = bool;
        this.clientIds = list;
        this.viewBudget = bool2;
    }

    public static /* synthetic */ AdsUserSpecification copy$default(AdsUserSpecification adsUserSpecification, UserId userId, AdsAccessRolePublic adsAccessRolePublic, Boolean bool, List list, Boolean bool2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = adsUserSpecification.userId;
        }
        if ((i9 & 2) != 0) {
            adsAccessRolePublic = adsUserSpecification.role;
        }
        AdsAccessRolePublic adsAccessRolePublic2 = adsAccessRolePublic;
        if ((i9 & 4) != 0) {
            bool = adsUserSpecification.grantAccessToAllClients;
        }
        Boolean bool3 = bool;
        List<Integer> list2 = list;
        if ((i9 & 8) != 0) {
            list2 = adsUserSpecification.clientIds;
        }
        List list3 = list2;
        if ((i9 & 16) != 0) {
            bool2 = adsUserSpecification.viewBudget;
        }
        return adsUserSpecification.copy(userId, adsAccessRolePublic2, bool3, list3, bool2);
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
    public final Boolean component3() {
        return this.grantAccessToAllClients;
    }

    @Nullable
    public final List<Integer> component4() {
        return this.clientIds;
    }

    @Nullable
    public final Boolean component5() {
        return this.viewBudget;
    }

    @NotNull
    public final AdsUserSpecification copy(@NotNull UserId userId, @NotNull AdsAccessRolePublic role, @Nullable Boolean bool, @Nullable List<Integer> list, @Nullable Boolean bool2) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(role, "role");
        return new AdsUserSpecification(userId, role, bool, list, bool2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsUserSpecification) {
            AdsUserSpecification adsUserSpecification = (AdsUserSpecification) obj;
            return Intrinsics.areEqual(this.userId, adsUserSpecification.userId) && this.role == adsUserSpecification.role && Intrinsics.areEqual(this.grantAccessToAllClients, adsUserSpecification.grantAccessToAllClients) && Intrinsics.areEqual(this.clientIds, adsUserSpecification.clientIds) && Intrinsics.areEqual(this.viewBudget, adsUserSpecification.viewBudget);
        }
        return false;
    }

    @Nullable
    public final List<Integer> getClientIds() {
        return this.clientIds;
    }

    @Nullable
    public final Boolean getGrantAccessToAllClients() {
        return this.grantAccessToAllClients;
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
        Boolean bool = this.grantAccessToAllClients;
        int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        List<Integer> list = this.clientIds;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        Boolean bool2 = this.viewBudget;
        return hashCode3 + (bool2 != null ? bool2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        UserId userId = this.userId;
        AdsAccessRolePublic adsAccessRolePublic = this.role;
        Boolean bool = this.grantAccessToAllClients;
        List<Integer> list = this.clientIds;
        Boolean bool2 = this.viewBudget;
        return "AdsUserSpecification(userId=" + userId + ", role=" + adsAccessRolePublic + ", grantAccessToAllClients=" + bool + ", clientIds=" + list + ", viewBudget=" + bool2 + ")";
    }

    public /* synthetic */ AdsUserSpecification(UserId userId, AdsAccessRolePublic adsAccessRolePublic, Boolean bool, List list, Boolean bool2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, adsAccessRolePublic, (i9 & 4) != 0 ? null : bool, (i9 & 8) != 0 ? null : list, (i9 & 16) != 0 ? null : bool2);
    }
}
