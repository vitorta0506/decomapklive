package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemStatusInfo;", "", "title", "", "description", "(Ljava/lang/String;Ljava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "getTitle", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaItemStatusInfo {
    @SerializedName("description")
    @NotNull
    private final String description;
    @SerializedName("title")
    @NotNull
    private final String title;

    public ClassifiedsYoulaItemStatusInfo(@NotNull String title, @NotNull String description) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        this.title = title;
        this.description = description;
    }

    public static /* synthetic */ ClassifiedsYoulaItemStatusInfo copy$default(ClassifiedsYoulaItemStatusInfo classifiedsYoulaItemStatusInfo, String str, String str2, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = classifiedsYoulaItemStatusInfo.title;
        }
        if ((i9 & 2) != 0) {
            str2 = classifiedsYoulaItemStatusInfo.description;
        }
        return classifiedsYoulaItemStatusInfo.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final String component2() {
        return this.description;
    }

    @NotNull
    public final ClassifiedsYoulaItemStatusInfo copy(@NotNull String title, @NotNull String description) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        return new ClassifiedsYoulaItemStatusInfo(title, description);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaItemStatusInfo) {
            ClassifiedsYoulaItemStatusInfo classifiedsYoulaItemStatusInfo = (ClassifiedsYoulaItemStatusInfo) obj;
            return Intrinsics.areEqual(this.title, classifiedsYoulaItemStatusInfo.title) && Intrinsics.areEqual(this.description, classifiedsYoulaItemStatusInfo.description);
        }
        return false;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (this.title.hashCode() * 31) + this.description.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.title;
        String str2 = this.description;
        return "ClassifiedsYoulaItemStatusInfo(title=" + str + ", description=" + str2 + ")";
    }
}