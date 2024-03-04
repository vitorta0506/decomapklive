package com.vk.sdk.api.ads.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0006HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsUsers;", "", "accesses", "", "Lcom/vk/sdk/api/ads/dto/AdsAccesses;", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "(Ljava/util/List;Lcom/vk/dto/common/id/UserId;)V", "getAccesses", "()Ljava/util/List;", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsUsers {
    @SerializedName("accesses")
    @NotNull
    private final List<AdsAccesses> accesses;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;

    public AdsUsers(@NotNull List<AdsAccesses> accesses, @NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(accesses, "accesses");
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.accesses = accesses;
        this.userId = userId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdsUsers copy$default(AdsUsers adsUsers, List list, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = adsUsers.accesses;
        }
        if ((i9 & 2) != 0) {
            userId = adsUsers.userId;
        }
        return adsUsers.copy(list, userId);
    }

    @NotNull
    public final List<AdsAccesses> component1() {
        return this.accesses;
    }

    @NotNull
    public final UserId component2() {
        return this.userId;
    }

    @NotNull
    public final AdsUsers copy(@NotNull List<AdsAccesses> accesses, @NotNull UserId userId) {
        Intrinsics.checkNotNullParameter(accesses, "accesses");
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new AdsUsers(accesses, userId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsUsers) {
            AdsUsers adsUsers = (AdsUsers) obj;
            return Intrinsics.areEqual(this.accesses, adsUsers.accesses) && Intrinsics.areEqual(this.userId, adsUsers.userId);
        }
        return false;
    }

    @NotNull
    public final List<AdsAccesses> getAccesses() {
        return this.accesses;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (this.accesses.hashCode() * 31) + this.userId.hashCode();
    }

    @NotNull
    public String toString() {
        List<AdsAccesses> list = this.accesses;
        UserId userId = this.userId;
        return "AdsUsers(accesses=" + list + ", userId=" + userId + ")";
    }
}
