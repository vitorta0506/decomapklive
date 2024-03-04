package com.vk.sdk.api.calls.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\tJ,\u0010\u000f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/calls/dto/CallsParticipants;", "", "list", "", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "(Ljava/util/List;Ljava/lang/Integer;)V", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getList", "()Ljava/util/List;", "component1", "component2", "copy", "(Ljava/util/List;Ljava/lang/Integer;)Lcom/vk/sdk/api/calls/dto/CallsParticipants;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CallsParticipants {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("list")
    @Nullable
    private final List<Long> list;

    public CallsParticipants() {
        this(null, null, 3, null);
    }

    public CallsParticipants(@Nullable List<Long> list, @Nullable Integer num) {
        this.list = list;
        this.count = num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CallsParticipants copy$default(CallsParticipants callsParticipants, List list, Integer num, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = callsParticipants.list;
        }
        if ((i9 & 2) != 0) {
            num = callsParticipants.count;
        }
        return callsParticipants.copy(list, num);
    }

    @Nullable
    public final List<Long> component1() {
        return this.list;
    }

    @Nullable
    public final Integer component2() {
        return this.count;
    }

    @NotNull
    public final CallsParticipants copy(@Nullable List<Long> list, @Nullable Integer num) {
        return new CallsParticipants(list, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CallsParticipants) {
            CallsParticipants callsParticipants = (CallsParticipants) obj;
            return Intrinsics.areEqual(this.list, callsParticipants.list) && Intrinsics.areEqual(this.count, callsParticipants.count);
        }
        return false;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<Long> getList() {
        return this.list;
    }

    public int hashCode() {
        List<Long> list = this.list;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        Integer num = this.count;
        return hashCode + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<Long> list = this.list;
        Integer num = this.count;
        return "CallsParticipants(list=" + list + ", count=" + num + ")";
    }

    public /* synthetic */ CallsParticipants(List list, Integer num, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : num);
    }
}
