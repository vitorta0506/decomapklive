package com.vk.sdk.api.users.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bw\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0080\u0001\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0016\u0010\u0010R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0017\u0010\u0010R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0018\u0010\u0010R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u001a\u0010\u0010R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u001b\u0010\u0010¨\u0006,"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersPersonal;", "", "alcohol", "", "inspiredBy", "", "langs", "", "lifeMain", "peopleMain", "political", "religion", "religionId", "smoking", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getAlcohol", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getInspiredBy", "()Ljava/lang/String;", "getLangs", "()Ljava/util/List;", "getLifeMain", "getPeopleMain", "getPolitical", "getReligion", "getReligionId", "getSmoking", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/users/dto/UsersPersonal;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UsersPersonal {
    @SerializedName("alcohol")
    @Nullable
    private final Integer alcohol;
    @SerializedName("inspired_by")
    @Nullable
    private final String inspiredBy;
    @SerializedName("langs")
    @Nullable
    private final List<String> langs;
    @SerializedName("life_main")
    @Nullable
    private final Integer lifeMain;
    @SerializedName("people_main")
    @Nullable
    private final Integer peopleMain;
    @SerializedName("political")
    @Nullable
    private final Integer political;
    @SerializedName("religion")
    @Nullable
    private final String religion;
    @SerializedName("religion_id")
    @Nullable
    private final Integer religionId;
    @SerializedName("smoking")
    @Nullable
    private final Integer smoking;

    public UsersPersonal() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public UsersPersonal(@Nullable Integer num, @Nullable String str, @Nullable List<String> list, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str2, @Nullable Integer num5, @Nullable Integer num6) {
        this.alcohol = num;
        this.inspiredBy = str;
        this.langs = list;
        this.lifeMain = num2;
        this.peopleMain = num3;
        this.political = num4;
        this.religion = str2;
        this.religionId = num5;
        this.smoking = num6;
    }

    @Nullable
    public final Integer component1() {
        return this.alcohol;
    }

    @Nullable
    public final String component2() {
        return this.inspiredBy;
    }

    @Nullable
    public final List<String> component3() {
        return this.langs;
    }

    @Nullable
    public final Integer component4() {
        return this.lifeMain;
    }

    @Nullable
    public final Integer component5() {
        return this.peopleMain;
    }

    @Nullable
    public final Integer component6() {
        return this.political;
    }

    @Nullable
    public final String component7() {
        return this.religion;
    }

    @Nullable
    public final Integer component8() {
        return this.religionId;
    }

    @Nullable
    public final Integer component9() {
        return this.smoking;
    }

    @NotNull
    public final UsersPersonal copy(@Nullable Integer num, @Nullable String str, @Nullable List<String> list, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str2, @Nullable Integer num5, @Nullable Integer num6) {
        return new UsersPersonal(num, str, list, num2, num3, num4, str2, num5, num6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UsersPersonal) {
            UsersPersonal usersPersonal = (UsersPersonal) obj;
            return Intrinsics.areEqual(this.alcohol, usersPersonal.alcohol) && Intrinsics.areEqual(this.inspiredBy, usersPersonal.inspiredBy) && Intrinsics.areEqual(this.langs, usersPersonal.langs) && Intrinsics.areEqual(this.lifeMain, usersPersonal.lifeMain) && Intrinsics.areEqual(this.peopleMain, usersPersonal.peopleMain) && Intrinsics.areEqual(this.political, usersPersonal.political) && Intrinsics.areEqual(this.religion, usersPersonal.religion) && Intrinsics.areEqual(this.religionId, usersPersonal.religionId) && Intrinsics.areEqual(this.smoking, usersPersonal.smoking);
        }
        return false;
    }

    @Nullable
    public final Integer getAlcohol() {
        return this.alcohol;
    }

    @Nullable
    public final String getInspiredBy() {
        return this.inspiredBy;
    }

    @Nullable
    public final List<String> getLangs() {
        return this.langs;
    }

    @Nullable
    public final Integer getLifeMain() {
        return this.lifeMain;
    }

    @Nullable
    public final Integer getPeopleMain() {
        return this.peopleMain;
    }

    @Nullable
    public final Integer getPolitical() {
        return this.political;
    }

    @Nullable
    public final String getReligion() {
        return this.religion;
    }

    @Nullable
    public final Integer getReligionId() {
        return this.religionId;
    }

    @Nullable
    public final Integer getSmoking() {
        return this.smoking;
    }

    public int hashCode() {
        Integer num = this.alcohol;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.inspiredBy;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<String> list = this.langs;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num2 = this.lifeMain;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.peopleMain;
        int hashCode5 = (hashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.political;
        int hashCode6 = (hashCode5 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str2 = this.religion;
        int hashCode7 = (hashCode6 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num5 = this.religionId;
        int hashCode8 = (hashCode7 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.smoking;
        return hashCode8 + (num6 != null ? num6.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.alcohol;
        String str = this.inspiredBy;
        List<String> list = this.langs;
        Integer num2 = this.lifeMain;
        Integer num3 = this.peopleMain;
        Integer num4 = this.political;
        String str2 = this.religion;
        Integer num5 = this.religionId;
        Integer num6 = this.smoking;
        return "UsersPersonal(alcohol=" + num + ", inspiredBy=" + str + ", langs=" + list + ", lifeMain=" + num2 + ", peopleMain=" + num3 + ", political=" + num4 + ", religion=" + str2 + ", religionId=" + num5 + ", smoking=" + num6 + ")";
    }

    public /* synthetic */ UsersPersonal(Integer num, String str, List list, Integer num2, Integer num3, Integer num4, String str2, Integer num5, Integer num6, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str, (i9 & 4) != 0 ? null : list, (i9 & 8) != 0 ? null : num2, (i9 & 16) != 0 ? null : num3, (i9 & 32) != 0 ? null : num4, (i9 & 64) != 0 ? null : str2, (i9 & 128) != 0 ? null : num5, (i9 & 256) == 0 ? num6 : null);
    }
}
