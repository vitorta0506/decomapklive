package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsAccesses;", "", "clientId", "", "role", "Lcom/vk/sdk/api/ads/dto/AdsAccessRole;", "(Ljava/lang/String;Lcom/vk/sdk/api/ads/dto/AdsAccessRole;)V", "getClientId", "()Ljava/lang/String;", "getRole", "()Lcom/vk/sdk/api/ads/dto/AdsAccessRole;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsAccesses {
    @SerializedName("client_id")
    @Nullable
    private final String clientId;
    @SerializedName("role")
    @Nullable
    private final AdsAccessRole role;

    public AdsAccesses() {
        this(null, null, 3, null);
    }

    public AdsAccesses(@Nullable String str, @Nullable AdsAccessRole adsAccessRole) {
        this.clientId = str;
        this.role = adsAccessRole;
    }

    public static /* synthetic */ AdsAccesses copy$default(AdsAccesses adsAccesses, String str, AdsAccessRole adsAccessRole, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = adsAccesses.clientId;
        }
        if ((i9 & 2) != 0) {
            adsAccessRole = adsAccesses.role;
        }
        return adsAccesses.copy(str, adsAccessRole);
    }

    @Nullable
    public final String component1() {
        return this.clientId;
    }

    @Nullable
    public final AdsAccessRole component2() {
        return this.role;
    }

    @NotNull
    public final AdsAccesses copy(@Nullable String str, @Nullable AdsAccessRole adsAccessRole) {
        return new AdsAccesses(str, adsAccessRole);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsAccesses) {
            AdsAccesses adsAccesses = (AdsAccesses) obj;
            return Intrinsics.areEqual(this.clientId, adsAccesses.clientId) && this.role == adsAccesses.role;
        }
        return false;
    }

    @Nullable
    public final String getClientId() {
        return this.clientId;
    }

    @Nullable
    public final AdsAccessRole getRole() {
        return this.role;
    }

    public int hashCode() {
        String str = this.clientId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        AdsAccessRole adsAccessRole = this.role;
        return hashCode + (adsAccessRole != null ? adsAccessRole.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        String str = this.clientId;
        AdsAccessRole adsAccessRole = this.role;
        return "AdsAccesses(clientId=" + str + ", role=" + adsAccessRole + ")";
    }

    public /* synthetic */ AdsAccesses(String str, AdsAccessRole adsAccessRole, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : adsAccessRole);
    }
}
