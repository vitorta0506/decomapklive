package com.vk.sdk.api.account.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.api.sdk.exceptions.VKApiCodes;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jb\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0005HÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006&"}, d2 = {"Lcom/vk/sdk/api/account/dto/AccountNameRequest;", "", "firstName", "", "id", "", "lastName", "status", "Lcom/vk/sdk/api/account/dto/AccountNameRequestStatus;", VKApiCodes.PARAM_LANG, "linkHref", "linkLabel", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/account/dto/AccountNameRequestStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFirstName", "()Ljava/lang/String;", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLang", "getLastName", "getLinkHref", "getLinkLabel", "getStatus", "()Lcom/vk/sdk/api/account/dto/AccountNameRequestStatus;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/account/dto/AccountNameRequestStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/api/account/dto/AccountNameRequest;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AccountNameRequest {
    @SerializedName("first_name")
    @Nullable
    private final String firstName;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35651id;
    @SerializedName(VKApiCodes.PARAM_LANG)
    @Nullable
    private final String lang;
    @SerializedName("last_name")
    @Nullable
    private final String lastName;
    @SerializedName("link_href")
    @Nullable
    private final String linkHref;
    @SerializedName("link_label")
    @Nullable
    private final String linkLabel;
    @SerializedName("status")
    @Nullable
    private final AccountNameRequestStatus status;

    public AccountNameRequest() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public AccountNameRequest(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable AccountNameRequestStatus accountNameRequestStatus, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        this.firstName = str;
        this.f35651id = num;
        this.lastName = str2;
        this.status = accountNameRequestStatus;
        this.lang = str3;
        this.linkHref = str4;
        this.linkLabel = str5;
    }

    public static /* synthetic */ AccountNameRequest copy$default(AccountNameRequest accountNameRequest, String str, Integer num, String str2, AccountNameRequestStatus accountNameRequestStatus, String str3, String str4, String str5, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = accountNameRequest.firstName;
        }
        if ((i9 & 2) != 0) {
            num = accountNameRequest.f35651id;
        }
        Integer num2 = num;
        if ((i9 & 4) != 0) {
            str2 = accountNameRequest.lastName;
        }
        String str6 = str2;
        if ((i9 & 8) != 0) {
            accountNameRequestStatus = accountNameRequest.status;
        }
        AccountNameRequestStatus accountNameRequestStatus2 = accountNameRequestStatus;
        if ((i9 & 16) != 0) {
            str3 = accountNameRequest.lang;
        }
        String str7 = str3;
        if ((i9 & 32) != 0) {
            str4 = accountNameRequest.linkHref;
        }
        String str8 = str4;
        if ((i9 & 64) != 0) {
            str5 = accountNameRequest.linkLabel;
        }
        return accountNameRequest.copy(str, num2, str6, accountNameRequestStatus2, str7, str8, str5);
    }

    @Nullable
    public final String component1() {
        return this.firstName;
    }

    @Nullable
    public final Integer component2() {
        return this.f35651id;
    }

    @Nullable
    public final String component3() {
        return this.lastName;
    }

    @Nullable
    public final AccountNameRequestStatus component4() {
        return this.status;
    }

    @Nullable
    public final String component5() {
        return this.lang;
    }

    @Nullable
    public final String component6() {
        return this.linkHref;
    }

    @Nullable
    public final String component7() {
        return this.linkLabel;
    }

    @NotNull
    public final AccountNameRequest copy(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable AccountNameRequestStatus accountNameRequestStatus, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        return new AccountNameRequest(str, num, str2, accountNameRequestStatus, str3, str4, str5);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountNameRequest) {
            AccountNameRequest accountNameRequest = (AccountNameRequest) obj;
            return Intrinsics.areEqual(this.firstName, accountNameRequest.firstName) && Intrinsics.areEqual(this.f35651id, accountNameRequest.f35651id) && Intrinsics.areEqual(this.lastName, accountNameRequest.lastName) && this.status == accountNameRequest.status && Intrinsics.areEqual(this.lang, accountNameRequest.lang) && Intrinsics.areEqual(this.linkHref, accountNameRequest.linkHref) && Intrinsics.areEqual(this.linkLabel, accountNameRequest.linkLabel);
        }
        return false;
    }

    @Nullable
    public final String getFirstName() {
        return this.firstName;
    }

    @Nullable
    public final Integer getId() {
        return this.f35651id;
    }

    @Nullable
    public final String getLang() {
        return this.lang;
    }

    @Nullable
    public final String getLastName() {
        return this.lastName;
    }

    @Nullable
    public final String getLinkHref() {
        return this.linkHref;
    }

    @Nullable
    public final String getLinkLabel() {
        return this.linkLabel;
    }

    @Nullable
    public final AccountNameRequestStatus getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.firstName;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.f35651id;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.lastName;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        AccountNameRequestStatus accountNameRequestStatus = this.status;
        int hashCode4 = (hashCode3 + (accountNameRequestStatus == null ? 0 : accountNameRequestStatus.hashCode())) * 31;
        String str3 = this.lang;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.linkHref;
        int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.linkLabel;
        return hashCode6 + (str5 != null ? str5.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.firstName;
        Integer num = this.f35651id;
        String str2 = this.lastName;
        AccountNameRequestStatus accountNameRequestStatus = this.status;
        String str3 = this.lang;
        String str4 = this.linkHref;
        String str5 = this.linkLabel;
        return "AccountNameRequest(firstName=" + str + ", id=" + num + ", lastName=" + str2 + ", status=" + accountNameRequestStatus + ", lang=" + str3 + ", linkHref=" + str4 + ", linkLabel=" + str5 + ")";
    }

    public /* synthetic */ AccountNameRequest(String str, Integer num, String str2, AccountNameRequestStatus accountNameRequestStatus, String str3, String str4, String str5, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : str2, (i9 & 8) != 0 ? null : accountNameRequestStatus, (i9 & 16) != 0 ? null : str3, (i9 & 32) != 0 ? null : str4, (i9 & 64) != 0 ? null : str5);
    }
}
