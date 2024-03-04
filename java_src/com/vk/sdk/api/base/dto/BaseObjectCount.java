package com.vk.sdk.api.base.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001a\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "(Ljava/lang/Integer;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "copy", "(Ljava/lang/Integer;)Lcom/vk/sdk/api/base/dto/BaseObjectCount;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseObjectCount {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;

    public BaseObjectCount() {
        this(null, 1, null);
    }

    public BaseObjectCount(@Nullable Integer num) {
        this.count = num;
    }

    public static /* synthetic */ BaseObjectCount copy$default(BaseObjectCount baseObjectCount, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = baseObjectCount.count;
        }
        return baseObjectCount.copy(num);
    }

    @Nullable
    public final Integer component1() {
        return this.count;
    }

    @NotNull
    public final BaseObjectCount copy(@Nullable Integer num) {
        return new BaseObjectCount(num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BaseObjectCount) && Intrinsics.areEqual(this.count, ((BaseObjectCount) obj).count);
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    public int hashCode() {
        Integer num = this.count;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    @NotNull
    public String toString() {
        Integer num = this.count;
        return "BaseObjectCount(count=" + num + ")";
    }

    public /* synthetic */ BaseObjectCount(Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num);
    }
}
