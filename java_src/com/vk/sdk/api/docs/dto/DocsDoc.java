package com.vk.sdk.api.docs.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b \n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u007f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013HÆ\u0003J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\t\u0010+\u001a\u00020\u0007HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0007HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u0091\u0001\u00102\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0013HÆ\u0001J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u00020\u0003HÖ\u0001J\t\u00107\u001a\u00020\u0007HÖ\u0001R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\t\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0018R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u001bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0018R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00138\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0016R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0018R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0016¨\u00068"}, d2 = {"Lcom/vk/sdk/api/docs/dto/DocsDoc;", "", "id", "", "ownerId", "Lcom/vk/dto/common/id/UserId;", "title", "", "size", "ext", "date", "type", "url", "preview", "Lcom/vk/sdk/api/docs/dto/DocsDocPreview;", "isLicensed", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "accessKey", "tags", "", "(ILcom/vk/dto/common/id/UserId;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lcom/vk/sdk/api/docs/dto/DocsDocPreview;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/util/List;)V", "getAccessKey", "()Ljava/lang/String;", "getDate", "()I", "getExt", "getId", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPreview", "()Lcom/vk/sdk/api/docs/dto/DocsDocPreview;", "getSize", "getTags", "()Ljava/util/List;", "getTitle", "getType", "getUrl", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DocsDoc {
    @SerializedName("access_key")
    @Nullable
    private final String accessKey;
    @SerializedName("date")
    private final int date;
    @SerializedName("ext")
    @NotNull
    private final String ext;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35781id;
    @SerializedName("is_licensed")
    @Nullable
    private final BaseBoolInt isLicensed;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("preview")
    @Nullable
    private final DocsDocPreview preview;
    @SerializedName("size")
    private final int size;
    @SerializedName("tags")
    @Nullable
    private final List<String> tags;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("type")
    private final int type;
    @SerializedName("url")
    @Nullable
    private final String url;

    public DocsDoc(int i9, @NotNull UserId ownerId, @NotNull String title, int i10, @NotNull String ext, int i11, int i12, @Nullable String str, @Nullable DocsDocPreview docsDocPreview, @Nullable BaseBoolInt baseBoolInt, @Nullable String str2, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(ext, "ext");
        this.f35781id = i9;
        this.ownerId = ownerId;
        this.title = title;
        this.size = i10;
        this.ext = ext;
        this.date = i11;
        this.type = i12;
        this.url = str;
        this.preview = docsDocPreview;
        this.isLicensed = baseBoolInt;
        this.accessKey = str2;
        this.tags = list;
    }

    public final int component1() {
        return this.f35781id;
    }

    @Nullable
    public final BaseBoolInt component10() {
        return this.isLicensed;
    }

    @Nullable
    public final String component11() {
        return this.accessKey;
    }

    @Nullable
    public final List<String> component12() {
        return this.tags;
    }

    @NotNull
    public final UserId component2() {
        return this.ownerId;
    }

    @NotNull
    public final String component3() {
        return this.title;
    }

    public final int component4() {
        return this.size;
    }

    @NotNull
    public final String component5() {
        return this.ext;
    }

    public final int component6() {
        return this.date;
    }

    public final int component7() {
        return this.type;
    }

    @Nullable
    public final String component8() {
        return this.url;
    }

    @Nullable
    public final DocsDocPreview component9() {
        return this.preview;
    }

    @NotNull
    public final DocsDoc copy(int i9, @NotNull UserId ownerId, @NotNull String title, int i10, @NotNull String ext, int i11, int i12, @Nullable String str, @Nullable DocsDocPreview docsDocPreview, @Nullable BaseBoolInt baseBoolInt, @Nullable String str2, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(ext, "ext");
        return new DocsDoc(i9, ownerId, title, i10, ext, i11, i12, str, docsDocPreview, baseBoolInt, str2, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocsDoc) {
            DocsDoc docsDoc = (DocsDoc) obj;
            return this.f35781id == docsDoc.f35781id && Intrinsics.areEqual(this.ownerId, docsDoc.ownerId) && Intrinsics.areEqual(this.title, docsDoc.title) && this.size == docsDoc.size && Intrinsics.areEqual(this.ext, docsDoc.ext) && this.date == docsDoc.date && this.type == docsDoc.type && Intrinsics.areEqual(this.url, docsDoc.url) && Intrinsics.areEqual(this.preview, docsDoc.preview) && this.isLicensed == docsDoc.isLicensed && Intrinsics.areEqual(this.accessKey, docsDoc.accessKey) && Intrinsics.areEqual(this.tags, docsDoc.tags);
        }
        return false;
    }

    @Nullable
    public final String getAccessKey() {
        return this.accessKey;
    }

    public final int getDate() {
        return this.date;
    }

    @NotNull
    public final String getExt() {
        return this.ext;
    }

    public final int getId() {
        return this.f35781id;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final DocsDocPreview getPreview() {
        return this.preview;
    }

    public final int getSize() {
        return this.size;
    }

    @Nullable
    public final List<String> getTags() {
        return this.tags;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int hashCode = ((((((((((((this.f35781id * 31) + this.ownerId.hashCode()) * 31) + this.title.hashCode()) * 31) + this.size) * 31) + this.ext.hashCode()) * 31) + this.date) * 31) + this.type) * 31;
        String str = this.url;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        DocsDocPreview docsDocPreview = this.preview;
        int hashCode3 = (hashCode2 + (docsDocPreview == null ? 0 : docsDocPreview.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.isLicensed;
        int hashCode4 = (hashCode3 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        String str2 = this.accessKey;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<String> list = this.tags;
        return hashCode5 + (list != null ? list.hashCode() : 0);
    }

    @Nullable
    public final BaseBoolInt isLicensed() {
        return this.isLicensed;
    }

    @NotNull
    public String toString() {
        int i9 = this.f35781id;
        UserId userId = this.ownerId;
        String str = this.title;
        int i10 = this.size;
        String str2 = this.ext;
        int i11 = this.date;
        int i12 = this.type;
        String str3 = this.url;
        DocsDocPreview docsDocPreview = this.preview;
        BaseBoolInt baseBoolInt = this.isLicensed;
        String str4 = this.accessKey;
        List<String> list = this.tags;
        return "DocsDoc(id=" + i9 + ", ownerId=" + userId + ", title=" + str + ", size=" + i10 + ", ext=" + str2 + ", date=" + i11 + ", type=" + i12 + ", url=" + str3 + ", preview=" + docsDocPreview + ", isLicensed=" + baseBoolInt + ", accessKey=" + str4 + ", tags=" + list + ")";
    }

    public /* synthetic */ DocsDoc(int i9, UserId userId, String str, int i10, String str2, int i11, int i12, String str3, DocsDocPreview docsDocPreview, BaseBoolInt baseBoolInt, String str4, List list, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, userId, str, i10, str2, i11, i12, (i13 & 128) != 0 ? null : str3, (i13 & 256) != 0 ? null : docsDocPreview, (i13 & 512) != 0 ? null : baseBoolInt, (i13 & 1024) != 0 ? null : str4, (i13 & 2048) != 0 ? null : list);
    }
}
