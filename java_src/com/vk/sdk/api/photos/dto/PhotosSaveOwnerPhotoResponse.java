package com.vk.sdk.api.photos.dto;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0011JR\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\bHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u001a\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u0011¨\u0006!"}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosSaveOwnerPhotoResponse;", "", "photoHash", "", "photoSrc", "photoSrcBig", "photoSrcSmall", "saved", "", ShareConstants.RESULT_POST_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getPhotoHash", "()Ljava/lang/String;", "getPhotoSrc", "getPhotoSrcBig", "getPhotoSrcSmall", "getPostId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSaved", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/photos/dto/PhotosSaveOwnerPhotoResponse;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PhotosSaveOwnerPhotoResponse {
    @SerializedName("photo_hash")
    @NotNull
    private final String photoHash;
    @SerializedName("photo_src")
    @NotNull
    private final String photoSrc;
    @SerializedName("photo_src_big")
    @Nullable
    private final String photoSrcBig;
    @SerializedName("photo_src_small")
    @Nullable
    private final String photoSrcSmall;
    @SerializedName(ShareConstants.WEB_DIALOG_RESULT_PARAM_POST_ID)
    @Nullable
    private final Integer postId;
    @SerializedName("saved")
    @Nullable
    private final Integer saved;

    public PhotosSaveOwnerPhotoResponse(@NotNull String photoHash, @NotNull String photoSrc, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(photoHash, "photoHash");
        Intrinsics.checkNotNullParameter(photoSrc, "photoSrc");
        this.photoHash = photoHash;
        this.photoSrc = photoSrc;
        this.photoSrcBig = str;
        this.photoSrcSmall = str2;
        this.saved = num;
        this.postId = num2;
    }

    public static /* synthetic */ PhotosSaveOwnerPhotoResponse copy$default(PhotosSaveOwnerPhotoResponse photosSaveOwnerPhotoResponse, String str, String str2, String str3, String str4, Integer num, Integer num2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = photosSaveOwnerPhotoResponse.photoHash;
        }
        if ((i9 & 2) != 0) {
            str2 = photosSaveOwnerPhotoResponse.photoSrc;
        }
        String str5 = str2;
        if ((i9 & 4) != 0) {
            str3 = photosSaveOwnerPhotoResponse.photoSrcBig;
        }
        String str6 = str3;
        if ((i9 & 8) != 0) {
            str4 = photosSaveOwnerPhotoResponse.photoSrcSmall;
        }
        String str7 = str4;
        if ((i9 & 16) != 0) {
            num = photosSaveOwnerPhotoResponse.saved;
        }
        Integer num3 = num;
        if ((i9 & 32) != 0) {
            num2 = photosSaveOwnerPhotoResponse.postId;
        }
        return photosSaveOwnerPhotoResponse.copy(str, str5, str6, str7, num3, num2);
    }

    @NotNull
    public final String component1() {
        return this.photoHash;
    }

    @NotNull
    public final String component2() {
        return this.photoSrc;
    }

    @Nullable
    public final String component3() {
        return this.photoSrcBig;
    }

    @Nullable
    public final String component4() {
        return this.photoSrcSmall;
    }

    @Nullable
    public final Integer component5() {
        return this.saved;
    }

    @Nullable
    public final Integer component6() {
        return this.postId;
    }

    @NotNull
    public final PhotosSaveOwnerPhotoResponse copy(@NotNull String photoHash, @NotNull String photoSrc, @Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(photoHash, "photoHash");
        Intrinsics.checkNotNullParameter(photoSrc, "photoSrc");
        return new PhotosSaveOwnerPhotoResponse(photoHash, photoSrc, str, str2, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhotosSaveOwnerPhotoResponse) {
            PhotosSaveOwnerPhotoResponse photosSaveOwnerPhotoResponse = (PhotosSaveOwnerPhotoResponse) obj;
            return Intrinsics.areEqual(this.photoHash, photosSaveOwnerPhotoResponse.photoHash) && Intrinsics.areEqual(this.photoSrc, photosSaveOwnerPhotoResponse.photoSrc) && Intrinsics.areEqual(this.photoSrcBig, photosSaveOwnerPhotoResponse.photoSrcBig) && Intrinsics.areEqual(this.photoSrcSmall, photosSaveOwnerPhotoResponse.photoSrcSmall) && Intrinsics.areEqual(this.saved, photosSaveOwnerPhotoResponse.saved) && Intrinsics.areEqual(this.postId, photosSaveOwnerPhotoResponse.postId);
        }
        return false;
    }

    @NotNull
    public final String getPhotoHash() {
        return this.photoHash;
    }

    @NotNull
    public final String getPhotoSrc() {
        return this.photoSrc;
    }

    @Nullable
    public final String getPhotoSrcBig() {
        return this.photoSrcBig;
    }

    @Nullable
    public final String getPhotoSrcSmall() {
        return this.photoSrcSmall;
    }

    @Nullable
    public final Integer getPostId() {
        return this.postId;
    }

    @Nullable
    public final Integer getSaved() {
        return this.saved;
    }

    public int hashCode() {
        int hashCode = ((this.photoHash.hashCode() * 31) + this.photoSrc.hashCode()) * 31;
        String str = this.photoSrcBig;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.photoSrcSmall;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.saved;
        int hashCode4 = (hashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.postId;
        return hashCode4 + (num2 != null ? num2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.photoHash;
        String str2 = this.photoSrc;
        String str3 = this.photoSrcBig;
        String str4 = this.photoSrcSmall;
        Integer num = this.saved;
        Integer num2 = this.postId;
        return "PhotosSaveOwnerPhotoResponse(photoHash=" + str + ", photoSrc=" + str2 + ", photoSrcBig=" + str3 + ", photoSrcSmall=" + str4 + ", saved=" + num + ", postId=" + num2 + ")";
    }

    public /* synthetic */ PhotosSaveOwnerPhotoResponse(String str, String str2, String str3, String str4, Integer num, Integer num2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? null : str4, (i9 & 16) != 0 ? null : num, (i9 & 32) != 0 ? null : num2);
    }
}
