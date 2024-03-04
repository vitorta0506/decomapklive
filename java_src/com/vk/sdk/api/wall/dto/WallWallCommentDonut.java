package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J&\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0002\u0010\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallCommentDonut;", "", "isDon", "", "placeholder", "Lcom/vk/sdk/api/wall/dto/WallWallCommentDonutPlaceholder;", "(Ljava/lang/Boolean;Lcom/vk/sdk/api/wall/dto/WallWallCommentDonutPlaceholder;)V", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getPlaceholder", "()Lcom/vk/sdk/api/wall/dto/WallWallCommentDonutPlaceholder;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Lcom/vk/sdk/api/wall/dto/WallWallCommentDonutPlaceholder;)Lcom/vk/sdk/api/wall/dto/WallWallCommentDonut;", "equals", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallWallCommentDonut {
    @SerializedName("is_don")
    @Nullable
    private final Boolean isDon;
    @SerializedName("placeholder")
    @Nullable
    private final WallWallCommentDonutPlaceholder placeholder;

    public WallWallCommentDonut() {
        this(null, null, 3, null);
    }

    public WallWallCommentDonut(@Nullable Boolean bool, @Nullable WallWallCommentDonutPlaceholder wallWallCommentDonutPlaceholder) {
        this.isDon = bool;
        this.placeholder = wallWallCommentDonutPlaceholder;
    }

    public static /* synthetic */ WallWallCommentDonut copy$default(WallWallCommentDonut wallWallCommentDonut, Boolean bool, WallWallCommentDonutPlaceholder wallWallCommentDonutPlaceholder, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            bool = wallWallCommentDonut.isDon;
        }
        if ((i9 & 2) != 0) {
            wallWallCommentDonutPlaceholder = wallWallCommentDonut.placeholder;
        }
        return wallWallCommentDonut.copy(bool, wallWallCommentDonutPlaceholder);
    }

    @Nullable
    public final Boolean component1() {
        return this.isDon;
    }

    @Nullable
    public final WallWallCommentDonutPlaceholder component2() {
        return this.placeholder;
    }

    @NotNull
    public final WallWallCommentDonut copy(@Nullable Boolean bool, @Nullable WallWallCommentDonutPlaceholder wallWallCommentDonutPlaceholder) {
        return new WallWallCommentDonut(bool, wallWallCommentDonutPlaceholder);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallWallCommentDonut) {
            WallWallCommentDonut wallWallCommentDonut = (WallWallCommentDonut) obj;
            return Intrinsics.areEqual(this.isDon, wallWallCommentDonut.isDon) && Intrinsics.areEqual(this.placeholder, wallWallCommentDonut.placeholder);
        }
        return false;
    }

    @Nullable
    public final WallWallCommentDonutPlaceholder getPlaceholder() {
        return this.placeholder;
    }

    public int hashCode() {
        Boolean bool = this.isDon;
        int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        WallWallCommentDonutPlaceholder wallWallCommentDonutPlaceholder = this.placeholder;
        return hashCode + (wallWallCommentDonutPlaceholder != null ? wallWallCommentDonutPlaceholder.hashCode() : 0);
    }

    @Nullable
    public final Boolean isDon() {
        return this.isDon;
    }

    @NotNull
    public String toString() {
        Boolean bool = this.isDon;
        WallWallCommentDonutPlaceholder wallWallCommentDonutPlaceholder = this.placeholder;
        return "WallWallCommentDonut(isDon=" + bool + ", placeholder=" + wallWallCommentDonutPlaceholder + ")";
    }

    public /* synthetic */ WallWallCommentDonut(Boolean bool, WallWallCommentDonutPlaceholder wallWallCommentDonutPlaceholder, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : bool, (i9 & 2) != 0 ? null : wallWallCommentDonutPlaceholder);
    }
}
