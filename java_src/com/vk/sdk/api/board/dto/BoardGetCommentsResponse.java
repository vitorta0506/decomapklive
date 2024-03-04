package com.vk.sdk.api.board.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\bHÆ\u0003J/\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/vk/sdk/api/board/dto/BoardGetCommentsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/board/dto/BoardTopicComment;", "poll", "Lcom/vk/sdk/api/board/dto/BoardTopicPoll;", "(ILjava/util/List;Lcom/vk/sdk/api/board/dto/BoardTopicPoll;)V", "getCount", "()I", "getItems", "()Ljava/util/List;", "getPoll", "()Lcom/vk/sdk/api/board/dto/BoardTopicPoll;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BoardGetCommentsResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("items")
    @NotNull
    private final List<BoardTopicComment> items;
    @SerializedName("poll")
    @Nullable
    private final BoardTopicPoll poll;

    public BoardGetCommentsResponse(int i9, @NotNull List<BoardTopicComment> items, @Nullable BoardTopicPoll boardTopicPoll) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.count = i9;
        this.items = items;
        this.poll = boardTopicPoll;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BoardGetCommentsResponse copy$default(BoardGetCommentsResponse boardGetCommentsResponse, int i9, List list, BoardTopicPoll boardTopicPoll, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = boardGetCommentsResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = boardGetCommentsResponse.items;
        }
        if ((i10 & 4) != 0) {
            boardTopicPoll = boardGetCommentsResponse.poll;
        }
        return boardGetCommentsResponse.copy(i9, list, boardTopicPoll);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<BoardTopicComment> component2() {
        return this.items;
    }

    @Nullable
    public final BoardTopicPoll component3() {
        return this.poll;
    }

    @NotNull
    public final BoardGetCommentsResponse copy(int i9, @NotNull List<BoardTopicComment> items, @Nullable BoardTopicPoll boardTopicPoll) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new BoardGetCommentsResponse(i9, items, boardTopicPoll);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BoardGetCommentsResponse) {
            BoardGetCommentsResponse boardGetCommentsResponse = (BoardGetCommentsResponse) obj;
            return this.count == boardGetCommentsResponse.count && Intrinsics.areEqual(this.items, boardGetCommentsResponse.items) && Intrinsics.areEqual(this.poll, boardGetCommentsResponse.poll);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final List<BoardTopicComment> getItems() {
        return this.items;
    }

    @Nullable
    public final BoardTopicPoll getPoll() {
        return this.poll;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.items.hashCode()) * 31;
        BoardTopicPoll boardTopicPoll = this.poll;
        return hashCode + (boardTopicPoll == null ? 0 : boardTopicPoll.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<BoardTopicComment> list = this.items;
        BoardTopicPoll boardTopicPoll = this.poll;
        return "BoardGetCommentsResponse(count=" + i9 + ", items=" + list + ", poll=" + boardTopicPoll + ")";
    }

    public /* synthetic */ BoardGetCommentsResponse(int i9, List list, BoardTopicPoll boardTopicPoll, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : boardTopicPoll);
    }
}
