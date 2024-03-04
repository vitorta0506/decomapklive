package com.vk.sdk.api.widgets.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseLikesInfo;
import com.vk.sdk.api.base.dto.BaseRepostsInfo;
import com.vk.sdk.api.users.dto.UsersUserFull;
import com.vk.sdk.api.wall.dto.WallCommentAttachment;
import com.vk.sdk.api.wall.dto.WallPostSource;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b)\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u009b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a¢\u0006\u0002\u0010\u001bJ\t\u00104\u001a\u00020\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\bHÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bHÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0010HÆ\u0003J«\u0001\u0010B\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÆ\u0001J\u0013\u0010C\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010F\u001a\u00020\u0003HÖ\u0001J\t\u0010G\u001a\u00020\bHÖ\u0001R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010#R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010#R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010#R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010#R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103¨\u0006H"}, d2 = {"Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetComment;", "", "date", "", "fromId", "id", "postType", ViewHierarchyConstants.TEXT_KEY, "", "toId", "attachments", "", "Lcom/vk/sdk/api/wall/dto/WallCommentAttachment;", "canDelete", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "comments", "Lcom/vk/sdk/api/widgets/dto/WidgetsCommentReplies;", "likes", "Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", ShareConstants.WEB_DIALOG_PARAM_MEDIA, "Lcom/vk/sdk/api/widgets/dto/WidgetsCommentMedia;", "postSource", "Lcom/vk/sdk/api/wall/dto/WallPostSource;", "reposts", "Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "user", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "(IIIILjava/lang/String;ILjava/util/List;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/widgets/dto/WidgetsCommentReplies;Lcom/vk/sdk/api/base/dto/BaseLikesInfo;Lcom/vk/sdk/api/widgets/dto/WidgetsCommentMedia;Lcom/vk/sdk/api/wall/dto/WallPostSource;Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;Lcom/vk/sdk/api/users/dto/UsersUserFull;)V", "getAttachments", "()Ljava/util/List;", "getCanDelete", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getComments", "()Lcom/vk/sdk/api/widgets/dto/WidgetsCommentReplies;", "getDate", "()I", "getFromId", "getId", "getLikes", "()Lcom/vk/sdk/api/base/dto/BaseLikesInfo;", "getMedia", "()Lcom/vk/sdk/api/widgets/dto/WidgetsCommentMedia;", "getPostSource", "()Lcom/vk/sdk/api/wall/dto/WallPostSource;", "getPostType", "getReposts", "()Lcom/vk/sdk/api/base/dto/BaseRepostsInfo;", "getText", "()Ljava/lang/String;", "getToId", "getUser", "()Lcom/vk/sdk/api/users/dto/UsersUserFull;", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WidgetsWidgetComment {
    @SerializedName("attachments")
    @Nullable
    private final List<WallCommentAttachment> attachments;
    @SerializedName("can_delete")
    @Nullable
    private final BaseBoolInt canDelete;
    @SerializedName("comments")
    @Nullable
    private final WidgetsCommentReplies comments;
    @SerializedName("date")
    private final int date;
    @SerializedName("from_id")
    private final int fromId;
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f36182id;
    @SerializedName("likes")
    @Nullable
    private final BaseLikesInfo likes;
    @SerializedName(ShareConstants.WEB_DIALOG_PARAM_MEDIA)
    @Nullable
    private final WidgetsCommentMedia media;
    @SerializedName("post_source")
    @Nullable
    private final WallPostSource postSource;
    @SerializedName("post_type")
    private final int postType;
    @SerializedName("reposts")
    @Nullable
    private final BaseRepostsInfo reposts;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;
    @SerializedName("to_id")
    private final int toId;
    @SerializedName("user")
    @Nullable
    private final UsersUserFull user;

    public WidgetsWidgetComment(int i9, int i10, int i11, int i12, @NotNull String text, int i13, @Nullable List<WallCommentAttachment> list, @Nullable BaseBoolInt baseBoolInt, @Nullable WidgetsCommentReplies widgetsCommentReplies, @Nullable BaseLikesInfo baseLikesInfo, @Nullable WidgetsCommentMedia widgetsCommentMedia, @Nullable WallPostSource wallPostSource, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UsersUserFull usersUserFull) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.date = i9;
        this.fromId = i10;
        this.f36182id = i11;
        this.postType = i12;
        this.text = text;
        this.toId = i13;
        this.attachments = list;
        this.canDelete = baseBoolInt;
        this.comments = widgetsCommentReplies;
        this.likes = baseLikesInfo;
        this.media = widgetsCommentMedia;
        this.postSource = wallPostSource;
        this.reposts = baseRepostsInfo;
        this.user = usersUserFull;
    }

    public final int component1() {
        return this.date;
    }

    @Nullable
    public final BaseLikesInfo component10() {
        return this.likes;
    }

    @Nullable
    public final WidgetsCommentMedia component11() {
        return this.media;
    }

    @Nullable
    public final WallPostSource component12() {
        return this.postSource;
    }

    @Nullable
    public final BaseRepostsInfo component13() {
        return this.reposts;
    }

    @Nullable
    public final UsersUserFull component14() {
        return this.user;
    }

    public final int component2() {
        return this.fromId;
    }

    public final int component3() {
        return this.f36182id;
    }

    public final int component4() {
        return this.postType;
    }

    @NotNull
    public final String component5() {
        return this.text;
    }

    public final int component6() {
        return this.toId;
    }

    @Nullable
    public final List<WallCommentAttachment> component7() {
        return this.attachments;
    }

    @Nullable
    public final BaseBoolInt component8() {
        return this.canDelete;
    }

    @Nullable
    public final WidgetsCommentReplies component9() {
        return this.comments;
    }

    @NotNull
    public final WidgetsWidgetComment copy(int i9, int i10, int i11, int i12, @NotNull String text, int i13, @Nullable List<WallCommentAttachment> list, @Nullable BaseBoolInt baseBoolInt, @Nullable WidgetsCommentReplies widgetsCommentReplies, @Nullable BaseLikesInfo baseLikesInfo, @Nullable WidgetsCommentMedia widgetsCommentMedia, @Nullable WallPostSource wallPostSource, @Nullable BaseRepostsInfo baseRepostsInfo, @Nullable UsersUserFull usersUserFull) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new WidgetsWidgetComment(i9, i10, i11, i12, text, i13, list, baseBoolInt, widgetsCommentReplies, baseLikesInfo, widgetsCommentMedia, wallPostSource, baseRepostsInfo, usersUserFull);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WidgetsWidgetComment) {
            WidgetsWidgetComment widgetsWidgetComment = (WidgetsWidgetComment) obj;
            return this.date == widgetsWidgetComment.date && this.fromId == widgetsWidgetComment.fromId && this.f36182id == widgetsWidgetComment.f36182id && this.postType == widgetsWidgetComment.postType && Intrinsics.areEqual(this.text, widgetsWidgetComment.text) && this.toId == widgetsWidgetComment.toId && Intrinsics.areEqual(this.attachments, widgetsWidgetComment.attachments) && this.canDelete == widgetsWidgetComment.canDelete && Intrinsics.areEqual(this.comments, widgetsWidgetComment.comments) && Intrinsics.areEqual(this.likes, widgetsWidgetComment.likes) && Intrinsics.areEqual(this.media, widgetsWidgetComment.media) && Intrinsics.areEqual(this.postSource, widgetsWidgetComment.postSource) && Intrinsics.areEqual(this.reposts, widgetsWidgetComment.reposts) && Intrinsics.areEqual(this.user, widgetsWidgetComment.user);
        }
        return false;
    }

    @Nullable
    public final List<WallCommentAttachment> getAttachments() {
        return this.attachments;
    }

    @Nullable
    public final BaseBoolInt getCanDelete() {
        return this.canDelete;
    }

    @Nullable
    public final WidgetsCommentReplies getComments() {
        return this.comments;
    }

    public final int getDate() {
        return this.date;
    }

    public final int getFromId() {
        return this.fromId;
    }

    public final int getId() {
        return this.f36182id;
    }

    @Nullable
    public final BaseLikesInfo getLikes() {
        return this.likes;
    }

    @Nullable
    public final WidgetsCommentMedia getMedia() {
        return this.media;
    }

    @Nullable
    public final WallPostSource getPostSource() {
        return this.postSource;
    }

    public final int getPostType() {
        return this.postType;
    }

    @Nullable
    public final BaseRepostsInfo getReposts() {
        return this.reposts;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final int getToId() {
        return this.toId;
    }

    @Nullable
    public final UsersUserFull getUser() {
        return this.user;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.date * 31) + this.fromId) * 31) + this.f36182id) * 31) + this.postType) * 31) + this.text.hashCode()) * 31) + this.toId) * 31;
        List<WallCommentAttachment> list = this.attachments;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.canDelete;
        int hashCode3 = (hashCode2 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        WidgetsCommentReplies widgetsCommentReplies = this.comments;
        int hashCode4 = (hashCode3 + (widgetsCommentReplies == null ? 0 : widgetsCommentReplies.hashCode())) * 31;
        BaseLikesInfo baseLikesInfo = this.likes;
        int hashCode5 = (hashCode4 + (baseLikesInfo == null ? 0 : baseLikesInfo.hashCode())) * 31;
        WidgetsCommentMedia widgetsCommentMedia = this.media;
        int hashCode6 = (hashCode5 + (widgetsCommentMedia == null ? 0 : widgetsCommentMedia.hashCode())) * 31;
        WallPostSource wallPostSource = this.postSource;
        int hashCode7 = (hashCode6 + (wallPostSource == null ? 0 : wallPostSource.hashCode())) * 31;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        int hashCode8 = (hashCode7 + (baseRepostsInfo == null ? 0 : baseRepostsInfo.hashCode())) * 31;
        UsersUserFull usersUserFull = this.user;
        return hashCode8 + (usersUserFull != null ? usersUserFull.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.date;
        int i10 = this.fromId;
        int i11 = this.f36182id;
        int i12 = this.postType;
        String str = this.text;
        int i13 = this.toId;
        List<WallCommentAttachment> list = this.attachments;
        BaseBoolInt baseBoolInt = this.canDelete;
        WidgetsCommentReplies widgetsCommentReplies = this.comments;
        BaseLikesInfo baseLikesInfo = this.likes;
        WidgetsCommentMedia widgetsCommentMedia = this.media;
        WallPostSource wallPostSource = this.postSource;
        BaseRepostsInfo baseRepostsInfo = this.reposts;
        UsersUserFull usersUserFull = this.user;
        return "WidgetsWidgetComment(date=" + i9 + ", fromId=" + i10 + ", id=" + i11 + ", postType=" + i12 + ", text=" + str + ", toId=" + i13 + ", attachments=" + list + ", canDelete=" + baseBoolInt + ", comments=" + widgetsCommentReplies + ", likes=" + baseLikesInfo + ", media=" + widgetsCommentMedia + ", postSource=" + wallPostSource + ", reposts=" + baseRepostsInfo + ", user=" + usersUserFull + ")";
    }

    public /* synthetic */ WidgetsWidgetComment(int i9, int i10, int i11, int i12, String str, int i13, List list, BaseBoolInt baseBoolInt, WidgetsCommentReplies widgetsCommentReplies, BaseLikesInfo baseLikesInfo, WidgetsCommentMedia widgetsCommentMedia, WallPostSource wallPostSource, BaseRepostsInfo baseRepostsInfo, UsersUserFull usersUserFull, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, i11, i12, str, i13, (i14 & 64) != 0 ? null : list, (i14 & 128) != 0 ? null : baseBoolInt, (i14 & 256) != 0 ? null : widgetsCommentReplies, (i14 & 512) != 0 ? null : baseLikesInfo, (i14 & 1024) != 0 ? null : widgetsCommentMedia, (i14 & 2048) != 0 ? null : wallPostSource, (i14 & 4096) != 0 ? null : baseRepostsInfo, (i14 & 8192) != 0 ? null : usersUserFull);
    }
}
