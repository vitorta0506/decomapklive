package com.vk.sdk.api.widgets.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/vk/sdk/api/widgets/dto/WidgetsGetCommentsResponse;", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "posts", "", "Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetComment;", "(ILjava/util/List;)V", "getCount", "()I", "getPosts", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WidgetsGetCommentsResponse {
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    private final int count;
    @SerializedName("posts")
    @NotNull
    private final List<WidgetsWidgetComment> posts;

    public WidgetsGetCommentsResponse(int i9, @NotNull List<WidgetsWidgetComment> posts) {
        Intrinsics.checkNotNullParameter(posts, "posts");
        this.count = i9;
        this.posts = posts;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WidgetsGetCommentsResponse copy$default(WidgetsGetCommentsResponse widgetsGetCommentsResponse, int i9, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = widgetsGetCommentsResponse.count;
        }
        if ((i10 & 2) != 0) {
            list = widgetsGetCommentsResponse.posts;
        }
        return widgetsGetCommentsResponse.copy(i9, list);
    }

    public final int component1() {
        return this.count;
    }

    @NotNull
    public final List<WidgetsWidgetComment> component2() {
        return this.posts;
    }

    @NotNull
    public final WidgetsGetCommentsResponse copy(int i9, @NotNull List<WidgetsWidgetComment> posts) {
        Intrinsics.checkNotNullParameter(posts, "posts");
        return new WidgetsGetCommentsResponse(i9, posts);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WidgetsGetCommentsResponse) {
            WidgetsGetCommentsResponse widgetsGetCommentsResponse = (WidgetsGetCommentsResponse) obj;
            return this.count == widgetsGetCommentsResponse.count && Intrinsics.areEqual(this.posts, widgetsGetCommentsResponse.posts);
        }
        return false;
    }

    public final int getCount() {
        return this.count;
    }

    @NotNull
    public final List<WidgetsWidgetComment> getPosts() {
        return this.posts;
    }

    public int hashCode() {
        return (this.count * 31) + this.posts.hashCode();
    }

    @NotNull
    public String toString() {
        int i9 = this.count;
        List<WidgetsWidgetComment> list = this.posts;
        return "WidgetsGetCommentsResponse(count=" + i9 + ", posts=" + list + ")";
    }
}
