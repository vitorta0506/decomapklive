package com.vk.sdk.api.pages.dto;

import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b9\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BÅ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u001aJ\t\u00105\u001a\u00020\u0003HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u000b\u00107\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0011HÆ\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u000b\u0010:\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0006HÆ\u0003J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\t\u0010C\u001a\u00020\tHÆ\u0003J\t\u0010D\u001a\u00020\tHÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\t\u0010F\u001a\u00020\rHÆ\u0003J\t\u0010G\u001a\u00020\rHÆ\u0003Jà\u0001\u0010H\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010IJ\u0013\u0010J\u001a\u00020K2\b\u0010L\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010M\u001a\u00020\u0003HÖ\u0001J\t\u0010N\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010!R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001cR\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b$\u0010\u001eR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001cR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010&R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010(R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010(R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010(R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010(R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010(R\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010(R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001cR\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0016\u0010\u000e\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u00103¨\u0006O"}, d2 = {"Lcom/vk/sdk/api/pages/dto/PagesWikipageFull;", "", "created", "", "edited", "groupId", "Lcom/vk/dto/common/id/UserId;", "id", "title", "", "viewUrl", AdUnitActivity.EXTRA_VIEWS, "whoCanEdit", "Lcom/vk/sdk/api/pages/dto/PagesPrivacySettings;", "whoCanView", "creatorId", "currentUserCanEdit", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "currentUserCanEditAccess", "editorId", "html", ShareConstants.FEED_SOURCE_PARAM, "url", "parent", "parent2", "ownerId", "(IILcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;ILcom/vk/sdk/api/pages/dto/PagesPrivacySettings;Lcom/vk/sdk/api/pages/dto/PagesPrivacySettings;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)V", "getCreated", "()I", "getCreatorId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCurrentUserCanEdit", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCurrentUserCanEditAccess", "getEdited", "getEditorId", "getGroupId", "()Lcom/vk/dto/common/id/UserId;", "getHtml", "()Ljava/lang/String;", "getId", "getOwnerId", "getParent", "getParent2", "getSource", "getTitle", "getUrl", "getViewUrl", "getViews", "getWhoCanEdit", "()Lcom/vk/sdk/api/pages/dto/PagesPrivacySettings;", "getWhoCanView", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IILcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;ILcom/vk/sdk/api/pages/dto/PagesPrivacySettings;Lcom/vk/sdk/api/pages/dto/PagesPrivacySettings;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)Lcom/vk/sdk/api/pages/dto/PagesWikipageFull;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PagesWikipageFull {
    @SerializedName("created")
    private final int created;
    @SerializedName("creator_id")
    @Nullable
    private final Integer creatorId;
    @SerializedName("current_user_can_edit")
    @Nullable
    private final BaseBoolInt currentUserCanEdit;
    @SerializedName("current_user_can_edit_access")
    @Nullable
    private final BaseBoolInt currentUserCanEditAccess;
    @SerializedName("edited")
    private final int edited;
    @SerializedName("editor_id")
    @Nullable
    private final Integer editorId;
    @SerializedName("group_id")
    @NotNull
    private final UserId groupId;
    @SerializedName("html")
    @Nullable
    private final String html;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35979id;
    @SerializedName("owner_id")
    @Nullable
    private final UserId ownerId;
    @SerializedName("parent")
    @Nullable
    private final String parent;
    @SerializedName("parent2")
    @Nullable
    private final String parent2;
    @SerializedName(ShareConstants.FEED_SOURCE_PARAM)
    @Nullable
    private final String source;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("url")
    @Nullable
    private final String url;
    @SerializedName("view_url")
    @NotNull
    private final String viewUrl;
    @SerializedName(AdUnitActivity.EXTRA_VIEWS)
    private final int views;
    @SerializedName("who_can_edit")
    @NotNull
    private final PagesPrivacySettings whoCanEdit;
    @SerializedName("who_can_view")
    @NotNull
    private final PagesPrivacySettings whoCanView;

    public PagesWikipageFull(int i9, int i10, @NotNull UserId groupId, int i11, @NotNull String title, @NotNull String viewUrl, int i12, @NotNull PagesPrivacySettings whoCanEdit, @NotNull PagesPrivacySettings whoCanView, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(viewUrl, "viewUrl");
        Intrinsics.checkNotNullParameter(whoCanEdit, "whoCanEdit");
        Intrinsics.checkNotNullParameter(whoCanView, "whoCanView");
        this.created = i9;
        this.edited = i10;
        this.groupId = groupId;
        this.f35979id = i11;
        this.title = title;
        this.viewUrl = viewUrl;
        this.views = i12;
        this.whoCanEdit = whoCanEdit;
        this.whoCanView = whoCanView;
        this.creatorId = num;
        this.currentUserCanEdit = baseBoolInt;
        this.currentUserCanEditAccess = baseBoolInt2;
        this.editorId = num2;
        this.html = str;
        this.source = str2;
        this.url = str3;
        this.parent = str4;
        this.parent2 = str5;
        this.ownerId = userId;
    }

    public final int component1() {
        return this.created;
    }

    @Nullable
    public final Integer component10() {
        return this.creatorId;
    }

    @Nullable
    public final BaseBoolInt component11() {
        return this.currentUserCanEdit;
    }

    @Nullable
    public final BaseBoolInt component12() {
        return this.currentUserCanEditAccess;
    }

    @Nullable
    public final Integer component13() {
        return this.editorId;
    }

    @Nullable
    public final String component14() {
        return this.html;
    }

    @Nullable
    public final String component15() {
        return this.source;
    }

    @Nullable
    public final String component16() {
        return this.url;
    }

    @Nullable
    public final String component17() {
        return this.parent;
    }

    @Nullable
    public final String component18() {
        return this.parent2;
    }

    @Nullable
    public final UserId component19() {
        return this.ownerId;
    }

    public final int component2() {
        return this.edited;
    }

    @NotNull
    public final UserId component3() {
        return this.groupId;
    }

    public final int component4() {
        return this.f35979id;
    }

    @NotNull
    public final String component5() {
        return this.title;
    }

    @NotNull
    public final String component6() {
        return this.viewUrl;
    }

    public final int component7() {
        return this.views;
    }

    @NotNull
    public final PagesPrivacySettings component8() {
        return this.whoCanEdit;
    }

    @NotNull
    public final PagesPrivacySettings component9() {
        return this.whoCanView;
    }

    @NotNull
    public final PagesWikipageFull copy(int i9, int i10, @NotNull UserId groupId, int i11, @NotNull String title, @NotNull String viewUrl, int i12, @NotNull PagesPrivacySettings whoCanEdit, @NotNull PagesPrivacySettings whoCanView, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable UserId userId) {
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(viewUrl, "viewUrl");
        Intrinsics.checkNotNullParameter(whoCanEdit, "whoCanEdit");
        Intrinsics.checkNotNullParameter(whoCanView, "whoCanView");
        return new PagesWikipageFull(i9, i10, groupId, i11, title, viewUrl, i12, whoCanEdit, whoCanView, num, baseBoolInt, baseBoolInt2, num2, str, str2, str3, str4, str5, userId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PagesWikipageFull) {
            PagesWikipageFull pagesWikipageFull = (PagesWikipageFull) obj;
            return this.created == pagesWikipageFull.created && this.edited == pagesWikipageFull.edited && Intrinsics.areEqual(this.groupId, pagesWikipageFull.groupId) && this.f35979id == pagesWikipageFull.f35979id && Intrinsics.areEqual(this.title, pagesWikipageFull.title) && Intrinsics.areEqual(this.viewUrl, pagesWikipageFull.viewUrl) && this.views == pagesWikipageFull.views && this.whoCanEdit == pagesWikipageFull.whoCanEdit && this.whoCanView == pagesWikipageFull.whoCanView && Intrinsics.areEqual(this.creatorId, pagesWikipageFull.creatorId) && this.currentUserCanEdit == pagesWikipageFull.currentUserCanEdit && this.currentUserCanEditAccess == pagesWikipageFull.currentUserCanEditAccess && Intrinsics.areEqual(this.editorId, pagesWikipageFull.editorId) && Intrinsics.areEqual(this.html, pagesWikipageFull.html) && Intrinsics.areEqual(this.source, pagesWikipageFull.source) && Intrinsics.areEqual(this.url, pagesWikipageFull.url) && Intrinsics.areEqual(this.parent, pagesWikipageFull.parent) && Intrinsics.areEqual(this.parent2, pagesWikipageFull.parent2) && Intrinsics.areEqual(this.ownerId, pagesWikipageFull.ownerId);
        }
        return false;
    }

    public final int getCreated() {
        return this.created;
    }

    @Nullable
    public final Integer getCreatorId() {
        return this.creatorId;
    }

    @Nullable
    public final BaseBoolInt getCurrentUserCanEdit() {
        return this.currentUserCanEdit;
    }

    @Nullable
    public final BaseBoolInt getCurrentUserCanEditAccess() {
        return this.currentUserCanEditAccess;
    }

    public final int getEdited() {
        return this.edited;
    }

    @Nullable
    public final Integer getEditorId() {
        return this.editorId;
    }

    @NotNull
    public final UserId getGroupId() {
        return this.groupId;
    }

    @Nullable
    public final String getHtml() {
        return this.html;
    }

    public final int getId() {
        return this.f35979id;
    }

    @Nullable
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final String getParent() {
        return this.parent;
    }

    @Nullable
    public final String getParent2() {
        return this.parent2;
    }

    @Nullable
    public final String getSource() {
        return this.source;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    @NotNull
    public final String getViewUrl() {
        return this.viewUrl;
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
        int hashCode = ((((((((((((((((this.created * 31) + this.edited) * 31) + this.groupId.hashCode()) * 31) + this.f35979id) * 31) + this.title.hashCode()) * 31) + this.viewUrl.hashCode()) * 31) + this.views) * 31) + this.whoCanEdit.hashCode()) * 31) + this.whoCanView.hashCode()) * 31;
        Integer num = this.creatorId;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.currentUserCanEdit;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.currentUserCanEditAccess;
        int hashCode4 = (hashCode3 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        Integer num2 = this.editorId;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str = this.html;
        int hashCode6 = (hashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.source;
        int hashCode7 = (hashCode6 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.url;
        int hashCode8 = (hashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.parent;
        int hashCode9 = (hashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.parent2;
        int hashCode10 = (hashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        UserId userId = this.ownerId;
        return hashCode10 + (userId != null ? userId.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.created;
        int i10 = this.edited;
        UserId userId = this.groupId;
        int i11 = this.f35979id;
        String str = this.title;
        String str2 = this.viewUrl;
        int i12 = this.views;
        PagesPrivacySettings pagesPrivacySettings = this.whoCanEdit;
        PagesPrivacySettings pagesPrivacySettings2 = this.whoCanView;
        Integer num = this.creatorId;
        BaseBoolInt baseBoolInt = this.currentUserCanEdit;
        BaseBoolInt baseBoolInt2 = this.currentUserCanEditAccess;
        Integer num2 = this.editorId;
        String str3 = this.html;
        String str4 = this.source;
        String str5 = this.url;
        String str6 = this.parent;
        String str7 = this.parent2;
        UserId userId2 = this.ownerId;
        return "PagesWikipageFull(created=" + i9 + ", edited=" + i10 + ", groupId=" + userId + ", id=" + i11 + ", title=" + str + ", viewUrl=" + str2 + ", views=" + i12 + ", whoCanEdit=" + pagesPrivacySettings + ", whoCanView=" + pagesPrivacySettings2 + ", creatorId=" + num + ", currentUserCanEdit=" + baseBoolInt + ", currentUserCanEditAccess=" + baseBoolInt2 + ", editorId=" + num2 + ", html=" + str3 + ", source=" + str4 + ", url=" + str5 + ", parent=" + str6 + ", parent2=" + str7 + ", ownerId=" + userId2 + ")";
    }

    public /* synthetic */ PagesWikipageFull(int i9, int i10, UserId userId, int i11, String str, String str2, int i12, PagesPrivacySettings pagesPrivacySettings, PagesPrivacySettings pagesPrivacySettings2, Integer num, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, Integer num2, String str3, String str4, String str5, String str6, String str7, UserId userId2, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, userId, i11, str, str2, i12, pagesPrivacySettings, pagesPrivacySettings2, (i13 & 512) != 0 ? null : num, (i13 & 1024) != 0 ? null : baseBoolInt, (i13 & 2048) != 0 ? null : baseBoolInt2, (i13 & 4096) != 0 ? null : num2, (i13 & 8192) != 0 ? null : str3, (i13 & 16384) != 0 ? null : str4, (32768 & i13) != 0 ? null : str5, (65536 & i13) != 0 ? null : str6, (131072 & i13) != 0 ? null : str7, (i13 & 262144) != 0 ? null : userId2);
    }
}
