package com.vk.sdk.api.wall.dto;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallCommentDonutPlaceholder;", "", ViewHierarchyConstants.TEXT_KEY, "", "(Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallWallCommentDonutPlaceholder {
    @SerializedName(ViewHierarchyConstants.TEXT_KEY)
    @NotNull
    private final String text;

    public WallWallCommentDonutPlaceholder(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.text = text;
    }

    public static /* synthetic */ WallWallCommentDonutPlaceholder copy$default(WallWallCommentDonutPlaceholder wallWallCommentDonutPlaceholder, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = wallWallCommentDonutPlaceholder.text;
        }
        return wallWallCommentDonutPlaceholder.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.text;
    }

    @NotNull
    public final WallWallCommentDonutPlaceholder copy(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new WallWallCommentDonutPlaceholder(text);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WallWallCommentDonutPlaceholder) && Intrinsics.areEqual(this.text, ((WallWallCommentDonutPlaceholder) obj).text);
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        return this.text.hashCode();
    }

    @NotNull
    public String toString() {
        String str = this.text;
        return "WallWallCommentDonutPlaceholder(text=" + str + ")";
    }
}
