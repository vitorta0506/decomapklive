package com.vk.sdk.api.photos.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\"\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0012J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\rHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0007HÆ\u0003J\t\u0010)\u001a\u00020\tHÆ\u0003J\t\u0010*\u001a\u00020\u000bHÆ\u0003J\t\u0010+\u001a\u00020\rHÆ\u0003J\t\u0010,\u001a\u00020\rHÆ\u0003J\t\u0010-\u001a\u00020\rHÆ\u0003Jy\u0010.\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\r2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010/\u001a\u0002002\b\u00101\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00102\u001a\u00020\u0003HÖ\u0001J\t\u00103\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0016R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\u000e\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001fR\u0016\u0010\u000f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001fR\u0016\u0010\u0010\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001f¨\u00064"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoTag;", "", "date", "", "id", "placerId", "taggedName", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "viewed", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", x.f19108w, "", "x2", "y", "y2", "description", "(IIILjava/lang/String;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/base/dto/BaseBoolInt;FFFFLjava/lang/String;)V", "getDate", "()I", "getDescription", "()Ljava/lang/String;", "getId", "getPlacerId", "getTaggedName", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "getViewed", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getX", "()F", "getX2", "getY", "getY2", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosPhotoTag {
    @SerializedName("date")
    private final int date;
    @SerializedName("description")
    @Nullable
    private final String description;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35998id;
    @SerializedName("placer_id")
    private final int placerId;
    @SerializedName("tagged_name")
    @NotNull
    private final String taggedName;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;
    @SerializedName("viewed")
    @NotNull
    private final BaseBoolInt viewed;
    @SerializedName(x.f19108w)

    /* renamed from: x  reason: collision with root package name */
    private final float f35999x;
    @SerializedName("x2")

    /* renamed from: x2  reason: collision with root package name */
    private final float f36000x2;
    @SerializedName("y")

    /* renamed from: y  reason: collision with root package name */
    private final float f36001y;
    @SerializedName("y2")

    /* renamed from: y2  reason: collision with root package name */
    private final float f36002y2;

    public PhotosPhotoTag(int i9, int i10, int i11, @NotNull String taggedName, @NotNull UserId userId, @NotNull BaseBoolInt viewed, float f10, float f11, float f12, float f13, @Nullable String str) {
        Intrinsics.checkNotNullParameter(taggedName, "taggedName");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(viewed, "viewed");
        this.date = i9;
        this.f35998id = i10;
        this.placerId = i11;
        this.taggedName = taggedName;
        this.userId = userId;
        this.viewed = viewed;
        this.f35999x = f10;
        this.f36000x2 = f11;
        this.f36001y = f12;
        this.f36002y2 = f13;
        this.description = str;
    }

    public final int component1() {
        return this.date;
    }

    public final float component10() {
        return this.f36002y2;
    }

    @Nullable
    public final String component11() {
        return this.description;
    }

    public final int component2() {
        return this.f35998id;
    }

    public final int component3() {
        return this.placerId;
    }

    @NotNull
    public final String component4() {
        return this.taggedName;
    }

    @NotNull
    public final UserId component5() {
        return this.userId;
    }

    @NotNull
    public final BaseBoolInt component6() {
        return this.viewed;
    }

    public final float component7() {
        return this.f35999x;
    }

    public final float component8() {
        return this.f36000x2;
    }

    public final float component9() {
        return this.f36001y;
    }

    @NotNull
    public final PhotosPhotoTag copy(int i9, int i10, int i11, @NotNull String taggedName, @NotNull UserId userId, @NotNull BaseBoolInt viewed, float f10, float f11, float f12, float f13, @Nullable String str) {
        Intrinsics.checkNotNullParameter(taggedName, "taggedName");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(viewed, "viewed");
        return new PhotosPhotoTag(i9, i10, i11, taggedName, userId, viewed, f10, f11, f12, f13, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosPhotoTag) {
            PhotosPhotoTag photosPhotoTag = (PhotosPhotoTag) obj;
            return this.date == photosPhotoTag.date && this.f35998id == photosPhotoTag.f35998id && this.placerId == photosPhotoTag.placerId && Intrinsics.areEqual(this.taggedName, photosPhotoTag.taggedName) && Intrinsics.areEqual(this.userId, photosPhotoTag.userId) && this.viewed == photosPhotoTag.viewed && Intrinsics.areEqual((Object) Float.valueOf(this.f35999x), (Object) Float.valueOf(photosPhotoTag.f35999x)) && Intrinsics.areEqual((Object) Float.valueOf(this.f36000x2), (Object) Float.valueOf(photosPhotoTag.f36000x2)) && Intrinsics.areEqual((Object) Float.valueOf(this.f36001y), (Object) Float.valueOf(photosPhotoTag.f36001y)) && Intrinsics.areEqual((Object) Float.valueOf(this.f36002y2), (Object) Float.valueOf(photosPhotoTag.f36002y2)) && Intrinsics.areEqual(this.description, photosPhotoTag.description);
        }
        return false;
    }

    public final int getDate() {
        return this.date;
    }

    @Nullable
    public final String getDescription() {
        return this.description;
    }

    public final int getId() {
        return this.f35998id;
    }

    public final int getPlacerId() {
        return this.placerId;
    }

    @NotNull
    public final String getTaggedName() {
        return this.taggedName;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    @NotNull
    public final BaseBoolInt getViewed() {
        return this.viewed;
    }

    public final float getX() {
        return this.f35999x;
    }

    public final float getX2() {
        return this.f36000x2;
    }

    public final float getY() {
        return this.f36001y;
    }

    public final float getY2() {
        return this.f36002y2;
    }

    public int hashCode() {
        int hashCode = ((((((((((((((((((this.date * 31) + this.f35998id) * 31) + this.placerId) * 31) + this.taggedName.hashCode()) * 31) + this.userId.hashCode()) * 31) + this.viewed.hashCode()) * 31) + Float.floatToIntBits(this.f35999x)) * 31) + Float.floatToIntBits(this.f36000x2)) * 31) + Float.floatToIntBits(this.f36001y)) * 31) + Float.floatToIntBits(this.f36002y2)) * 31;
        String str = this.description;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.date;
        int i10 = this.f35998id;
        int i11 = this.placerId;
        String str = this.taggedName;
        UserId userId = this.userId;
        BaseBoolInt baseBoolInt = this.viewed;
        float f10 = this.f35999x;
        float f11 = this.f36000x2;
        float f12 = this.f36001y;
        float f13 = this.f36002y2;
        String str2 = this.description;
        return "PhotosPhotoTag(date=" + i9 + ", id=" + i10 + ", placerId=" + i11 + ", taggedName=" + str + ", userId=" + userId + ", viewed=" + baseBoolInt + ", x=" + f10 + ", x2=" + f11 + ", y=" + f12 + ", y2=" + f13 + ", description=" + str2 + ")";
    }

    public /* synthetic */ PhotosPhotoTag(int i9, int i10, int i11, String str, UserId userId, BaseBoolInt baseBoolInt, float f10, float f11, float f12, float f13, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, str, userId, baseBoolInt, f10, f11, f12, f13, (i12 & 1024) != 0 ? null : str2);
    }
}
