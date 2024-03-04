package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaItemAttribute;", "", "title", "", "slug", "type", "value", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSlug", "()Ljava/lang/String;", "getTitle", "getType", "getValue", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaItemAttribute {
    @SerializedName("slug")
    @NotNull
    private final String slug;
    @SerializedName("title")
    @NotNull
    private final String title;
    @SerializedName("type")
    @NotNull
    private final String type;
    @SerializedName("value")
    @NotNull
    private final String value;

    public ClassifiedsYoulaItemAttribute(@NotNull String title, @NotNull String slug, @NotNull String type, @NotNull String value) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        this.title = title;
        this.slug = slug;
        this.type = type;
        this.value = value;
    }

    public static /* synthetic */ ClassifiedsYoulaItemAttribute copy$default(ClassifiedsYoulaItemAttribute classifiedsYoulaItemAttribute, String str, String str2, String str3, String str4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = classifiedsYoulaItemAttribute.title;
        }
        if ((i9 & 2) != 0) {
            str2 = classifiedsYoulaItemAttribute.slug;
        }
        if ((i9 & 4) != 0) {
            str3 = classifiedsYoulaItemAttribute.type;
        }
        if ((i9 & 8) != 0) {
            str4 = classifiedsYoulaItemAttribute.value;
        }
        return classifiedsYoulaItemAttribute.copy(str, str2, str3, str4);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final String component2() {
        return this.slug;
    }

    @NotNull
    public final String component3() {
        return this.type;
    }

    @NotNull
    public final String component4() {
        return this.value;
    }

    @NotNull
    public final ClassifiedsYoulaItemAttribute copy(@NotNull String title, @NotNull String slug, @NotNull String type, @NotNull String value) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        return new ClassifiedsYoulaItemAttribute(title, slug, type, value);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassifiedsYoulaItemAttribute) {
            ClassifiedsYoulaItemAttribute classifiedsYoulaItemAttribute = (ClassifiedsYoulaItemAttribute) obj;
            return Intrinsics.areEqual(this.title, classifiedsYoulaItemAttribute.title) && Intrinsics.areEqual(this.slug, classifiedsYoulaItemAttribute.slug) && Intrinsics.areEqual(this.type, classifiedsYoulaItemAttribute.type) && Intrinsics.areEqual(this.value, classifiedsYoulaItemAttribute.value);
        }
        return false;
    }

    @NotNull
    public final String getSlug() {
        return this.slug;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        return (((((this.title.hashCode() * 31) + this.slug.hashCode()) * 31) + this.type.hashCode()) * 31) + this.value.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.title;
        String str2 = this.slug;
        String str3 = this.type;
        String str4 = this.value;
        return "ClassifiedsYoulaItemAttribute(title=" + str + ", slug=" + str2 + ", type=" + str3 + ", value=" + str4 + ")";
    }
}
