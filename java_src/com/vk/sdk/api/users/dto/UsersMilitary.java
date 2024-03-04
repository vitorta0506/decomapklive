package com.vk.sdk.api.users.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJP\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\fR\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0014\u0010\u000e¨\u0006\""}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersMilitary;", "", "countryId", "", "unit", "", "unitId", "from", "id", "until", "(ILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getCountryId", "()I", "getFrom", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getId", "getUnit", "()Ljava/lang/String;", "getUnitId", "getUntil", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(ILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/users/dto/UsersMilitary;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersMilitary {
    @SerializedName("country_id")
    private final int countryId;
    @SerializedName("from")
    @Nullable
    private final Integer from;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f36101id;
    @SerializedName("unit")
    @NotNull
    private final String unit;
    @SerializedName("unit_id")
    private final int unitId;
    @SerializedName("until")
    @Nullable
    private final Integer until;

    public UsersMilitary(int i9, @NotNull String unit, int i10, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.countryId = i9;
        this.unit = unit;
        this.unitId = i10;
        this.from = num;
        this.f36101id = num2;
        this.until = num3;
    }

    public static /* synthetic */ UsersMilitary copy$default(UsersMilitary usersMilitary, int i9, String str, int i10, Integer num, Integer num2, Integer num3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = usersMilitary.countryId;
        }
        if ((i11 & 2) != 0) {
            str = usersMilitary.unit;
        }
        String str2 = str;
        if ((i11 & 4) != 0) {
            i10 = usersMilitary.unitId;
        }
        int i12 = i10;
        if ((i11 & 8) != 0) {
            num = usersMilitary.from;
        }
        Integer num4 = num;
        if ((i11 & 16) != 0) {
            num2 = usersMilitary.f36101id;
        }
        Integer num5 = num2;
        if ((i11 & 32) != 0) {
            num3 = usersMilitary.until;
        }
        return usersMilitary.copy(i9, str2, i12, num4, num5, num3);
    }

    public final int component1() {
        return this.countryId;
    }

    @NotNull
    public final String component2() {
        return this.unit;
    }

    public final int component3() {
        return this.unitId;
    }

    @Nullable
    public final Integer component4() {
        return this.from;
    }

    @Nullable
    public final Integer component5() {
        return this.f36101id;
    }

    @Nullable
    public final Integer component6() {
        return this.until;
    }

    @NotNull
    public final UsersMilitary copy(int i9, @NotNull String unit, int i10, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return new UsersMilitary(i9, unit, i10, num, num2, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersMilitary) {
            UsersMilitary usersMilitary = (UsersMilitary) obj;
            return this.countryId == usersMilitary.countryId && Intrinsics.areEqual(this.unit, usersMilitary.unit) && this.unitId == usersMilitary.unitId && Intrinsics.areEqual(this.from, usersMilitary.from) && Intrinsics.areEqual(this.f36101id, usersMilitary.f36101id) && Intrinsics.areEqual(this.until, usersMilitary.until);
        }
        return false;
    }

    public final int getCountryId() {
        return this.countryId;
    }

    @Nullable
    public final Integer getFrom() {
        return this.from;
    }

    @Nullable
    public final Integer getId() {
        return this.f36101id;
    }

    @NotNull
    public final String getUnit() {
        return this.unit;
    }

    public final int getUnitId() {
        return this.unitId;
    }

    @Nullable
    public final Integer getUntil() {
        return this.until;
    }

    public int hashCode() {
        int hashCode = ((((this.countryId * 31) + this.unit.hashCode()) * 31) + this.unitId) * 31;
        Integer num = this.from;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f36101id;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.until;
        return hashCode3 + (num3 != null ? num3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.countryId;
        String str = this.unit;
        int i10 = this.unitId;
        Integer num = this.from;
        Integer num2 = this.f36101id;
        Integer num3 = this.until;
        return "UsersMilitary(countryId=" + i9 + ", unit=" + str + ", unitId=" + i10 + ", from=" + num + ", id=" + num2 + ", until=" + num3 + ")";
    }

    public /* synthetic */ UsersMilitary(int i9, String str, int i10, Integer num, Integer num2, Integer num3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, i10, (i11 & 8) != 0 ? null : num, (i11 & 16) != 0 ? null : num2, (i11 & 32) != 0 ? null : num3);
    }
}
