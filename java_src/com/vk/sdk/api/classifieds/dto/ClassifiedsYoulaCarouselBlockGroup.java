package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003JE\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0016\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000e¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaCarouselBlockGroup;", "", "id", "Lcom/vk/dto/common/id/UserId;", "name", "", "photo50", "photo100", "photo200", "url", "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Lcom/vk/dto/common/id/UserId;", "getName", "()Ljava/lang/String;", "getPhoto100", "getPhoto200", "getPhoto50", "getUrl", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaCarouselBlockGroup {
    @SerializedName("id")
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final UserId f35753id;
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("photo_100")
    @NotNull
    private final String photo100;
    @SerializedName("photo_200")
    @NotNull
    private final String photo200;
    @SerializedName("photo_50")
    @NotNull
    private final String photo50;
    @SerializedName("url")
    @NotNull
    private final String url;

    public ClassifiedsYoulaCarouselBlockGroup(@NotNull UserId id2, @NotNull String name, @NotNull String photo50, @NotNull String photo100, @NotNull String photo200, @NotNull String url) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(photo50, "photo50");
        Intrinsics.checkNotNullParameter(photo100, "photo100");
        Intrinsics.checkNotNullParameter(photo200, "photo200");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f35753id = id2;
        this.name = name;
        this.photo50 = photo50;
        this.photo100 = photo100;
        this.photo200 = photo200;
        this.url = url;
    }

    public static /* synthetic */ ClassifiedsYoulaCarouselBlockGroup copy$default(ClassifiedsYoulaCarouselBlockGroup classifiedsYoulaCarouselBlockGroup, UserId userId, String str, String str2, String str3, String str4, String str5, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = classifiedsYoulaCarouselBlockGroup.f35753id;
        }
        if ((i9 & 2) != 0) {
            str = classifiedsYoulaCarouselBlockGroup.name;
        }
        String str6 = str;
        if ((i9 & 4) != 0) {
            str2 = classifiedsYoulaCarouselBlockGroup.photo50;
        }
        String str7 = str2;
        if ((i9 & 8) != 0) {
            str3 = classifiedsYoulaCarouselBlockGroup.photo100;
        }
        String str8 = str3;
        if ((i9 & 16) != 0) {
            str4 = classifiedsYoulaCarouselBlockGroup.photo200;
        }
        String str9 = str4;
        if ((i9 & 32) != 0) {
            str5 = classifiedsYoulaCarouselBlockGroup.url;
        }
        return classifiedsYoulaCarouselBlockGroup.copy(userId, str6, str7, str8, str9, str5);
    }

    @NotNull
    public final UserId component1() {
        return this.f35753id;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final String component3() {
        return this.photo50;
    }

    @NotNull
    public final String component4() {
        return this.photo100;
    }

    @NotNull
    public final String component5() {
        return this.photo200;
    }

    @NotNull
    public final String component6() {
        return this.url;
    }

    @NotNull
    public final ClassifiedsYoulaCarouselBlockGroup copy(@NotNull UserId id2, @NotNull String name, @NotNull String photo50, @NotNull String photo100, @NotNull String photo200, @NotNull String url) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(photo50, "photo50");
        Intrinsics.checkNotNullParameter(photo100, "photo100");
        Intrinsics.checkNotNullParameter(photo200, "photo200");
        Intrinsics.checkNotNullParameter(url, "url");
        return new ClassifiedsYoulaCarouselBlockGroup(id2, name, photo50, photo100, photo200, url);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaCarouselBlockGroup) {
            ClassifiedsYoulaCarouselBlockGroup classifiedsYoulaCarouselBlockGroup = (ClassifiedsYoulaCarouselBlockGroup) obj;
            return Intrinsics.areEqual(this.f35753id, classifiedsYoulaCarouselBlockGroup.f35753id) && Intrinsics.areEqual(this.name, classifiedsYoulaCarouselBlockGroup.name) && Intrinsics.areEqual(this.photo50, classifiedsYoulaCarouselBlockGroup.photo50) && Intrinsics.areEqual(this.photo100, classifiedsYoulaCarouselBlockGroup.photo100) && Intrinsics.areEqual(this.photo200, classifiedsYoulaCarouselBlockGroup.photo200) && Intrinsics.areEqual(this.url, classifiedsYoulaCarouselBlockGroup.url);
        }
        return false;
    }

    @NotNull
    public final UserId getId() {
        return this.f35753id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final String getPhoto100() {
        return this.photo100;
    }

    @NotNull
    public final String getPhoto200() {
        return this.photo200;
    }

    @NotNull
    public final String getPhoto50() {
        return this.photo50;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (((((((((this.f35753id.hashCode() * 31) + this.name.hashCode()) * 31) + this.photo50.hashCode()) * 31) + this.photo100.hashCode()) * 31) + this.photo200.hashCode()) * 31) + this.url.hashCode();
    }

    @NotNull
    public String toString() {
        UserId userId = this.f35753id;
        String str = this.name;
        String str2 = this.photo50;
        String str3 = this.photo100;
        String str4 = this.photo200;
        String str5 = this.url;
        return "ClassifiedsYoulaCarouselBlockGroup(id=" + userId + ", name=" + str + ", photo50=" + str2 + ", photo100=" + str3 + ", photo200=" + str4 + ", url=" + str5 + ")";
    }
}
