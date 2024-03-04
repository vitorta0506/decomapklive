package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemOnClickOptions;", "", "w", "", "(Ljava/lang/String;)V", "getW", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaItemOnClickOptions {
    @SerializedName("w")
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final String f35756w;

    public ClassifiedsYoulaItemOnClickOptions(@NotNull String w6) {
        Intrinsics.checkNotNullParameter(w6, "w");
        this.f35756w = w6;
    }

    public static /* synthetic */ ClassifiedsYoulaItemOnClickOptions copy$default(ClassifiedsYoulaItemOnClickOptions classifiedsYoulaItemOnClickOptions, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = classifiedsYoulaItemOnClickOptions.f35756w;
        }
        return classifiedsYoulaItemOnClickOptions.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.f35756w;
    }

    @NotNull
    public final ClassifiedsYoulaItemOnClickOptions copy(@NotNull String w6) {
        Intrinsics.checkNotNullParameter(w6, "w");
        return new ClassifiedsYoulaItemOnClickOptions(w6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ClassifiedsYoulaItemOnClickOptions) && Intrinsics.areEqual(this.f35756w, ((ClassifiedsYoulaItemOnClickOptions) obj).f35756w);
    }

    @NotNull
    public final String getW() {
        return this.f35756w;
    }

    public int hashCode() {
        return this.f35756w.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.f35756w;
        return "ClassifiedsYoulaItemOnClickOptions(w=" + str + ")";
    }
}
