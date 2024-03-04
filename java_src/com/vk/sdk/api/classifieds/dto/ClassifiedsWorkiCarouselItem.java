package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseLinkButton;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u000bHÆ\u0003JZ\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\tHÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013¨\u0006&"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsWorkiCarouselItem;", "", "id", "", "company", "profession", "salary", "distance", "categoryId", "", "actionButton", "Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)V", "getActionButton", "()Lcom/vk/sdk/api/base/dto/BaseLinkButton;", "getCategoryId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCompany", "()Ljava/lang/String;", "getDistance", "getId", "getProfession", "getSalary", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseLinkButton;)Lcom/vk/sdk/api/classifieds/dto/ClassifiedsWorkiCarouselItem;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsWorkiCarouselItem {
    @SerializedName("action_button")
    @Nullable
    private final BaseLinkButton actionButton;
    @SerializedName("category_id")
    @Nullable
    private final Integer categoryId;
    @SerializedName("company")
    @NotNull
    private final String company;
    @SerializedName("distance")
    @Nullable
    private final String distance;
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f35752id;
    @SerializedName("profession")
    @NotNull
    private final String profession;
    @SerializedName("salary")
    @NotNull
    private final String salary;

    public ClassifiedsWorkiCarouselItem(@NotNull String id2, @NotNull String company, @NotNull String profession, @NotNull String salary, @Nullable String str, @Nullable Integer num, @Nullable BaseLinkButton baseLinkButton) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(company, "company");
        Intrinsics.checkNotNullParameter(profession, "profession");
        Intrinsics.checkNotNullParameter(salary, "salary");
        this.f35752id = id2;
        this.company = company;
        this.profession = profession;
        this.salary = salary;
        this.distance = str;
        this.categoryId = num;
        this.actionButton = baseLinkButton;
    }

    public static /* synthetic */ ClassifiedsWorkiCarouselItem copy$default(ClassifiedsWorkiCarouselItem classifiedsWorkiCarouselItem, String str, String str2, String str3, String str4, String str5, Integer num, BaseLinkButton baseLinkButton, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = classifiedsWorkiCarouselItem.f35752id;
        }
        if ((i9 & 2) != 0) {
            str2 = classifiedsWorkiCarouselItem.company;
        }
        String str6 = str2;
        if ((i9 & 4) != 0) {
            str3 = classifiedsWorkiCarouselItem.profession;
        }
        String str7 = str3;
        if ((i9 & 8) != 0) {
            str4 = classifiedsWorkiCarouselItem.salary;
        }
        String str8 = str4;
        if ((i9 & 16) != 0) {
            str5 = classifiedsWorkiCarouselItem.distance;
        }
        String str9 = str5;
        if ((i9 & 32) != 0) {
            num = classifiedsWorkiCarouselItem.categoryId;
        }
        Integer num2 = num;
        if ((i9 & 64) != 0) {
            baseLinkButton = classifiedsWorkiCarouselItem.actionButton;
        }
        return classifiedsWorkiCarouselItem.copy(str, str6, str7, str8, str9, num2, baseLinkButton);
    }

    @NotNull
    public final String component1() {
        return this.f35752id;
    }

    @NotNull
    public final String component2() {
        return this.company;
    }

    @NotNull
    public final String component3() {
        return this.profession;
    }

    @NotNull
    public final String component4() {
        return this.salary;
    }

    @Nullable
    public final String component5() {
        return this.distance;
    }

    @Nullable
    public final Integer component6() {
        return this.categoryId;
    }

    @Nullable
    public final BaseLinkButton component7() {
        return this.actionButton;
    }

    @NotNull
    public final ClassifiedsWorkiCarouselItem copy(@NotNull String id2, @NotNull String company, @NotNull String profession, @NotNull String salary, @Nullable String str, @Nullable Integer num, @Nullable BaseLinkButton baseLinkButton) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(company, "company");
        Intrinsics.checkNotNullParameter(profession, "profession");
        Intrinsics.checkNotNullParameter(salary, "salary");
        return new ClassifiedsWorkiCarouselItem(id2, company, profession, salary, str, num, baseLinkButton);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsWorkiCarouselItem) {
            ClassifiedsWorkiCarouselItem classifiedsWorkiCarouselItem = (ClassifiedsWorkiCarouselItem) obj;
            return Intrinsics.areEqual(this.f35752id, classifiedsWorkiCarouselItem.f35752id) && Intrinsics.areEqual(this.company, classifiedsWorkiCarouselItem.company) && Intrinsics.areEqual(this.profession, classifiedsWorkiCarouselItem.profession) && Intrinsics.areEqual(this.salary, classifiedsWorkiCarouselItem.salary) && Intrinsics.areEqual(this.distance, classifiedsWorkiCarouselItem.distance) && Intrinsics.areEqual(this.categoryId, classifiedsWorkiCarouselItem.categoryId) && Intrinsics.areEqual(this.actionButton, classifiedsWorkiCarouselItem.actionButton);
        }
        return false;
    }

    @Nullable
    public final BaseLinkButton getActionButton() {
        return this.actionButton;
    }

    @Nullable
    public final Integer getCategoryId() {
        return this.categoryId;
    }

    @NotNull
    public final String getCompany() {
        return this.company;
    }

    @Nullable
    public final String getDistance() {
        return this.distance;
    }

    @NotNull
    public final String getId() {
        return this.f35752id;
    }

    @NotNull
    public final String getProfession() {
        return this.profession;
    }

    @NotNull
    public final String getSalary() {
        return this.salary;
    }

    public int hashCode() {
        int hashCode = ((((((this.f35752id.hashCode() * 31) + this.company.hashCode()) * 31) + this.profession.hashCode()) * 31) + this.salary.hashCode()) * 31;
        String str = this.distance;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.categoryId;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        BaseLinkButton baseLinkButton = this.actionButton;
        return hashCode3 + (baseLinkButton != null ? baseLinkButton.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.f35752id;
        String str2 = this.company;
        String str3 = this.profession;
        String str4 = this.salary;
        String str5 = this.distance;
        Integer num = this.categoryId;
        BaseLinkButton baseLinkButton = this.actionButton;
        return "ClassifiedsWorkiCarouselItem(id=" + str + ", company=" + str2 + ", profession=" + str3 + ", salary=" + str4 + ", distance=" + str5 + ", categoryId=" + num + ", actionButton=" + baseLinkButton + ")";
    }

    public /* synthetic */ ClassifiedsWorkiCarouselItem(String str, String str2, String str3, String str4, String str5, Integer num, BaseLinkButton baseLinkButton, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i9 & 16) != 0 ? null : str5, (i9 & 32) != 0 ? null : num, (i9 & 64) != 0 ? null : baseLinkButton);
    }
}
