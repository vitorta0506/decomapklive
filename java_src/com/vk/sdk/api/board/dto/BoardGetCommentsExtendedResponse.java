package com.vk.sdk.api.board.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.groups.dto.GroupsGroup;
import com.vk.sdk.api.users.dto.UsersUser;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÆ\u0003J\u000f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\fHÆ\u0003JO\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011¨\u0006\""}, d2 = {"Lcom/vk/sdk/api/board/dto/BoardGetCommentsExtendedResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/board/dto/BoardTopicComment;", "profiles", "Lcom/vk/sdk/api/users/dto/UsersUser;", "groups", "Lcom/vk/sdk/api/groups/dto/GroupsGroup;", "poll", "Lcom/vk/sdk/api/board/dto/BoardTopicPoll;", "(ILjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vk/sdk/api/board/dto/BoardTopicPoll;)V", "getCount", "()I", "getGroups", "()Ljava/util/List;", "getItems", "getPoll", "()Lcom/vk/sdk/api/board/dto/BoardTopicPoll;", "getProfiles", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BoardGetCommentsExtendedResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("groups")
    @NotNull
    private final List<GroupsGroup> groups;
    @SerializedName("items")
    @NotNull
    private final List<BoardTopicComment> items;
    @SerializedName("poll")
    @Nullable
    private final BoardTopicPoll poll;
    @SerializedName("profiles")
    @NotNull
    private final List<UsersUser> profiles;

    public BoardGetCommentsExtendedResponse(int i9, @NotNull List<BoardTopicComment> items, @NotNull List<UsersUser> profiles, @NotNull List<GroupsGroup> groups, @Nullable BoardTopicPoll boardTopicPoll) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        this.count = i9;
        this.items = items;
        this.profiles = profiles;
        this.groups = groups;
        this.poll = boardTopicPoll;
    }

    public static /* synthetic */ BoardGetCommentsExtendedResponse copy$default(BoardGetCommentsExtendedResponse boardGetCommentsExtendedResponse, int i9, List list, List list2, List list3, BoardTopicPoll boardTopicPoll, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = boardGetCommentsExtendedResponse.count;
        }
        List<BoardTopicComment> list4 = list;
        if ((i10 & 2) != 0) {
            list4 = boardGetCommentsExtendedResponse.items;
        }
        List list5 = list4;
        List<UsersUser> list6 = list2;
        if ((i10 & 4) != 0) {
            list6 = boardGetCommentsExtendedResponse.profiles;
        }
        List list7 = list6;
        List<GroupsGroup> list8 = list3;
        if ((i10 & 8) != 0) {
            list8 = boardGetCommentsExtendedResponse.groups;
        }
        List list9 = list8;
        if ((i10 & 16) != 0) {
            boardTopicPoll = boardGetCommentsExtendedResponse.poll;
        }
        return boardGetCommentsExtendedResponse.copy(i9, list5, list7, list9, boardTopicPoll);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<BoardTopicComment> component2() {
        return this.items;
    }

    @NotNull
    public final List<UsersUser> component3() {
        return this.profiles;
    }

    @NotNull
    public final List<GroupsGroup> component4() {
        return this.groups;
    }

    @Nullable
    public final BoardTopicPoll component5() {
        return this.poll;
    }

    @NotNull
    public final BoardGetCommentsExtendedResponse copy(int i9, @NotNull List<BoardTopicComment> items, @NotNull List<UsersUser> profiles, @NotNull List<GroupsGroup> groups, @Nullable BoardTopicPoll boardTopicPoll) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        Intrinsics.checkNotNullParameter(groups, "groups");
        return new BoardGetCommentsExtendedResponse(i9, items, profiles, groups, boardTopicPoll);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BoardGetCommentsExtendedResponse) {
            BoardGetCommentsExtendedResponse boardGetCommentsExtendedResponse = (BoardGetCommentsExtendedResponse) obj;
            return this.count == boardGetCommentsExtendedResponse.count && Intrinsics.areEqual(this.items, boardGetCommentsExtendedResponse.items) && Intrinsics.areEqual(this.profiles, boardGetCommentsExtendedResponse.profiles) && Intrinsics.areEqual(this.groups, boardGetCommentsExtendedResponse.groups) && Intrinsics.areEqual(this.poll, boardGetCommentsExtendedResponse.poll);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final List<GroupsGroup> getGroups() {
        return this.groups;
    }

    @NotNull
    public final List<BoardTopicComment> getItems() {
        return this.items;
    }

    @Nullable
    public final BoardTopicPoll getPoll() {
        return this.poll;
    }

    @NotNull
    public final List<UsersUser> getProfiles() {
        return this.profiles;
    }

    public int hashCode() {
        int hashCode = ((((((this.count * 31) + this.items.hashCode()) * 31) + this.profiles.hashCode()) * 31) + this.groups.hashCode()) * 31;
        BoardTopicPoll boardTopicPoll = this.poll;
        return hashCode + (boardTopicPoll == null ? 0 : boardTopicPoll.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<BoardTopicComment> list = this.items;
        List<UsersUser> list2 = this.profiles;
        List<GroupsGroup> list3 = this.groups;
        BoardTopicPoll boardTopicPoll = this.poll;
        return "BoardGetCommentsExtendedResponse(count=" + i9 + ", items=" + list + ", profiles=" + list2 + ", groups=" + list3 + ", poll=" + boardTopicPoll + ")";
    }

    public /* synthetic */ BoardGetCommentsExtendedResponse(int i9, List list, List list2, List list3, BoardTopicPoll boardTopicPoll, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, list2, list3, (i10 & 16) != 0 ? null : boardTopicPoll);
    }
}
