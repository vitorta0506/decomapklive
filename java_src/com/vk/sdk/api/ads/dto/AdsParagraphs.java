package com.vk.sdk.api.ads.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/ads/dto/AdsParagraphs;", "", "paragraph", "", "(Ljava/lang/String;)V", "getParagraph", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AdsParagraphs {
    @SerializedName("paragraph")
    @Nullable
    private final String paragraph;

    public AdsParagraphs() {
        this(null, 1, null);
    }

    public AdsParagraphs(@Nullable String str) {
        this.paragraph = str;
    }

    public static /* synthetic */ AdsParagraphs copy$default(AdsParagraphs adsParagraphs, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = adsParagraphs.paragraph;
        }
        return adsParagraphs.copy(str);
    }

    @Nullable
    public final String component1() {
        return this.paragraph;
    }

    @NotNull
    public final AdsParagraphs copy(@Nullable String str) {
        return new AdsParagraphs(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AdsParagraphs) && Intrinsics.areEqual(this.paragraph, ((AdsParagraphs) obj).paragraph);
    }

    @Nullable
    public final String getParagraph() {
        return this.paragraph;
    }

    public int hashCode() {
        String str = this.paragraph;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.paragraph;
        return "AdsParagraphs(paragraph=" + str + ")";
    }

    public /* synthetic */ AdsParagraphs(String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : str);
    }
}
