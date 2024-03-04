package com.vk.sdk.api.classifieds.dto;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaGroupsBlock;", "", "items", "", "Lcom/vk/sdk/api/classifieds/dto/ClassifiedsYoulaGroupsBlockItem;", "(Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ClassifiedsYoulaGroupsBlock {
    @SerializedName("items")
    @NotNull
    private final List<ClassifiedsYoulaGroupsBlockItem> items;

    public ClassifiedsYoulaGroupsBlock(@NotNull List<ClassifiedsYoulaGroupsBlockItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ClassifiedsYoulaGroupsBlock copy$default(ClassifiedsYoulaGroupsBlock classifiedsYoulaGroupsBlock, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = classifiedsYoulaGroupsBlock.items;
        }
        return classifiedsYoulaGroupsBlock.copy(list);
    }

    @NotNull
    public final List<ClassifiedsYoulaGroupsBlockItem> component1() {
        return this.items;
    }

    @NotNull
    public final ClassifiedsYoulaGroupsBlock copy(@NotNull List<ClassifiedsYoulaGroupsBlockItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new ClassifiedsYoulaGroupsBlock(items);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ClassifiedsYoulaGroupsBlock) && Intrinsics.areEqual(this.items, ((ClassifiedsYoulaGroupsBlock) obj).items);
    }

    @NotNull
    public final List<ClassifiedsYoulaGroupsBlockItem> getItems() {
        return this.items;
    }

    public int hashCode() {
        return this.items.hashCode();
    }

    @NotNull
    public String toString() {
        List<ClassifiedsYoulaGroupsBlockItem> list = this.items;
        return "ClassifiedsYoulaGroupsBlock(items=" + list + ")";
    }
}
