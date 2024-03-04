package com.vk.sdk.api.stories.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ$\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesReplies;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "new", "(ILjava/lang/Integer;)V", "getCount", "()I", "getNew", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(ILjava/lang/Integer;)Lcom/vk/sdk/api/stories/dto/StoriesReplies;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesReplies {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("new")
    @Nullable

    /* renamed from: new  reason: not valid java name */
    private final Integer f9new;

    public StoriesReplies(int i9, @Nullable Integer num) {
        this.count = i9;
        this.f9new = num;
    }

    public static /* synthetic */ StoriesReplies copy$default(StoriesReplies storiesReplies, int i9, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = storiesReplies.count;
        }
        if ((i10 & 2) != 0) {
            num = storiesReplies.f9new;
        }
        return storiesReplies.copy(i9, num);
    }

    public final int component1() {
        return this.count;
    }

    @Nullable
    public final Integer component2() {
        return this.f9new;
    }

    @NotNull
    public final StoriesReplies copy(int i9, @Nullable Integer num) {
        return new StoriesReplies(i9, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesReplies) {
            StoriesReplies storiesReplies = (StoriesReplies) obj;
            return this.count == storiesReplies.count && Intrinsics.areEqual(this.f9new, storiesReplies.f9new);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @Nullable
    public final Integer getNew() {
        return this.f9new;
    }

    public int hashCode() {
        int i9 = this.count * 31;
        Integer num = this.f9new;
        return i9 + (num == null ? 0 : num.hashCode());
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        Integer num = this.f9new;
        return "StoriesReplies(count=" + i9 + ", new=" + num + ")";
    }

    public /* synthetic */ StoriesReplies(int i9, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, (i10 & 2) != 0 ? null : num);
    }
}
