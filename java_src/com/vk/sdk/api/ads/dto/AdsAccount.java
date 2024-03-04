package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001e\u001a\u00020\tHÆ\u0003J\t\u0010\u001f\u001a\u00020\u000bHÆ\u0003J\t\u0010 \u001a\u00020\rHÆ\u0003JE\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\rHÆ\u0001J\u0013\u0010\"\u001a\u00020\r2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0005HÖ\u0001J\t\u0010%\u001a\u00020\u000bHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006&"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsAccount;", "", "accessRole", "Lcom/vk/sdk/api/ads/dto/AdsAccessRole;", "accountId", "", "accountStatus", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "accountType", "Lcom/vk/sdk/api/ads/dto/AdsAccountType;", "accountName", "", "canViewBudget", "", "(Lcom/vk/sdk/api/ads/dto/AdsAccessRole;ILcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/ads/dto/AdsAccountType;Ljava/lang/String;Z)V", "getAccessRole", "()Lcom/vk/sdk/api/ads/dto/AdsAccessRole;", "getAccountId", "()I", "getAccountName", "()Ljava/lang/String;", "getAccountStatus", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getAccountType", "()Lcom/vk/sdk/api/ads/dto/AdsAccountType;", "getCanViewBudget", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsAccount {
    @SerializedName("access_role")
    @NotNull
    private final AdsAccessRole accessRole;
    @SerializedName("account_id")
    private final int accountId;
    @SerializedName("account_name")
    @NotNull
    private final String accountName;
    @SerializedName("account_status")
    @NotNull
    private final BaseBoolInt accountStatus;
    @SerializedName("account_type")
    @NotNull
    private final AdsAccountType accountType;
    @SerializedName("can_view_budget")
    private final boolean canViewBudget;

    public AdsAccount(@NotNull AdsAccessRole accessRole, int i9, @NotNull BaseBoolInt accountStatus, @NotNull AdsAccountType accountType, @NotNull String accountName, boolean z10) {
        Intrinsics.checkNotNullParameter(accessRole, "accessRole");
        Intrinsics.checkNotNullParameter(accountStatus, "accountStatus");
        Intrinsics.checkNotNullParameter(accountType, "accountType");
        Intrinsics.checkNotNullParameter(accountName, "accountName");
        this.accessRole = accessRole;
        this.accountId = i9;
        this.accountStatus = accountStatus;
        this.accountType = accountType;
        this.accountName = accountName;
        this.canViewBudget = z10;
    }

    public static /* synthetic */ AdsAccount copy$default(AdsAccount adsAccount, AdsAccessRole adsAccessRole, int i9, BaseBoolInt baseBoolInt, AdsAccountType adsAccountType, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            adsAccessRole = adsAccount.accessRole;
        }
        if ((i10 & 2) != 0) {
            i9 = adsAccount.accountId;
        }
        int i11 = i9;
        if ((i10 & 4) != 0) {
            baseBoolInt = adsAccount.accountStatus;
        }
        BaseBoolInt baseBoolInt2 = baseBoolInt;
        if ((i10 & 8) != 0) {
            adsAccountType = adsAccount.accountType;
        }
        AdsAccountType adsAccountType2 = adsAccountType;
        if ((i10 & 16) != 0) {
            str = adsAccount.accountName;
        }
        String str2 = str;
        if ((i10 & 32) != 0) {
            z10 = adsAccount.canViewBudget;
        }
        return adsAccount.copy(adsAccessRole, i11, baseBoolInt2, adsAccountType2, str2, z10);
    }

    @NotNull
    public final AdsAccessRole component1() {
        return this.accessRole;
    }

    public final int component2() {
        return this.accountId;
    }

    @NotNull
    public final BaseBoolInt component3() {
        return this.accountStatus;
    }

    @NotNull
    public final AdsAccountType component4() {
        return this.accountType;
    }

    @NotNull
    public final String component5() {
        return this.accountName;
    }

    public final boolean component6() {
        return this.canViewBudget;
    }

    @NotNull
    public final AdsAccount copy(@NotNull AdsAccessRole accessRole, int i9, @NotNull BaseBoolInt accountStatus, @NotNull AdsAccountType accountType, @NotNull String accountName, boolean z10) {
        Intrinsics.checkNotNullParameter(accessRole, "accessRole");
        Intrinsics.checkNotNullParameter(accountStatus, "accountStatus");
        Intrinsics.checkNotNullParameter(accountType, "accountType");
        Intrinsics.checkNotNullParameter(accountName, "accountName");
        return new AdsAccount(accessRole, i9, accountStatus, accountType, accountName, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsAccount) {
            AdsAccount adsAccount = (AdsAccount) obj;
            return this.accessRole == adsAccount.accessRole && this.accountId == adsAccount.accountId && this.accountStatus == adsAccount.accountStatus && this.accountType == adsAccount.accountType && Intrinsics.areEqual(this.accountName, adsAccount.accountName) && this.canViewBudget == adsAccount.canViewBudget;
        }
        return false;
    }

    @NotNull
    public final AdsAccessRole getAccessRole() {
        return this.accessRole;
    }

    public final int getAccountId() {
        return this.accountId;
    }

    @NotNull
    public final String getAccountName() {
        return this.accountName;
    }

    @NotNull
    public final BaseBoolInt getAccountStatus() {
        return this.accountStatus;
    }

    @NotNull
    public final AdsAccountType getAccountType() {
        return this.accountType;
    }

    public final boolean getCanViewBudget() {
        return this.canViewBudget;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((this.accessRole.hashCode() * 31) + this.accountId) * 31) + this.accountStatus.hashCode()) * 31) + this.accountType.hashCode()) * 31) + this.accountName.hashCode()) * 31;
        boolean z10 = this.canViewBudget;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        return hashCode + i9;
    }

    @NotNull
    public String toString() {
        AdsAccessRole adsAccessRole = this.accessRole;
        int i9 = this.accountId;
        BaseBoolInt baseBoolInt = this.accountStatus;
        AdsAccountType adsAccountType = this.accountType;
        String str = this.accountName;
        boolean z10 = this.canViewBudget;
        return "AdsAccount(accessRole=" + adsAccessRole + ", accountId=" + i9 + ", accountStatus=" + baseBoolInt + ", accountType=" + adsAccountType + ", accountName=" + str + ", canViewBudget=" + z10 + ")";
    }
}
