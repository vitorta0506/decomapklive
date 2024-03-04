package com.vk.sdk.api.secure.dto;

import com.facebook.AccessToken;
import com.facebook.GraphResponse;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J>\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\f\u0010\nR\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\nR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/secure/dto/SecureTokenChecked;", "", "date", "", "expire", GraphResponse.SUCCESS_KEY, Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;)V", "getDate", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getExpire", "getSuccess", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;)Lcom/vk/sdk/api/secure/dto/SecureTokenChecked;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class SecureTokenChecked {
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("expire")
    @Nullable
    private final Integer expire;
    @SerializedName(GraphResponse.SUCCESS_KEY)
    @Nullable
    private final Integer success;
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final UserId userId;

    public SecureTokenChecked() {
        this(null, null, null, null, 15, null);
    }

    public SecureTokenChecked(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable UserId userId) {
        this.date = num;
        this.expire = num2;
        this.success = num3;
        this.userId = userId;
    }

    public static /* synthetic */ SecureTokenChecked copy$default(SecureTokenChecked secureTokenChecked, Integer num, Integer num2, Integer num3, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = secureTokenChecked.date;
        }
        if ((i9 & 2) != 0) {
            num2 = secureTokenChecked.expire;
        }
        if ((i9 & 4) != 0) {
            num3 = secureTokenChecked.success;
        }
        if ((i9 & 8) != 0) {
            userId = secureTokenChecked.userId;
        }
        return secureTokenChecked.copy(num, num2, num3, userId);
    }

    @Nullable
    public final Integer component1() {
        return this.date;
    }

    @Nullable
    public final Integer component2() {
        return this.expire;
    }

    @Nullable
    public final Integer component3() {
        return this.success;
    }

    @Nullable
    public final UserId component4() {
        return this.userId;
    }

    @NotNull
    public final SecureTokenChecked copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable UserId userId) {
        return new SecureTokenChecked(num, num2, num3, userId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SecureTokenChecked) {
            SecureTokenChecked secureTokenChecked = (SecureTokenChecked) obj;
            return Intrinsics.areEqual(this.date, secureTokenChecked.date) && Intrinsics.areEqual(this.expire, secureTokenChecked.expire) && Intrinsics.areEqual(this.success, secureTokenChecked.success) && Intrinsics.areEqual(this.userId, secureTokenChecked.userId);
        }
        return false;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final Integer getExpire() {
        return this.expire;
    }

    @Nullable
    public final Integer getSuccess() {
        return this.success;
    }

    @Nullable
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        Integer num = this.date;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.expire;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.success;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        UserId userId = this.userId;
        return hashCode3 + (userId != null ? userId.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.date;
        Integer num2 = this.expire;
        Integer num3 = this.success;
        UserId userId = this.userId;
        return "SecureTokenChecked(date=" + num + ", expire=" + num2 + ", success=" + num3 + ", userId=" + userId + ")";
    }

    public /* synthetic */ SecureTokenChecked(Integer num, Integer num2, Integer num3, UserId userId, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3, (i9 & 8) != 0 ? null : userId);
    }
}
