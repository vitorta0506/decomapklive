package com.vk.sdk.api.store.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/store/dto/StoreStickersKeywordSticker;", "", "packId", "", "stickerId", "(II)V", "getPackId", "()I", "getStickerId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoreStickersKeywordSticker {
    @SerializedName("pack_id")
    private final int packId;
    @SerializedName("sticker_id")
    private final int stickerId;

    public StoreStickersKeywordSticker(int i9, int i10) {
        this.packId = i9;
        this.stickerId = i10;
    }

    public static /* synthetic */ StoreStickersKeywordSticker copy$default(StoreStickersKeywordSticker storeStickersKeywordSticker, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = storeStickersKeywordSticker.packId;
        }
        if ((i11 & 2) != 0) {
            i10 = storeStickersKeywordSticker.stickerId;
        }
        return storeStickersKeywordSticker.copy(i9, i10);
    }

    public final int component1() {
        return this.packId;
    }

    public final int component2() {
        return this.stickerId;
    }

    @NotNull
    public final StoreStickersKeywordSticker copy(int i9, int i10) {
        return new StoreStickersKeywordSticker(i9, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoreStickersKeywordSticker) {
            StoreStickersKeywordSticker storeStickersKeywordSticker = (StoreStickersKeywordSticker) obj;
            return this.packId == storeStickersKeywordSticker.packId && this.stickerId == storeStickersKeywordSticker.stickerId;
        }
        return false;
    }

    public final int getPackId() {
        return this.packId;
    }

    public final int getStickerId() {
        return this.stickerId;
    }

    public int hashCode() {
        return (this.packId * 31) + this.stickerId;
    }

    @NotNull
    public String toString() {
        int i9 = this.packId;
        int i10 = this.stickerId;
        return "StoreStickersKeywordSticker(packId=" + i9 + ", stickerId=" + i10 + ")";
    }
}
