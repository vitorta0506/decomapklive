package com.vk.sdk.api.store.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J@\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\tHÖ\u0001R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/vk/sdk/api/store/dto/StoreGetStickersKeywordsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "dictionary", "", "Lcom/vk/sdk/api/store/dto/StoreStickersKeyword;", "chunksCount", "chunksHash", "", "(ILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V", "getChunksCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getChunksHash", "()Ljava/lang/String;", "getCount", "()I", "getDictionary", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "(ILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/store/dto/StoreGetStickersKeywordsResponse;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoreGetStickersKeywordsResponse {
    @SerializedName("chunks_count")
    @Nullable
    private final Integer chunksCount;
    @SerializedName("chunks_hash")
    @Nullable
    private final String chunksHash;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("dictionary")
    @NotNull
    private final List<StoreStickersKeyword> dictionary;

    public StoreGetStickersKeywordsResponse(int i9, @NotNull List<StoreStickersKeyword> dictionary, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(dictionary, "dictionary");
        this.count = i9;
        this.dictionary = dictionary;
        this.chunksCount = num;
        this.chunksHash = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ StoreGetStickersKeywordsResponse copy$default(StoreGetStickersKeywordsResponse storeGetStickersKeywordsResponse, int i9, List list, Integer num, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = storeGetStickersKeywordsResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = storeGetStickersKeywordsResponse.dictionary;
        }
        if ((i10 & 4) != 0) {
            num = storeGetStickersKeywordsResponse.chunksCount;
        }
        if ((i10 & 8) != 0) {
            str = storeGetStickersKeywordsResponse.chunksHash;
        }
        return storeGetStickersKeywordsResponse.copy(i9, list, num, str);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<StoreStickersKeyword> component2() {
        return this.dictionary;
    }

    @Nullable
    public final Integer component3() {
        return this.chunksCount;
    }

    @Nullable
    public final String component4() {
        return this.chunksHash;
    }

    @NotNull
    public final StoreGetStickersKeywordsResponse copy(int i9, @NotNull List<StoreStickersKeyword> dictionary, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(dictionary, "dictionary");
        return new StoreGetStickersKeywordsResponse(i9, dictionary, num, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoreGetStickersKeywordsResponse) {
            StoreGetStickersKeywordsResponse storeGetStickersKeywordsResponse = (StoreGetStickersKeywordsResponse) obj;
            return this.count == storeGetStickersKeywordsResponse.count && Intrinsics.areEqual(this.dictionary, storeGetStickersKeywordsResponse.dictionary) && Intrinsics.areEqual(this.chunksCount, storeGetStickersKeywordsResponse.chunksCount) && Intrinsics.areEqual(this.chunksHash, storeGetStickersKeywordsResponse.chunksHash);
        }
        return false;
    }

    @Nullable
    public final Integer getChunksCount() {
        return this.chunksCount;
    }

    @Nullable
    public final String getChunksHash() {
        return this.chunksHash;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final List<StoreStickersKeyword> getDictionary() {
        return this.dictionary;
    }

    public int hashCode() {
        int hashCode = ((this.count * 31) + this.dictionary.hashCode()) * 31;
        Integer num = this.chunksCount;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.chunksHash;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<StoreStickersKeyword> list = this.dictionary;
        Integer num = this.chunksCount;
        String str = this.chunksHash;
        return "StoreGetStickersKeywordsResponse(count=" + i9 + ", dictionary=" + list + ", chunksCount=" + num + ", chunksHash=" + str + ")";
    }

    public /* synthetic */ StoreGetStickersKeywordsResponse(int i9, List list, Integer num, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, list, (i10 & 4) != 0 ? null : num, (i10 & 8) != 0 ? null : str);
    }
}
