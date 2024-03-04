package com.vk.sdk.api.downloadedGames.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0006\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\n\u001a\u00020\u000bHÖ\u0001J\t\u0010\f\u001a\u00020\rHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0005¨\u0006\u000e"}, d2 = {"Lcom/vk/sdk/api/downloadedGames/dto/DownloadedGamesPaidStatusResponse;", "", "isPaid", "", "(Z)V", "()Z", "component1", "copy", "equals", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DownloadedGamesPaidStatusResponse {
    @SerializedName("is_paid")
    private final boolean isPaid;

    public DownloadedGamesPaidStatusResponse(boolean z10) {
        this.isPaid = z10;
    }

    public static /* synthetic */ DownloadedGamesPaidStatusResponse copy$default(DownloadedGamesPaidStatusResponse downloadedGamesPaidStatusResponse, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = downloadedGamesPaidStatusResponse.isPaid;
        }
        return downloadedGamesPaidStatusResponse.copy(z10);
    }

    public final boolean component1() {
        return this.isPaid;
    }

    @NotNull
    public final DownloadedGamesPaidStatusResponse copy(boolean z10) {
        return new DownloadedGamesPaidStatusResponse(z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DownloadedGamesPaidStatusResponse) && this.isPaid == ((DownloadedGamesPaidStatusResponse) obj).isPaid;
    }

    public int hashCode() {
        boolean z10 = this.isPaid;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public final boolean isPaid() {
        return this.isPaid;
    }

    @NotNull
    public String toString() {
        boolean z10 = this.isPaid;
        return "DownloadedGamesPaidStatusResponse(isPaid=" + z10 + ")";
    }
}
