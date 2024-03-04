package com.vk.sdk.api.notes.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b$\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0011\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0011¢\u0006\u0002\u0010\u0013J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0011\u0010)\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0011HÆ\u0003J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0011HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0007HÆ\u0003J\t\u0010.\u001a\u00020\tHÆ\u0003J\t\u0010/\u001a\u00020\tHÆ\u0003J\u0010\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010 J\u000b\u00101\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\tHÆ\u0003J\u009e\u0001\u00103\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00112\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0011HÆ\u0001¢\u0006\u0002\u00104J\u0013\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00108\u001a\u00020\u0003HÖ\u0001J\t\u00109\u001a\u00020\tHÖ\u0001R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0017R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010!\u001a\u0004\b\u001f\u0010 R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010#R\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010#¨\u0006:"}, d2 = {"Lcom/vk/sdk/api/notes/dto/NotesNote;", "", "comments", "", "date", "id", "ownerId", "Lcom/vk/dto/common/id/UserId;", "title", "", "viewUrl", "readComments", "canComment", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", ViewHierarchyConstants.TEXT_KEY, "textWiki", "privacyView", "", "privacyComment", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "getCanComment", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getComments", "()I", "getDate", "getId", "getOwnerId", "()Lcom/vk/dto/common/id/UserId;", "getPrivacyComment", "()Ljava/util/List;", "getPrivacyView", "getReadComments", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getText", "()Ljava/lang/String;", "getTextWiki", "getTitle", "getViewUrl", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(IIILcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/vk/sdk/api/notes/dto/NotesNote;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NotesNote {
    @SerializedName("can_comment")
    @Nullable
    private final BaseBoolInt canComment;
    @SerializedName("comments")
    private final int comments;
    @SerializedName("date")
    private final int date;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35957id;
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
    @Nullable
    private final Integer readComments;
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

    public NotesNote(int i9, int i10, int i11, @NotNull UserId ownerId, @NotNull String title, @NotNull String viewUrl, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable String str, @Nullable String str2, @Nullable List<String> list, @Nullable List<String> list2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(viewUrl, "viewUrl");
        this.comments = i9;
        this.date = i10;
        this.f35957id = i11;
        this.ownerId = ownerId;
        this.title = title;
        this.viewUrl = viewUrl;
        this.readComments = num;
        this.canComment = baseBoolInt;
        this.text = str;
        this.textWiki = str2;
        this.privacyView = list;
        this.privacyComment = list2;
    }

    public final int component1() {
        return this.comments;
    }

    @Nullable
    public final String component10() {
        return this.textWiki;
    }

    @Nullable
    public final List<String> component11() {
        return this.privacyView;
    }

    @Nullable
    public final List<String> component12() {
        return this.privacyComment;
    }

    public final int component2() {
        return this.date;
    }

    public final int component3() {
        return this.f35957id;
    }

    @NotNull
    public final UserId component4() {
        return this.ownerId;
    }

    @NotNull
    public final String component5() {
        return this.title;
    }

    @NotNull
    public final String component6() {
        return this.viewUrl;
    }

    @Nullable
    public final Integer component7() {
        return this.readComments;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.canComment;
    }

    @Nullable
    public final String component9() {
        return this.text;
    }

    @NotNull
    public final NotesNote copy(int i9, int i10, int i11, @NotNull UserId ownerId, @NotNull String title, @NotNull String viewUrl, @Nullable Integer num, @Nullable BaseBoolInt baseBoolInt, @Nullable String str, @Nullable String str2, @Nullable List<String> list, @Nullable List<String> list2) {
        Intrinsics.checkNotNullParameter(ownerId, "ownerId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(viewUrl, "viewUrl");
        return new NotesNote(i9, i10, i11, ownerId, title, viewUrl, num, baseBoolInt, str, str2, list, list2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NotesNote) {
            NotesNote notesNote = (NotesNote) obj;
            return this.comments == notesNote.comments && this.date == notesNote.date && this.f35957id == notesNote.f35957id && Intrinsics.areEqual(this.ownerId, notesNote.ownerId) && Intrinsics.areEqual(this.title, notesNote.title) && Intrinsics.areEqual(this.viewUrl, notesNote.viewUrl) && Intrinsics.areEqual(this.readComments, notesNote.readComments) && this.canComment == notesNote.canComment && Intrinsics.areEqual(this.text, notesNote.text) && Intrinsics.areEqual(this.textWiki, notesNote.textWiki) && Intrinsics.areEqual(this.privacyView, notesNote.privacyView) && Intrinsics.areEqual(this.privacyComment, notesNote.privacyComment);
        }
        return false;
    }

    @Nullable
    public final BaseBoolInt getCanComment() {
        return this.canComment;
    }

    public final int getComments() {
        return this.comments;
    }

    public final int getDate() {
        return this.date;
    }

    public final int getId() {
        return this.f35957id;
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

    @Nullable
    public final Integer getReadComments() {
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
        int hashCode = ((((((((((this.comments * 31) + this.date) * 31) + this.f35957id) * 31) + this.ownerId.hashCode()) * 31) + this.title.hashCode()) * 31) + this.viewUrl.hashCode()) * 31;
        Integer num = this.readComments;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canComment;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        String str = this.text;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.textWiki;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<String> list = this.privacyView;
        int hashCode6 = (hashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        List<String> list2 = this.privacyComment;
        return hashCode6 + (list2 != null ? list2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.comments;
        int i10 = this.date;
        int i11 = this.f35957id;
        UserId userId = this.ownerId;
        String str = this.title;
        String str2 = this.viewUrl;
        Integer num = this.readComments;
        BaseBoolInt baseBoolInt = this.canComment;
        String str3 = this.text;
        String str4 = this.textWiki;
        List<String> list = this.privacyView;
        List<String> list2 = this.privacyComment;
        return "NotesNote(comments=" + i9 + ", date=" + i10 + ", id=" + i11 + ", ownerId=" + userId + ", title=" + str + ", viewUrl=" + str2 + ", readComments=" + num + ", canComment=" + baseBoolInt + ", text=" + str3 + ", textWiki=" + str4 + ", privacyView=" + list + ", privacyComment=" + list2 + ")";
    }

    public /* synthetic */ NotesNote(int i9, int i10, int i11, UserId userId, String str, String str2, Integer num, BaseBoolInt baseBoolInt, String str3, String str4, List list, List list2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, userId, str, str2, (i12 & 64) != 0 ? null : num, (i12 & 128) != 0 ? null : baseBoolInt, (i12 & 256) != 0 ? null : str3, (i12 & 512) != 0 ? null : str4, (i12 & 1024) != 0 ? null : list, (i12 & 2048) != 0 ? null : list2);
    }
}
