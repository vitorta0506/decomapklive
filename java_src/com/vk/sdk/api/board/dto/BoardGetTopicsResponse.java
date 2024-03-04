package com.vk.sdk.api.board.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J\t\u0010\u0017\u001a\u00020\nHÆ\u0003J7\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/board/dto/BoardGetTopicsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "items", "", "Lcom/vk/sdk/api/board/dto/BoardTopic;", "defaultOrder", "Lcom/vk/sdk/api/board/dto/BoardDefaultOrder;", "canAddTopics", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "(ILjava/util/List;Lcom/vk/sdk/api/board/dto/BoardDefaultOrder;Lcom/vk/sdk/api/base/dto/BaseBoolInt;)V", "getCanAddTopics", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCount", "()I", "getDefaultOrder", "()Lcom/vk/sdk/api/board/dto/BoardDefaultOrder;", "getItems", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BoardGetTopicsResponse {
    @SerializedName("can_add_topics")
    @NotNull
    private final BaseBoolInt canAddTopics;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("default_order")
    @NotNull
    private final BoardDefaultOrder defaultOrder;
    @SerializedName("items")
    @NotNull
    private final List<BoardTopic> items;

    public BoardGetTopicsResponse(int i9, @NotNull List<BoardTopic> items, @NotNull BoardDefaultOrder defaultOrder, @NotNull BaseBoolInt canAddTopics) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(defaultOrder, "defaultOrder");
        Intrinsics.checkNotNullParameter(canAddTopics, "canAddTopics");
        this.count = i9;
        this.items = items;
        this.defaultOrder = defaultOrder;
        this.canAddTopics = canAddTopics;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BoardGetTopicsResponse copy$default(BoardGetTopicsResponse boardGetTopicsResponse, int i9, List list, BoardDefaultOrder boardDefaultOrder, BaseBoolInt baseBoolInt, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = boardGetTopicsResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = boardGetTopicsResponse.items;
        }
        if ((i10 & 4) != 0) {
            boardDefaultOrder = boardGetTopicsResponse.defaultOrder;
        }
        if ((i10 & 8) != 0) {
            baseBoolInt = boardGetTopicsResponse.canAddTopics;
        }
        return boardGetTopicsResponse.copy(i9, list, boardDefaultOrder, baseBoolInt);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<BoardTopic> component2() {
        return this.items;
    }

    @NotNull
    public final BoardDefaultOrder component3() {
        return this.defaultOrder;
    }

    @NotNull
    public final BaseBoolInt component4() {
        return this.canAddTopics;
    }

    @NotNull
    public final BoardGetTopicsResponse copy(int i9, @NotNull List<BoardTopic> items, @NotNull BoardDefaultOrder defaultOrder, @NotNull BaseBoolInt canAddTopics) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(defaultOrder, "defaultOrder");
        Intrinsics.checkNotNullParameter(canAddTopics, "canAddTopics");
        return new BoardGetTopicsResponse(i9, items, defaultOrder, canAddTopics);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BoardGetTopicsResponse) {
            BoardGetTopicsResponse boardGetTopicsResponse = (BoardGetTopicsResponse) obj;
            return this.count == boardGetTopicsResponse.count && Intrinsics.areEqual(this.items, boardGetTopicsResponse.items) && this.defaultOrder == boardGetTopicsResponse.defaultOrder && this.canAddTopics == boardGetTopicsResponse.canAddTopics;
        }
        return false;
    }

    @NotNull
    public final BaseBoolInt getCanAddTopics() {
        return this.canAddTopics;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final BoardDefaultOrder getDefaultOrder() {
        return this.defaultOrder;
    }

    @NotNull
    public final List<BoardTopic> getItems() {
        return this.items;
    }

    public int hashCode() {
        return (((((this.count * 31) + this.items.hashCode()) * 31) + this.defaultOrder.hashCode()) * 31) + this.canAddTopics.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<BoardTopic> list = this.items;
        BoardDefaultOrder boardDefaultOrder = this.defaultOrder;
        BaseBoolInt baseBoolInt = this.canAddTopics;
        return "BoardGetTopicsResponse(count=" + i9 + ", items=" + list + ", defaultOrder=" + boardDefaultOrder + ", canAddTopics=" + baseBoolInt + ")";
    }
}
