package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\bJ&\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedExpertCardWidgetRating;", "", "value", "", "highlighted", "", "(Ljava/lang/Float;Ljava/lang/Boolean;)V", "getHighlighted", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getValue", "()Ljava/lang/Float;", "Ljava/lang/Float;", "component1", "component2", "copy", "(Ljava/lang/Float;Ljava/lang/Boolean;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedExpertCardWidgetRating;", "equals", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedExpertCardWidgetRating {
    @SerializedName("highlighted")
    @Nullable
    private final Boolean highlighted;
    @SerializedName("value")
    @Nullable
    private final Float value;

    public NewsfeedExpertCardWidgetRating() {
        this(null, null, 3, null);
    }

    public NewsfeedExpertCardWidgetRating(@Nullable Float f10, @Nullable Boolean bool) {
        this.value = f10;
        this.highlighted = bool;
    }

    public static /* synthetic */ NewsfeedExpertCardWidgetRating copy$default(NewsfeedExpertCardWidgetRating newsfeedExpertCardWidgetRating, Float f10, Boolean bool, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            f10 = newsfeedExpertCardWidgetRating.value;
        }
        if ((i9 & 2) != 0) {
            bool = newsfeedExpertCardWidgetRating.highlighted;
        }
        return newsfeedExpertCardWidgetRating.copy(f10, bool);
    }

    @Nullable
    public final Float component1() {
        return this.value;
    }

    @Nullable
    public final Boolean component2() {
        return this.highlighted;
    }

    @NotNull
    public final NewsfeedExpertCardWidgetRating copy(@Nullable Float f10, @Nullable Boolean bool) {
        return new NewsfeedExpertCardWidgetRating(f10, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedExpertCardWidgetRating) {
            NewsfeedExpertCardWidgetRating newsfeedExpertCardWidgetRating = (NewsfeedExpertCardWidgetRating) obj;
            return Intrinsics.areEqual((Object) this.value, (Object) newsfeedExpertCardWidgetRating.value) && Intrinsics.areEqual(this.highlighted, newsfeedExpertCardWidgetRating.highlighted);
        }
        return false;
    }

    @Nullable
    public final Boolean getHighlighted() {
        return this.highlighted;
    }

    @Nullable
    public final Float getValue() {
        return this.value;
    }

    public int hashCode() {
        Float f10 = this.value;
        int hashCode = (f10 == null ? 0 : f10.hashCode()) * 31;
        Boolean bool = this.highlighted;
        return hashCode + (bool != null ? bool.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Float f10 = this.value;
        Boolean bool = this.highlighted;
        return "NewsfeedExpertCardWidgetRating(value=" + f10 + ", highlighted=" + bool + ")";
    }

    public /* synthetic */ NewsfeedExpertCardWidgetRating(Float f10, Boolean bool, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : f10, (i9 & 2) != 0 ? null : bool);
    }
}
