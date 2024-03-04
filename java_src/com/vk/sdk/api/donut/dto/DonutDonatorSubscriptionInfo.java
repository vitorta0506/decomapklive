package com.vk.sdk.api.donut.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001cB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/vk/sdk/api/donut/dto/DonutDonatorSubscriptionInfo;", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "nextPaymentDate", "", "amount", "status", "Lcom/vk/sdk/api/donut/dto/DonutDonatorSubscriptionInfo$Status;", "(Lcom/vk/dto/common/id/UserId;IILcom/vk/sdk/api/donut/dto/DonutDonatorSubscriptionInfo$Status;)V", "getAmount", "()I", "getNextPaymentDate", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getStatus", "()Lcom/vk/sdk/api/donut/dto/DonutDonatorSubscriptionInfo$Status;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "Status", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DonutDonatorSubscriptionInfo {
    @SerializedName("amount")
    private final int amount;
    @SerializedName("next_payment_date")
    private final int nextPaymentDate;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("status")
    @NotNull
    private final Status status;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/donut/dto/DonutDonatorSubscriptionInfo$Status;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ACTIVE", "EXPIRING", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Status {
        ACTIVE("active"),
        EXPIRING("expiring");
        
        @NotNull
        private final String value;

        Status(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public DonutDonatorSubscriptionInfo(@NotNull UserId ownerId, int i9, int i10, @NotNull Status status) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(status, "status");
        this.ownerId = ownerId;
        this.nextPaymentDate = i9;
        this.amount = i10;
        this.status = status;
    }

    public static /* synthetic */ DonutDonatorSubscriptionInfo copy$default(DonutDonatorSubscriptionInfo donutDonatorSubscriptionInfo, UserId userId, int i9, int i10, Status status, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            userId = donutDonatorSubscriptionInfo.ownerId;
        }
        if ((i11 & 2) != 0) {
            i9 = donutDonatorSubscriptionInfo.nextPaymentDate;
        }
        if ((i11 & 4) != 0) {
            i10 = donutDonatorSubscriptionInfo.amount;
        }
        if ((i11 & 8) != 0) {
            status = donutDonatorSubscriptionInfo.status;
        }
        return donutDonatorSubscriptionInfo.copy(userId, i9, i10, status);
    }

    @NotNull
    public final UserId component1() {
        return this.ownerId;
    }

    public final int component2() {
        return this.nextPaymentDate;
    }

    public final int component3() {
        return this.amount;
    }

    @NotNull
    public final Status component4() {
        return this.status;
    }

    @NotNull
    public final DonutDonatorSubscriptionInfo copy(@NotNull UserId ownerId, int i9, int i10, @NotNull Status status) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(status, "status");
        return new DonutDonatorSubscriptionInfo(ownerId, i9, i10, status);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DonutDonatorSubscriptionInfo) {
            DonutDonatorSubscriptionInfo donutDonatorSubscriptionInfo = (DonutDonatorSubscriptionInfo) obj;
            return Intrinsics.areEqual(this.ownerId, donutDonatorSubscriptionInfo.ownerId) && this.nextPaymentDate == donutDonatorSubscriptionInfo.nextPaymentDate && this.amount == donutDonatorSubscriptionInfo.amount && this.status == donutDonatorSubscriptionInfo.status;
        }
        return false;
    }

    public final int getAmount() {
        return this.amount;
    }

    public final int getNextPaymentDate() {
        return this.nextPaymentDate;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @NotNull
    public final Status getStatus() {
        return this.status;
    }

    public int hashCode() {
        return (((((this.ownerId.hashCode() * 31) + this.nextPaymentDate) * 31) + this.amount) * 31) + this.status.hashCode();
    }

    @NotNull
    public String toString() {
        UserId userId = this.ownerId;
        int i9 = this.nextPaymentDate;
        int i10 = this.amount;
        Status status = this.status;
        return "DonutDonatorSubscriptionInfo(ownerId=" + userId + ", nextPaymentDate=" + i9 + ", amount=" + i10 + ", status=" + status + ")";
    }
}
