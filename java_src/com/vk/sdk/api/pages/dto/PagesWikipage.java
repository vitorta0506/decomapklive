package com.vk.sdk.api.pages.dto;

import com.google.gson.annotations.SerializedName;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u0010J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0007HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\nHÆ\u0003J\t\u0010'\u001a\u00020\nHÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010)\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0012Jz\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u00020\u0005HÖ\u0001J\t\u00101\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0014\u0010\u0012R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0015\u0010\u0012R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0016\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001f¨\u00062"}, d2 = {"Lcom/vk/sdk/api/pages/dto/PagesWikipage;", "", "groupId", "Lcom/vk/dto/common/id/UserId;", "id", "", "title", "", AdUnitActivity.EXTRA_VIEWS, "whoCanEdit", "Lcom/vk/sdk/api/pages/dto/PagesPrivacySettings;", "whoCanView", "creatorId", "creatorName", "editorId", "editorName", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;ILcom/vk/sdk/api/pages/dto/PagesPrivacySettings;Lcom/vk/sdk/api/pages/dto/PagesPrivacySettings;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getCreatorId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCreatorName", "getEditorId", "getEditorName", "()Ljava/lang/String;", "getGroupId", "()Lcom/vk/dto/common/id/UserId;", "getId", "()I", "getTitle", "getViews", "getWhoCanEdit", "()Lcom/vk/sdk/api/pages/dto/PagesPrivacySettings;", "getWhoCanView", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;ILcom/vk/sdk/api/pages/dto/PagesPrivacySettings;Lcom/vk/sdk/api/pages/dto/PagesPrivacySettings;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/pages/dto/PagesWikipage;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PagesWikipage {
    @SerializedName("creator_id")
    @Nullable
    private final Integer creatorId;
    @SerializedName("creator_name")
    @Nullable
    private final Integer creatorName;
    @SerializedName("editor_id")
    @Nullable
    private final Integer editorId;
    @SerializedName("editor_name")
    @Nullable
    private final String editorName;
    @SerializedName("group_id")
    @NotNull
    private final UserId groupId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35978id;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    private final int views;
    @SerializedName("who_can_edit")
    @NotNull
    private final PagesPrivacySettings whoCanEdit;
    @SerializedName("who_can_view")
    @NotNull
    private final PagesPrivacySettings whoCanView;

    public PagesWikipage(@NotNull UserId groupId, int i9, @NotNull String title, int i10, @NotNull PagesPrivacySettings whoCanEdit, @NotNull PagesPrivacySettings whoCanView, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(whoCanEdit, "whoCanEdit");
        Intrinsics.checkNotNullParameter(whoCanView, "whoCanView");
        this.groupId = groupId;
        this.f35978id = i9;
        this.title = title;
        this.views = i10;
        this.whoCanEdit = whoCanEdit;
        this.whoCanView = whoCanView;
        this.creatorId = num;
        this.creatorName = num2;
        this.editorId = num3;
        this.editorName = str;
    }

    @NotNull
    public final UserId component1() {
        return this.groupId;
    }

    @Nullable
    public final String component10() {
        return this.editorName;
    }

    public final int component2() {
        return this.f35978id;
    }

    @NotNull
    public final String component3() {
        return this.title;
    }

    public final int component4() {
        return this.views;
    }

    @NotNull
    public final PagesPrivacySettings component5() {
        return this.whoCanEdit;
    }

    @NotNull
    public final PagesPrivacySettings component6() {
        return this.whoCanView;
    }

    @Nullable
    public final Integer component7() {
        return this.creatorId;
    }

    @Nullable
    public final Integer component8() {
        return this.creatorName;
    }

    @Nullable
    public final Integer component9() {
        return this.editorId;
    }

    @NotNull
    public final PagesWikipage copy(@NotNull UserId groupId, int i9, @NotNull String title, int i10, @NotNull PagesPrivacySettings whoCanEdit, @NotNull PagesPrivacySettings whoCanView, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable String str) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(whoCanEdit, "whoCanEdit");
        Intrinsics.checkNotNullParameter(whoCanView, "whoCanView");
        return new PagesWikipage(groupId, i9, title, i10, whoCanEdit, whoCanView, num, num2, num3, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PagesWikipage) {
            PagesWikipage pagesWikipage = (PagesWikipage) obj;
            return Intrinsics.areEqual(this.groupId, pagesWikipage.groupId) && this.f35978id == pagesWikipage.f35978id && Intrinsics.areEqual(this.title, pagesWikipage.title) && this.views == pagesWikipage.views && this.whoCanEdit == pagesWikipage.whoCanEdit && this.whoCanView == pagesWikipage.whoCanView && Intrinsics.areEqual(this.creatorId, pagesWikipage.creatorId) && Intrinsics.areEqual(this.creatorName, pagesWikipage.creatorName) && Intrinsics.areEqual(this.editorId, pagesWikipage.editorId) && Intrinsics.areEqual(this.editorName, pagesWikipage.editorName);
        }
        return false;
    }

    @Nullable
    public final Integer getCreatorId() {
        return this.creatorId;
    }

    @Nullable
    public final Integer getCreatorName() {
        return this.creatorName;
    }

    @Nullable
    public final Integer getEditorId() {
        return this.editorId;
    }

    @Nullable
    public final String getEditorName() {
        return this.editorName;
    }

    @NotNull
    public final UserId getGroupId() {
        return this.groupId;
    }

    public final int getId() {
        return this.f35978id;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getViews() {
        return this.views;
    }

    @NotNull
    public final PagesPrivacySettings getWhoCanEdit() {
        return this.whoCanEdit;
    }

    @NotNull
    public final PagesPrivacySettings getWhoCanView() {
        return this.whoCanView;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.groupId.hashCode() * 31) + this.f35978id) * 31) + this.title.hashCode()) * 31) + this.views) * 31) + this.whoCanEdit.hashCode()) * 31) + this.whoCanView.hashCode()) * 31;
        Integer num = this.creatorId;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.creatorName;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.editorId;
        int hashCode4 = (hashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str = this.editorName;
        return hashCode4 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        UserId userId = this.groupId;
        int i9 = this.f35978id;
        String str = this.title;
        int i10 = this.views;
        PagesPrivacySettings pagesPrivacySettings = this.whoCanEdit;
        PagesPrivacySettings pagesPrivacySettings2 = this.whoCanView;
        Integer num = this.creatorId;
        Integer num2 = this.creatorName;
        Integer num3 = this.editorId;
        String str2 = this.editorName;
        return "PagesWikipage(groupId=" + userId + ", id=" + i9 + ", title=" + str + ", views=" + i10 + ", whoCanEdit=" + pagesPrivacySettings + ", whoCanView=" + pagesPrivacySettings2 + ", creatorId=" + num + ", creatorName=" + num2 + ", editorId=" + num3 + ", editorName=" + str2 + ")";
    }

    public /* synthetic */ PagesWikipage(UserId userId, int i9, String str, int i10, PagesPrivacySettings pagesPrivacySettings, PagesPrivacySettings pagesPrivacySettings2, Integer num, Integer num2, Integer num3, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(userId, i9, str, i10, pagesPrivacySettings, pagesPrivacySettings2, (i11 & 64) != 0 ? null : num, (i11 & 128) != 0 ? null : num2, (i11 & 256) != 0 ? null : num3, (i11 & 512) != 0 ? null : str2);
    }
}
