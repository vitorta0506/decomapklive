package com.vk.sdk.api.utils.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/utils/dto/UtilsLinkStatsExtended;", "", "key", "", "stats", "", "Lcom/vk/sdk/api/utils/dto/UtilsStatsExtended;", "(Ljava/lang/String;Ljava/util/List;)V", "getKey", "()Ljava/lang/String;", "getStats", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UtilsLinkStatsExtended {
    @SerializedName("key")
    @Nullable
    private final String key;
    @SerializedName("stats")
    @Nullable
    private final List<UtilsStatsExtended> stats;

    public UtilsLinkStatsExtended() {
        this(null, null, 3, null);
    }

    public UtilsLinkStatsExtended(@Nullable String str, @Nullable List<UtilsStatsExtended> list) {
        this.key = str;
        this.stats = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UtilsLinkStatsExtended copy$default(UtilsLinkStatsExtended utilsLinkStatsExtended, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = utilsLinkStatsExtended.key;
        }
        if ((i9 & 2) != 0) {
            list = utilsLinkStatsExtended.stats;
        }
        return utilsLinkStatsExtended.copy(str, list);
    }

    @Nullable
    public final String component1() {
        return this.key;
    }

    @Nullable
    public final List<UtilsStatsExtended> component2() {
        return this.stats;
    }

    @NotNull
    public final UtilsLinkStatsExtended copy(@Nullable String str, @Nullable List<UtilsStatsExtended> list) {
        return new UtilsLinkStatsExtended(str, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UtilsLinkStatsExtended) {
            UtilsLinkStatsExtended utilsLinkStatsExtended = (UtilsLinkStatsExtended) obj;
            return Intrinsics.areEqual(this.key, utilsLinkStatsExtended.key) && Intrinsics.areEqual(this.stats, utilsLinkStatsExtended.stats);
        }
        return false;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    @Nullable
    public final List<UtilsStatsExtended> getStats() {
        return this.stats;
    }

    public int hashCode() {
        String str = this.key;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<UtilsStatsExtended> list = this.stats;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.key;
        List<UtilsStatsExtended> list = this.stats;
        return "UtilsLinkStatsExtended(key=" + str + ", stats=" + list + ")";
    }

    public /* synthetic */ UtilsLinkStatsExtended(String str, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : list);
    }
}
