package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0006HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsRules;", "", "paragraphs", "", "Lcom/vk/sdk/api/ads/dto/AdsParagraphs;", "title", "", "(Ljava/util/List;Ljava/lang/String;)V", "getParagraphs", "()Ljava/util/List;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsRules {
    @SerializedName("paragraphs")
    @Nullable
    private final List<AdsParagraphs> paragraphs;
    @SerializedName("title")
    @Nullable
    private final String title;

    public AdsRules() {
        this(null, null, 3, null);
    }

    public AdsRules(@Nullable List<AdsParagraphs> list, @Nullable String str) {
        this.paragraphs = list;
        this.title = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdsRules copy$default(AdsRules adsRules, List list, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = adsRules.paragraphs;
        }
        if ((i9 & 2) != 0) {
            str = adsRules.title;
        }
        return adsRules.copy(list, str);
    }

    @Nullable
    public final List<AdsParagraphs> component1() {
        return this.paragraphs;
    }

    @Nullable
    public final String component2() {
        return this.title;
    }

    @NotNull
    public final AdsRules copy(@Nullable List<AdsParagraphs> list, @Nullable String str) {
        return new AdsRules(list, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsRules) {
            AdsRules adsRules = (AdsRules) obj;
            return Intrinsics.areEqual(this.paragraphs, adsRules.paragraphs) && Intrinsics.areEqual(this.title, adsRules.title);
        }
        return false;
    }

    @Nullable
    public final List<AdsParagraphs> getParagraphs() {
        return this.paragraphs;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        List<AdsParagraphs> list = this.paragraphs;
        int hashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.title;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        List<AdsParagraphs> list = this.paragraphs;
        String str = this.title;
        return "AdsRules(paragraphs=" + list + ", title=" + str + ")";
    }

    public /* synthetic */ AdsRules(List list, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : list, (i9 & 2) != 0 ? null : str);
    }
}
