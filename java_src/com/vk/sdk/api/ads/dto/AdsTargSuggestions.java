package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsTargSuggestions;", "", "id", "", "name", "", "(Ljava/lang/Integer;Ljava/lang/String;)V", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "component1", "component2", "copy", "(Ljava/lang/Integer;Ljava/lang/String;)Lcom/vk/sdk/api/ads/dto/AdsTargSuggestions;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsTargSuggestions {
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35678id;
    @SerializedName("name")
    @Nullable
    private final String name;

    public AdsTargSuggestions() {
        this(null, null, 3, null);
    }

    public AdsTargSuggestions(@Nullable Integer num, @Nullable String str) {
        this.f35678id = num;
        this.name = str;
    }

    public static /* synthetic */ AdsTargSuggestions copy$default(AdsTargSuggestions adsTargSuggestions, Integer num, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = adsTargSuggestions.f35678id;
        }
        if ((i9 & 2) != 0) {
            str = adsTargSuggestions.name;
        }
        return adsTargSuggestions.copy(num, str);
    }

    @Nullable
    public final Integer component1() {
        return this.f35678id;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final AdsTargSuggestions copy(@Nullable Integer num, @Nullable String str) {
        return new AdsTargSuggestions(num, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdsTargSuggestions) {
            AdsTargSuggestions adsTargSuggestions = (AdsTargSuggestions) obj;
            return Intrinsics.areEqual(this.f35678id, adsTargSuggestions.f35678id) && Intrinsics.areEqual(this.name, adsTargSuggestions.name);
        }
        return false;
    }

    @Nullable
    public final Integer getId() {
        return this.f35678id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        Integer num = this.f35678id;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.name;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.f35678id;
        String str = this.name;
        return "AdsTargSuggestions(id=" + num + ", name=" + str + ")";
    }

    public /* synthetic */ AdsTargSuggestions(Integer num, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : str);
    }
}
