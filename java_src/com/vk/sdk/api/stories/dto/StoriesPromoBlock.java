package com.vk.sdk.api.stories.dto;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesPromoBlock;", "", "name", "", "photo50", "photo100", "notAnimated", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getName", "()Ljava/lang/String;", "getNotAnimated", "()Z", "getPhoto100", "getPhoto50", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesPromoBlock {
    @SerializedName("name")
    @NotNull
    private final String name;
    @SerializedName("not_animated")
    private final boolean notAnimated;
    @SerializedName("photo_100")
    @NotNull
    private final String photo100;
    @SerializedName("photo_50")
    @NotNull
    private final String photo50;

    public StoriesPromoBlock(@NotNull String name, @NotNull String photo50, @NotNull String photo100, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(photo50, "photo50");
        Intrinsics.checkNotNullParameter(photo100, "photo100");
        this.name = name;
        this.photo50 = photo50;
        this.photo100 = photo100;
        this.notAnimated = z10;
    }

    public static /* synthetic */ StoriesPromoBlock copy$default(StoriesPromoBlock storiesPromoBlock, String str, String str2, String str3, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = storiesPromoBlock.name;
        }
        if ((i9 & 2) != 0) {
            str2 = storiesPromoBlock.photo50;
        }
        if ((i9 & 4) != 0) {
            str3 = storiesPromoBlock.photo100;
        }
        if ((i9 & 8) != 0) {
            z10 = storiesPromoBlock.notAnimated;
        }
        return storiesPromoBlock.copy(str, str2, str3, z10);
    }

    @NotNull
    public final String component1() {
        return this.name;
    }

    @NotNull
    public final String component2() {
        return this.photo50;
    }

    @NotNull
    public final String component3() {
        return this.photo100;
    }

    public final boolean component4() {
        return this.notAnimated;
    }

    @NotNull
    public final StoriesPromoBlock copy(@NotNull String name, @NotNull String photo50, @NotNull String photo100, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(photo50, "photo50");
        Intrinsics.checkNotNullParameter(photo100, "photo100");
        return new StoriesPromoBlock(name, photo50, photo100, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesPromoBlock) {
            StoriesPromoBlock storiesPromoBlock = (StoriesPromoBlock) obj;
            return Intrinsics.areEqual(this.name, storiesPromoBlock.name) && Intrinsics.areEqual(this.photo50, storiesPromoBlock.photo50) && Intrinsics.areEqual(this.photo100, storiesPromoBlock.photo100) && this.notAnimated == storiesPromoBlock.notAnimated;
        }
        return false;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final boolean getNotAnimated() {
        return this.notAnimated;
    }

    @NotNull
    public final String getPhoto100() {
        return this.photo100;
    }

    @NotNull
    public final String getPhoto50() {
        return this.photo50;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.name.hashCode() * 31) + this.photo50.hashCode()) * 31) + this.photo100.hashCode()) * 31;
        boolean z10 = this.notAnimated;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        return hashCode + i9;
    }

    @NotNull
    public String toString() {
        String str = this.name;
        String str2 = this.photo50;
        String str3 = this.photo100;
        boolean z10 = this.notAnimated;
        return "StoriesPromoBlock(name=" + str + ", photo50=" + str2 + ", photo100=" + str3 + ", notAnimated=" + z10 + ")";
    }
}
