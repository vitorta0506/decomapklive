package com.vk.sdk.api.widgets.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.users.dto.UsersUserFull;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u000bHÆ\u0003JV\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\t\u0010$\u001a\u00020\bHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0010\u0010\u000eR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0015\u0010\u000eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006%"}, d2 = {"Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;", "", "cid", "", "date", "likes", "Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;", ViewHierarchyConstants.TEXT_KEY, "", "uid", "user", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)V", "getCid", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getDate", "getLikes", "()Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;", "getText", "()Ljava/lang/String;", "getUid", "getUser", "()Lcom/vk/sdk/api/users/dto/UsersUserFull;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WidgetsCommentRepliesItem {
    @SerializedName("cid")
    @Nullable
    private final Integer cid;
    @SerializedName("date")
    @Nullable
    private final Integer date;
    @SerializedName("likes")
    @Nullable
    private final WidgetsWidgetLikes likes;
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @Nullable
    private final String text;
    @SerializedName("uid")
    @Nullable
    private final Integer uid;
    @SerializedName("user")
    @Nullable
    private final UsersUserFull user;

    public WidgetsCommentRepliesItem() {
        this(null, null, null, null, null, null, 63, null);
    }

    public WidgetsCommentRepliesItem(@Nullable Integer num, @Nullable Integer num2, @Nullable WidgetsWidgetLikes widgetsWidgetLikes, @Nullable String str, @Nullable Integer num3, @Nullable UsersUserFull usersUserFull) {
        this.cid = num;
        this.date = num2;
        this.likes = widgetsWidgetLikes;
        this.text = str;
        this.uid = num3;
        this.user = usersUserFull;
    }

    public static /* synthetic */ WidgetsCommentRepliesItem copy$default(WidgetsCommentRepliesItem widgetsCommentRepliesItem, Integer num, Integer num2, WidgetsWidgetLikes widgetsWidgetLikes, String str, Integer num3, UsersUserFull usersUserFull, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = widgetsCommentRepliesItem.cid;
        }
        if ((i9 & 2) != 0) {
            num2 = widgetsCommentRepliesItem.date;
        }
        Integer num4 = num2;
        if ((i9 & 4) != 0) {
            widgetsWidgetLikes = widgetsCommentRepliesItem.likes;
        }
        WidgetsWidgetLikes widgetsWidgetLikes2 = widgetsWidgetLikes;
        if ((i9 & 8) != 0) {
            str = widgetsCommentRepliesItem.text;
        }
        String str2 = str;
        if ((i9 & 16) != 0) {
            num3 = widgetsCommentRepliesItem.uid;
        }
        Integer num5 = num3;
        if ((i9 & 32) != 0) {
            usersUserFull = widgetsCommentRepliesItem.user;
        }
        return widgetsCommentRepliesItem.copy(num, num4, widgetsWidgetLikes2, str2, num5, usersUserFull);
    }

    @Nullable
    public final Integer component1() {
        return this.cid;
    }

    @Nullable
    public final Integer component2() {
        return this.date;
    }

    @Nullable
    public final WidgetsWidgetLikes component3() {
        return this.likes;
    }

    @Nullable
    public final String component4() {
        return this.text;
    }

    @Nullable
    public final Integer component5() {
        return this.uid;
    }

    @Nullable
    public final UsersUserFull component6() {
        return this.user;
    }

    @NotNull
    public final WidgetsCommentRepliesItem copy(@Nullable Integer num, @Nullable Integer num2, @Nullable WidgetsWidgetLikes widgetsWidgetLikes, @Nullable String str, @Nullable Integer num3, @Nullable UsersUserFull usersUserFull) {
        return new WidgetsCommentRepliesItem(num, num2, widgetsWidgetLikes, str, num3, usersUserFull);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WidgetsCommentRepliesItem) {
            WidgetsCommentRepliesItem widgetsCommentRepliesItem = (WidgetsCommentRepliesItem) obj;
            return Intrinsics.areEqual(this.cid, widgetsCommentRepliesItem.cid) && Intrinsics.areEqual(this.date, widgetsCommentRepliesItem.date) && Intrinsics.areEqual(this.likes, widgetsCommentRepliesItem.likes) && Intrinsics.areEqual(this.text, widgetsCommentRepliesItem.text) && Intrinsics.areEqual(this.uid, widgetsCommentRepliesItem.uid) && Intrinsics.areEqual(this.user, widgetsCommentRepliesItem.user);
        }
        return false;
    }

    @Nullable
    public final Integer getCid() {
        return this.cid;
    }

    @Nullable
    public final Integer getDate() {
        return this.date;
    }

    @Nullable
    public final WidgetsWidgetLikes getLikes() {
        return this.likes;
    }

    @Nullable
    public final String getText() {
        return this.text;
    }

    @Nullable
    public final Integer getUid() {
        return this.uid;
    }

    @Nullable
    public final UsersUserFull getUser() {
        return this.user;
    }

    public int hashCode() {
        Integer num = this.cid;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.date;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        WidgetsWidgetLikes widgetsWidgetLikes = this.likes;
        int hashCode3 = (hashCode2 + (widgetsWidgetLikes == null ? 0 : widgetsWidgetLikes.hashCode())) * 31;
        String str = this.text;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num3 = this.uid;
        int hashCode5 = (hashCode4 + (num3 == null ? 0 : num3.hashCode())) * 31;
        UsersUserFull usersUserFull = this.user;
        return hashCode5 + (usersUserFull != null ? usersUserFull.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.cid;
        Integer num2 = this.date;
        WidgetsWidgetLikes widgetsWidgetLikes = this.likes;
        String str = this.text;
        Integer num3 = this.uid;
        UsersUserFull usersUserFull = this.user;
        return "WidgetsCommentRepliesItem(cid=" + num + ", date=" + num2 + ", likes=" + widgetsWidgetLikes + ", text=" + str + ", uid=" + num3 + ", user=" + usersUserFull + ")";
    }

    public /* synthetic */ WidgetsCommentRepliesItem(Integer num, Integer num2, WidgetsWidgetLikes widgetsWidgetLikes, String str, Integer num3, UsersUserFull usersUserFull, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : widgetsWidgetLikes, (i9 & 8) != 0 ? null : str, (i9 & 16) != 0 ? null : num3, (i9 & 32) != 0 ? null : usersUserFull);
    }
}
