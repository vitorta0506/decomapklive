package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsRejectReason;", "", "comment", "", "rules", "", "Lcom/vk/sdk/api/ads/dto/AdsRules;", "(Ljava/lang/String;Ljava/util/List;)V", "getComment", "()Ljava/lang/String;", "getRules", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsRejectReason {
    @SerializedName("comment")
    @Nullable
    private final String comment;
    @SerializedName("rules")
    @Nullable
    private final List<AdsRules> rules;

    public AdsRejectReason() {
        this(null, null, 3, null);
    }

    public AdsRejectReason(@Nullable String str, @Nullable List<AdsRules> list) {
        this.comment = str;
        this.rules = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdsRejectReason copy$default(AdsRejectReason adsRejectReason, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = adsRejectReason.comment;
        }
        if ((i9 & 2) != 0) {
            list = adsRejectReason.rules;
        }
        return adsRejectReason.copy(str, list);
    }

    @Nullable
    public final String component1() {
        return this.comment;
    }

    @Nullable
    public final List<AdsRules> component2() {
        return this.rules;
    }

    @NotNull
    public final AdsRejectReason copy(@Nullable String str, @Nullable List<AdsRules> list) {
        return new AdsRejectReason(str, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsRejectReason) {
            AdsRejectReason adsRejectReason = (AdsRejectReason) obj;
            return Intrinsics.areEqual(this.comment, adsRejectReason.comment) && Intrinsics.areEqual(this.rules, adsRejectReason.rules);
        }
        return false;
    }

    @Nullable
    public final String getComment() {
        return this.comment;
    }

    @Nullable
    public final List<AdsRules> getRules() {
        return this.rules;
    }

    public int hashCode() {
        String str = this.comment;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<AdsRules> list = this.rules;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.comment;
        List<AdsRules> list = this.rules;
        return "AdsRejectReason(comment=" + str + ", rules=" + list + ")";
    }

    public /* synthetic */ AdsRejectReason(String str, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : list);
    }
}
