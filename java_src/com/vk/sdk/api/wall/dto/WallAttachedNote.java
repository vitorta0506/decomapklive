package com.vk.sdk.api.wall.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b%\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0012J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000eHÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010(\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0007HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\nHÆ\u0003J\t\u0010.\u001a\u00020\nHÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\nHÆ\u0003J\u0011\u00100\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000eHÆ\u0003J\u009c\u0001\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u00102J\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u00020\u0003HÖ\u0001J\t\u00107\u001a\u00020\nHÖ\u0001R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0018\u0010\f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010!R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010!R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010!¨\u00068"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallAttachedNote;", "", "comments", "", "date", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "readComments", "title", "", "viewUrl", ViewHierarchyConstants.TEXT_KEY, "privacyView", "", "privacyComment", "canComment", "textWiki", "(IIILcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V", "getCanComment", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getComments", "()I", "getDate", "getId", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPrivacyComment", "()Ljava/util/List;", "getPrivacyView", "getReadComments", "getText", "()Ljava/lang/String;", "getTextWiki", "getTitle", "getViewUrl", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/wall/dto/WallAttachedNote;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallAttachedNote {
    @SerializedName("can_comment")
    @Nullable
    private final Integer canComment;
    @SerializedName("comments")
    private final int comments;
    @SerializedName("date")
    private final int date;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36153id;
    @SerializedName("owner_id")
    @NotNull
    private final UserId ownerId;
    @SerializedName("privacy_comment")
    @Nullable
    private final List<String> privacyComment;
    @SerializedName("privacy_view")
    @Nullable
    private final List<String> privacyView;
    @SerializedName("read_comments")
    private final int readComments;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName("text_wiki")
    @Nullable
    private final String textWiki;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("view_url")
    @NotNull
    private final String viewUrl;

    public WallAttachedNote(int i9, int i10, int i11, @NotNull UserId ownerId, int i12, @NotNull String title, @NotNull String viewUrl, @Nullable String str, @Nullable List<String> list, @Nullable List<String> list2, @Nullable Integer num, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(viewUrl, "viewUrl");
        this.comments = i9;
        this.date = i10;
        this.f36153id = i11;
        this.ownerId = ownerId;
        this.readComments = i12;
        this.title = title;
        this.viewUrl = viewUrl;
        this.text = str;
        this.privacyView = list;
        this.privacyComment = list2;
        this.canComment = num;
        this.textWiki = str2;
    }

    public final int component1() {
        return this.comments;
    }

    @Nullable
    public final List<String> component10() {
        return this.privacyComment;
    }

    @Nullable
    public final Integer component11() {
        return this.canComment;
    }

    @Nullable
    public final String component12() {
        return this.textWiki;
    }

    public final int component2() {
        return this.date;
    }

    public final int component3() {
        return this.f36153id;
    }

    @NotNull
    public final UserId component4() {
        return this.ownerId;
    }

    public final int component5() {
        return this.readComments;
    }

    @NotNull
    public final String component6() {
        return this.title;
    }

    @NotNull
    public final String component7() {
        return this.viewUrl;
    }

    @Nullable
    public final String component8() {
        return this.text;
    }

    @Nullable
    public final List<String> component9() {
        return this.privacyView;
    }

    @NotNull
    public final WallAttachedNote copy(int i9, int i10, int i11, @NotNull UserId ownerId, int i12, @NotNull String title, @NotNull String viewUrl, @Nullable String str, @Nullable List<String> list, @Nullable List<String> list2, @Nullable Integer num, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(viewUrl, "viewUrl");
        return new WallAttachedNote(i9, i10, i11, ownerId, i12, title, viewUrl, str, list, list2, num, str2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallAttachedNote) {
            WallAttachedNote wallAttachedNote = (WallAttachedNote) obj;
            return this.comments == wallAttachedNote.comments && this.date == wallAttachedNote.date && this.f36153id == wallAttachedNote.f36153id && Intrinsics.areEqual(this.ownerId, wallAttachedNote.ownerId) && this.readComments == wallAttachedNote.readComments && Intrinsics.areEqual(this.title, wallAttachedNote.title) && Intrinsics.areEqual(this.viewUrl, wallAttachedNote.viewUrl) && Intrinsics.areEqual(this.text, wallAttachedNote.text) && Intrinsics.areEqual(this.privacyView, wallAttachedNote.privacyView) && Intrinsics.areEqual(this.privacyComment, wallAttachedNote.privacyComment) && Intrinsics.areEqual(this.canComment, wallAttachedNote.canComment) && Intrinsics.areEqual(this.textWiki, wallAttachedNote.textWiki);
        }
        return false;
    }

    @Nullable
    public final Integer getCanComment() {
        return this.canComment;
    }

    public final int getComments() {
        return this.comments;
    }

    public final int getDate() {
        return this.date;
    }

    public final int getId() {
        return this.f36153id;
    }

    @NotNull
    public final UserId getOwnerId() {
        return this.ownerId;
    }

    @Nullable
    public final List<String> getPrivacyComment() {
        return this.privacyComment;
    }

    @Nullable
    public final List<String> getPrivacyView() {
        return this.privacyView;
    }

    public final int getReadComments() {
        return this.readComments;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final String getTextWiki() {
        return this.textWiki;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getViewUrl() {
        return this.viewUrl;
    }

    public int hashCode() {
        int hashCode = ((((((((((((this.comments * 31) + this.date) * 31) + this.f36153id) * 31) + this.ownerId.hashCode()) * 31) + this.readComments) * 31) + this.title.hashCode()) * 31) + this.viewUrl.hashCode()) * 31;
        String str = this.text;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<String> list = this.privacyView;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List<String> list2 = this.privacyComment;
        int hashCode4 = (hashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        Integer num = this.canComment;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.textWiki;
        return hashCode5 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.comments;
        int i10 = this.date;
        int i11 = this.f36153id;
        UserId userId = this.ownerId;
        int i12 = this.readComments;
        String str = this.title;
        String str2 = this.viewUrl;
        String str3 = this.text;
        List<String> list = this.privacyView;
        List<String> list2 = this.privacyComment;
        Integer num = this.canComment;
        String str4 = this.textWiki;
        return "WallAttachedNote(comments=" + i9 + ", date=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", readComments=" + i12 + ", title=" + str + ", viewUrl=" + str2 + ", text=" + str3 + ", privacyView=" + list + ", privacyComment=" + list2 + ", canComment=" + num + ", textWiki=" + str4 + ")";
    }

    public /* synthetic */ WallAttachedNote(int i9, int i10, int i11, UserId userId, int i12, String str, String str2, String str3, List list, List list2, Integer num, String str4, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, userId, i12, str, str2, (i13 & 128) != 0 ? null : str3, (i13 & 256) != 0 ? null : list, (i13 & 512) != 0 ? null : list2, (i13 & 1024) != 0 ? null : num, (i13 & 2048) != 0 ? null : str4);
    }
}
