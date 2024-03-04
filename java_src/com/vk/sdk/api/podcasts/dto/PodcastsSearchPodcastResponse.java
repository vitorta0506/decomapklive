package com.vk.sdk.api.podcasts.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.podcast.dto.PodcastExternalData;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0006HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/podcasts/dto/PodcastsSearchPodcastResponse;", "", "podcasts", "", "Lcom/vk/sdk/api/podcast/dto/PodcastExternalData;", "resultsTotal", "", "(Ljava/util/List;I)V", "getPodcasts", "()Ljava/util/List;", "getResultsTotal", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class PodcastsSearchPodcastResponse {
    @SerializedName("podcasts")
    @NotNull
    private final List<PodcastExternalData> podcasts;
    @SerializedName("results_total")
    private final int resultsTotal;

    public PodcastsSearchPodcastResponse(@NotNull List<PodcastExternalData> podcasts, int i9) {
        Intrinsics.checkNotNullParameter(podcasts, "podcasts");
        this.podcasts = podcasts;
        this.resultsTotal = i9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PodcastsSearchPodcastResponse copy$default(PodcastsSearchPodcastResponse podcastsSearchPodcastResponse, List list, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = podcastsSearchPodcastResponse.podcasts;
        }
        if ((i10 & 2) != 0) {
            i9 = podcastsSearchPodcastResponse.resultsTotal;
        }
        return podcastsSearchPodcastResponse.copy(list, i9);
    }

    @NotNull
    public final List<PodcastExternalData> component1() {
        return this.podcasts;
    }

    public final int component2() {
        return this.resultsTotal;
    }

    @NotNull
    public final PodcastsSearchPodcastResponse copy(@NotNull List<PodcastExternalData> podcasts, int i9) {
        Intrinsics.checkNotNullParameter(podcasts, "podcasts");
        return new PodcastsSearchPodcastResponse(podcasts, i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PodcastsSearchPodcastResponse) {
            PodcastsSearchPodcastResponse podcastsSearchPodcastResponse = (PodcastsSearchPodcastResponse) obj;
            return Intrinsics.areEqual(this.podcasts, podcastsSearchPodcastResponse.podcasts) && this.resultsTotal == podcastsSearchPodcastResponse.resultsTotal;
        }
        return false;
    }

    @NotNull
    public final List<PodcastExternalData> getPodcasts() {
        return this.podcasts;
    }

    public final int getResultsTotal() {
        return this.resultsTotal;
    }

    public int hashCode() {
        return (this.podcasts.hashCode() * 31) + this.resultsTotal;
    }

    @NotNull
    public String toString() {
        List<PodcastExternalData> list = this.podcasts;
        int i9 = this.resultsTotal;
        return "PodcastsSearchPodcastResponse(podcasts=" + list + ", resultsTotal=" + i9 + ")";
    }
}
