package com.vk.sdk.api.groups.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import com.vk.sdk.api.base.dto.BaseImage;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsCover;", "", "enabled", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "images", "", "Lcom/vk/sdk/api/base/dto/BaseImage;", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;)V", "getEnabled", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getImages", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class GroupsCover {
    @SerializedName("enabled")
    @NotNull
    private final BaseBoolInt enabled;
    @SerializedName("images")
    @Nullable
    private final List<BaseImage> images;

    public GroupsCover(@NotNull BaseBoolInt enabled, @Nullable List<BaseImage> list) {
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        this.enabled = enabled;
        this.images = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GroupsCover copy$default(GroupsCover groupsCover, BaseBoolInt baseBoolInt, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseBoolInt = groupsCover.enabled;
        }
        if ((i9 & 2) != 0) {
            list = groupsCover.images;
        }
        return groupsCover.copy(baseBoolInt, list);
    }

    @NotNull
    public final BaseBoolInt component1() {
        return this.enabled;
    }

    @Nullable
    public final List<BaseImage> component2() {
        return this.images;
    }

    @NotNull
    public final GroupsCover copy(@NotNull BaseBoolInt enabled, @Nullable List<BaseImage> list) {
        Intrinsics.checkNotNullParameter(enabled, "enabled");
        return new GroupsCover(enabled, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GroupsCover) {
            GroupsCover groupsCover = (GroupsCover) obj;
            return this.enabled == groupsCover.enabled && Intrinsics.areEqual(this.images, groupsCover.images);
        }
        return false;
    }

    @NotNull
    public final BaseBoolInt getEnabled() {
        return this.enabled;
    }

    @Nullable
    public final List<BaseImage> getImages() {
        return this.images;
    }

    public int hashCode() {
        int hashCode = this.enabled.hashCode() * 31;
        List<BaseImage> list = this.images;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.enabled;
        List<BaseImage> list = this.images;
        return "GroupsCover(enabled=" + baseBoolInt + ", images=" + list + ")";
    }

    public /* synthetic */ GroupsCover(BaseBoolInt baseBoolInt, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseBoolInt, (i9 & 2) != 0 ? null : list);
    }
}
