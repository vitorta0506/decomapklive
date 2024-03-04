package com.vk.sdk.api.utils.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ2\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\r\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/utils/dto/UtilsStatsSexAge;", "", "ageRange", "", "female", "", "male", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getAgeRange", "()Ljava/lang/String;", "getFemale", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMale", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/utils/dto/UtilsStatsSexAge;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UtilsStatsSexAge {
    @SerializedName("age_range")
    @Nullable
    private final String ageRange;
    @SerializedName("female")
    @Nullable
    private final Integer female;
    @SerializedName("male")
    @Nullable
    private final Integer male;

    public UtilsStatsSexAge() {
        this(null, null, null, 7, null);
    }

    public UtilsStatsSexAge(@Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        this.ageRange = str;
        this.female = num;
        this.male = num2;
    }

    public static /* synthetic */ UtilsStatsSexAge copy$default(UtilsStatsSexAge utilsStatsSexAge, String str, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = utilsStatsSexAge.ageRange;
        }
        if ((i9 & 2) != 0) {
            num = utilsStatsSexAge.female;
        }
        if ((i9 & 4) != 0) {
            num2 = utilsStatsSexAge.male;
        }
        return utilsStatsSexAge.copy(str, num, num2);
    }

    @Nullable
    public final String component1() {
        return this.ageRange;
    }

    @Nullable
    public final Integer component2() {
        return this.female;
    }

    @Nullable
    public final Integer component3() {
        return this.male;
    }

    @NotNull
    public final UtilsStatsSexAge copy(@Nullable String str, @Nullable Integer num, @Nullable Integer num2) {
        return new UtilsStatsSexAge(str, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UtilsStatsSexAge) {
            UtilsStatsSexAge utilsStatsSexAge = (UtilsStatsSexAge) obj;
            return Intrinsics.areEqual(this.ageRange, utilsStatsSexAge.ageRange) && Intrinsics.areEqual(this.female, utilsStatsSexAge.female) && Intrinsics.areEqual(this.male, utilsStatsSexAge.male);
        }
        return false;
    }

    @Nullable
    public final String getAgeRange() {
        return this.ageRange;
    }

    @Nullable
    public final Integer getFemale() {
        return this.female;
    }

    @Nullable
    public final Integer getMale() {
        return this.male;
    }

    public int hashCode() {
        String str = this.ageRange;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.female;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.male;
        return hashCode2 + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.ageRange;
        Integer num = this.female;
        Integer num2 = this.male;
        return "UtilsStatsSexAge(ageRange=" + str + ", female=" + num + ", male=" + num2 + ")";
    }

    public /* synthetic */ UtilsStatsSexAge(String str, Integer num, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : num2);
    }
}
