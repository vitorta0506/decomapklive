package com.vk.sdk.api.stories.dto;

import com.facebook.internal.ServerProtocol;
import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\bJ$\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesStoryStatsStat;", "", ServerProtocol.DIALOG_PARAM_STATE, "Lcom/vk/sdk/api/stories/dto/StoriesStoryStatsState;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "(Lcom/vk/sdk/api/stories/dto/StoriesStoryStatsState;Ljava/lang/Integer;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getState", "()Lcom/vk/sdk/api/stories/dto/StoriesStoryStatsState;", "component1", "component2", "copy", "(Lcom/vk/sdk/api/stories/dto/StoriesStoryStatsState;Ljava/lang/Integer;)Lcom/vk/sdk/api/stories/dto/StoriesStoryStatsStat;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesStoryStatsStat {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName(ServerProtocol.DIALOG_PARAM_STATE)
    @NotNull
    private final StoriesStoryStatsState state;

    public StoriesStoryStatsStat(@NotNull StoriesStoryStatsState state, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
        this.count = num;
    }

    public static /* synthetic */ StoriesStoryStatsStat copy$default(StoriesStoryStatsStat storiesStoryStatsStat, StoriesStoryStatsState storiesStoryStatsState, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            storiesStoryStatsState = storiesStoryStatsStat.state;
        }
        if ((i9 & 2) != 0) {
            num = storiesStoryStatsStat.count;
        }
        return storiesStoryStatsStat.copy(storiesStoryStatsState, num);
    }

    @NotNull
    public final StoriesStoryStatsState component1() {
        return this.state;
    }

    @Nullable
    public final Integer component2() {
        return this.count;
    }

    @NotNull
    public final StoriesStoryStatsStat copy(@NotNull StoriesStoryStatsState state, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(state, "state");
        return new StoriesStoryStatsStat(state, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesStoryStatsStat) {
            StoriesStoryStatsStat storiesStoryStatsStat = (StoriesStoryStatsStat) obj;
            return this.state == storiesStoryStatsStat.state && Intrinsics.areEqual(this.count, storiesStoryStatsStat.count);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @NotNull
    public final StoriesStoryStatsState getState() {
        return this.state;
    }

    public int hashCode() {
        int hashCode = this.state.hashCode() * 31;
        Integer num = this.count;
        return hashCode + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        StoriesStoryStatsState storiesStoryStatsState = this.state;
        Integer num = this.count;
        return "StoriesStoryStatsStat(state=" + storiesStoryStatsState + ", count=" + num + ")";
    }

    public /* synthetic */ StoriesStoryStatsStat(StoriesStoryStatsState storiesStoryStatsState, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(storiesStoryStatsState, (i9 & 2) != 0 ? null : num);
    }
}
