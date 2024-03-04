package com.vk.sdk.api.store.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003JC\u0010\u0014\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0004HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00018\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/store/dto/StoreStickersKeyword;", "", "words", "", "", "userStickers", "promotedStickers", "stickers", "Lcom/vk/sdk/api/store/dto/StoreStickersKeywordSticker;", "(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V", "getPromotedStickers", "()Ljava/lang/Object;", "getStickers", "()Ljava/util/List;", "getUserStickers", "getWords", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoreStickersKeyword {
    @SerializedName("promoted_stickers")
    @Nullable
    private final Object promotedStickers;
    @SerializedName("stickers")
    @Nullable
    private final List<StoreStickersKeywordSticker> stickers;
    @SerializedName("user_stickers")
    @Nullable
    private final Object userStickers;
    @SerializedName("words")
    @NotNull
    private final List<String> words;

    public StoreStickersKeyword(@NotNull List<String> words, @Nullable Object obj, @Nullable Object obj2, @Nullable List<StoreStickersKeywordSticker> list) {
        Intrinsics.checkNotNullParameter(words, "words");
        this.words = words;
        this.userStickers = obj;
        this.promotedStickers = obj2;
        this.stickers = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StoreStickersKeyword copy$default(StoreStickersKeyword storeStickersKeyword, List list, Object obj, Object obj2, List list2, int i9, Object obj3) {
        if ((i9 & 1) != 0) {
            list = storeStickersKeyword.words;
        }
        if ((i9 & 2) != 0) {
            obj = storeStickersKeyword.userStickers;
        }
        if ((i9 & 4) != 0) {
            obj2 = storeStickersKeyword.promotedStickers;
        }
        if ((i9 & 8) != 0) {
            list2 = storeStickersKeyword.stickers;
        }
        return storeStickersKeyword.copy(list, obj, obj2, list2);
    }

    @NotNull
    public final List<String> component1() {
        return this.words;
    }

    @Nullable
    public final Object component2() {
        return this.userStickers;
    }

    @Nullable
    public final Object component3() {
        return this.promotedStickers;
    }

    @Nullable
    public final List<StoreStickersKeywordSticker> component4() {
        return this.stickers;
    }

    @NotNull
    public final StoreStickersKeyword copy(@NotNull List<String> words, @Nullable Object obj, @Nullable Object obj2, @Nullable List<StoreStickersKeywordSticker> list) {
        Intrinsics.checkNotNullParameter(words, "words");
        return new StoreStickersKeyword(words, obj, obj2, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoreStickersKeyword) {
            StoreStickersKeyword storeStickersKeyword = (StoreStickersKeyword) obj;
            return Intrinsics.areEqual(this.words, storeStickersKeyword.words) && Intrinsics.areEqual(this.userStickers, storeStickersKeyword.userStickers) && Intrinsics.areEqual(this.promotedStickers, storeStickersKeyword.promotedStickers) && Intrinsics.areEqual(this.stickers, storeStickersKeyword.stickers);
        }
        return false;
    }

    @Nullable
    public final Object getPromotedStickers() {
        return this.promotedStickers;
    }

    @Nullable
    public final List<StoreStickersKeywordSticker> getStickers() {
        return this.stickers;
    }

    @Nullable
    public final Object getUserStickers() {
        return this.userStickers;
    }

    @NotNull
    public final List<String> getWords() {
        return this.words;
    }

    public int hashCode() {
        int hashCode = this.words.hashCode() * 31;
        Object obj = this.userStickers;
        int hashCode2 = (hashCode + (obj == null ? 0 : obj.hashCode())) * 31;
        Object obj2 = this.promotedStickers;
        int hashCode3 = (hashCode2 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        List<StoreStickersKeywordSticker> list = this.stickers;
        return hashCode3 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<String> list = this.words;
        Object obj = this.userStickers;
        Object obj2 = this.promotedStickers;
        List<StoreStickersKeywordSticker> list2 = this.stickers;
        return "StoreStickersKeyword(words=" + list + ", userStickers=" + obj + ", promotedStickers=" + obj2 + ", stickers=" + list2 + ")";
    }

    public /* synthetic */ StoreStickersKeyword(List list, Object obj, Object obj2, List list2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i9 & 2) != 0 ? null : obj, (i9 & 4) != 0 ? null : obj2, (i9 & 8) != 0 ? null : list2);
    }
}
