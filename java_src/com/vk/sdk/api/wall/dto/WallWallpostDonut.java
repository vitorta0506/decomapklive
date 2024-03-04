package com.vk.sdk.api.wall.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001#B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\nHÆ\u0003JH\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u00032\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\u0005HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0011R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006$"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;", "", "isDonut", "", "paidDuration", "", "placeholder", "Lcom/vk/sdk/api/wall/dto/WallWallpostDonutPlaceholder;", "canPublishFreeCopy", "editMode", "Lcom/vk/sdk/api/wall/dto/WallWallpostDonut$EditMode;", "(ZLjava/lang/Integer;Lcom/vk/sdk/api/wall/dto/WallWallpostDonutPlaceholder;Ljava/lang/Boolean;Lcom/vk/sdk/api/wall/dto/WallWallpostDonut$EditMode;)V", "getCanPublishFreeCopy", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getEditMode", "()Lcom/vk/sdk/api/wall/dto/WallWallpostDonut$EditMode;", "()Z", "getPaidDuration", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPlaceholder", "()Lcom/vk/sdk/api/wall/dto/WallWallpostDonutPlaceholder;", "component1", "component2", "component3", "component4", "component5", "copy", "(ZLjava/lang/Integer;Lcom/vk/sdk/api/wall/dto/WallWallpostDonutPlaceholder;Ljava/lang/Boolean;Lcom/vk/sdk/api/wall/dto/WallWallpostDonut$EditMode;)Lcom/vk/sdk/api/wall/dto/WallWallpostDonut;", "equals", "other", "hashCode", "toString", "", "EditMode", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WallWallpostDonut {
    @SerializedName("can_publish_free_copy")
    @Nullable
    private final Boolean canPublishFreeCopy;
    @SerializedName("edit_mode")
    @Nullable
    private final EditMode editMode;
    @SerializedName("is_donut")
    private final boolean isDonut;
    @SerializedName("paid_duration")
    @Nullable
    private final Integer paidDuration;
    @SerializedName("placeholder")
    @Nullable
    private final WallWallpostDonutPlaceholder placeholder;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallWallpostDonut$EditMode;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ALL", "DURATION", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes5.dex */
    public enum EditMode {
        ALL("all"),
        DURATION("duration");
        
        @NotNull
        private final String value;

        EditMode(String str) {
            this.value = str;
        }

        @NotNull
        public final String getValue() {
            return this.value;
        }
    }

    public WallWallpostDonut(boolean z10, @Nullable Integer num, @Nullable WallWallpostDonutPlaceholder wallWallpostDonutPlaceholder, @Nullable Boolean bool, @Nullable EditMode editMode) {
        this.isDonut = z10;
        this.paidDuration = num;
        this.placeholder = wallWallpostDonutPlaceholder;
        this.canPublishFreeCopy = bool;
        this.editMode = editMode;
    }

    public static /* synthetic */ WallWallpostDonut copy$default(WallWallpostDonut wallWallpostDonut, boolean z10, Integer num, WallWallpostDonutPlaceholder wallWallpostDonutPlaceholder, Boolean bool, EditMode editMode, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = wallWallpostDonut.isDonut;
        }
        if ((i9 & 2) != 0) {
            num = wallWallpostDonut.paidDuration;
        }
        Integer num2 = num;
        if ((i9 & 4) != 0) {
            wallWallpostDonutPlaceholder = wallWallpostDonut.placeholder;
        }
        WallWallpostDonutPlaceholder wallWallpostDonutPlaceholder2 = wallWallpostDonutPlaceholder;
        if ((i9 & 8) != 0) {
            bool = wallWallpostDonut.canPublishFreeCopy;
        }
        Boolean bool2 = bool;
        if ((i9 & 16) != 0) {
            editMode = wallWallpostDonut.editMode;
        }
        return wallWallpostDonut.copy(z10, num2, wallWallpostDonutPlaceholder2, bool2, editMode);
    }

    public final boolean component1() {
        return this.isDonut;
    }

    @Nullable
    public final Integer component2() {
        return this.paidDuration;
    }

    @Nullable
    public final WallWallpostDonutPlaceholder component3() {
        return this.placeholder;
    }

    @Nullable
    public final Boolean component4() {
        return this.canPublishFreeCopy;
    }

    @Nullable
    public final EditMode component5() {
        return this.editMode;
    }

    @NotNull
    public final WallWallpostDonut copy(boolean z10, @Nullable Integer num, @Nullable WallWallpostDonutPlaceholder wallWallpostDonutPlaceholder, @Nullable Boolean bool, @Nullable EditMode editMode) {
        return new WallWallpostDonut(z10, num, wallWallpostDonutPlaceholder, bool, editMode);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WallWallpostDonut) {
            WallWallpostDonut wallWallpostDonut = (WallWallpostDonut) obj;
            return this.isDonut == wallWallpostDonut.isDonut && Intrinsics.areEqual(this.paidDuration, wallWallpostDonut.paidDuration) && Intrinsics.areEqual(this.placeholder, wallWallpostDonut.placeholder) && Intrinsics.areEqual(this.canPublishFreeCopy, wallWallpostDonut.canPublishFreeCopy) && this.editMode == wallWallpostDonut.editMode;
        }
        return false;
    }

    @Nullable
    public final Boolean getCanPublishFreeCopy() {
        return this.canPublishFreeCopy;
    }

    @Nullable
    public final EditMode getEditMode() {
        return this.editMode;
    }

    @Nullable
    public final Integer getPaidDuration() {
        return this.paidDuration;
    }

    @Nullable
    public final WallWallpostDonutPlaceholder getPlaceholder() {
        return this.placeholder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    public int hashCode() {
        boolean z10 = this.isDonut;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int i9 = r02 * 31;
        Integer num = this.paidDuration;
        int hashCode = (i9 + (num == null ? 0 : num.hashCode())) * 31;
        WallWallpostDonutPlaceholder wallWallpostDonutPlaceholder = this.placeholder;
        int hashCode2 = (hashCode + (wallWallpostDonutPlaceholder == null ? 0 : wallWallpostDonutPlaceholder.hashCode())) * 31;
        Boolean bool = this.canPublishFreeCopy;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        EditMode editMode = this.editMode;
        return hashCode3 + (editMode != null ? editMode.hashCode() : 0);
    }

    public final boolean isDonut() {
        return this.isDonut;
    }

    @NotNull
    public String toString() {
        boolean z10 = this.isDonut;
        Integer num = this.paidDuration;
        WallWallpostDonutPlaceholder wallWallpostDonutPlaceholder = this.placeholder;
        Boolean bool = this.canPublishFreeCopy;
        EditMode editMode = this.editMode;
        return "WallWallpostDonut(isDonut=" + z10 + ", paidDuration=" + num + ", placeholder=" + wallWallpostDonutPlaceholder + ", canPublishFreeCopy=" + bool + ", editMode=" + editMode + ")";
    }

    public /* synthetic */ WallWallpostDonut(boolean z10, Integer num, WallWallpostDonutPlaceholder wallWallpostDonutPlaceholder, Boolean bool, EditMode editMode, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : wallWallpostDonutPlaceholder, (i9 & 8) != 0 ? null : bool, (i9 & 16) != 0 ? null : editMode);
    }
}
