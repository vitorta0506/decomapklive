package com.vk.sdk.api.widgets.dto;

import com.google.gson.annotations.SerializedName;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J8\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/vk/sdk/api/widgets/dto/WidgetsCommentReplies;", "", "canPost", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "replies", "", "Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/util/List;)V", "getCanPost", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getReplies", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "(Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/sdk/api/widgets/dto/WidgetsCommentReplies;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class WidgetsCommentReplies {
    @SerializedName("can_post")
    @Nullable
    private final BaseBoolInt canPost;
    @SerializedName(AnimatedPasterJsonConfig.CONFIG_COUNT)
    @Nullable
    private final Integer count;
    @SerializedName("replies")
    @Nullable
    private final List<WidgetsCommentRepliesItem> replies;

    public WidgetsCommentReplies() {
        this(null, null, null, 7, null);
    }

    public WidgetsCommentReplies(@Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable List<WidgetsCommentRepliesItem> list) {
        this.canPost = baseBoolInt;
        this.count = num;
        this.replies = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ WidgetsCommentReplies copy$default(WidgetsCommentReplies widgetsCommentReplies, BaseBoolInt baseBoolInt, Integer num, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            baseBoolInt = widgetsCommentReplies.canPost;
        }
        if ((i9 & 2) != 0) {
            num = widgetsCommentReplies.count;
        }
        if ((i9 & 4) != 0) {
            list = widgetsCommentReplies.replies;
        }
        return widgetsCommentReplies.copy(baseBoolInt, num, list);
    }

    @Nullable
    public final BaseBoolInt component1() {
        return this.canPost;
    }

    @Nullable
    public final Integer component2() {
        return this.count;
    }

    @Nullable
    public final List<WidgetsCommentRepliesItem> component3() {
        return this.replies;
    }

    @NotNull
    public final WidgetsCommentReplies copy(@Nullable BaseBoolInt baseBoolInt, @Nullable Integer num, @Nullable List<WidgetsCommentRepliesItem> list) {
        return new WidgetsCommentReplies(baseBoolInt, num, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WidgetsCommentReplies) {
            WidgetsCommentReplies widgetsCommentReplies = (WidgetsCommentReplies) obj;
            return this.canPost == widgetsCommentReplies.canPost && Intrinsics.areEqual(this.count, widgetsCommentReplies.count) && Intrinsics.areEqual(this.replies, widgetsCommentReplies.replies);
        }
        return false;
    }

    @Nullable
    public final BaseBoolInt getCanPost() {
        return this.canPost;
    }

    @Nullable
    public final Integer getCount() {
        return this.count;
    }

    @Nullable
    public final List<WidgetsCommentRepliesItem> getReplies() {
        return this.replies;
    }

    public int hashCode() {
        BaseBoolInt baseBoolInt = this.canPost;
        int hashCode = (baseBoolInt == null ? 0 : baseBoolInt.hashCode()) * 31;
        Integer num = this.count;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        List<WidgetsCommentRepliesItem> list = this.replies;
        return hashCode2 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        BaseBoolInt baseBoolInt = this.canPost;
        Integer num = this.count;
        List<WidgetsCommentRepliesItem> list = this.replies;
        return "WidgetsCommentReplies(canPost=" + baseBoolInt + ", count=" + num + ", replies=" + list + ")";
    }

    public /* synthetic */ WidgetsCommentReplies(BaseBoolInt baseBoolInt, Integer num, List list, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : baseBoolInt, (i9 & 2) != 0 ? null : num, (i9 & 4) != 0 ? null : list);
    }
}