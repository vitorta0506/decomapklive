package com.vk.sdk.api.board.dto;

import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010Jz\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\u0003HÖ\u0001J\t\u0010)\u001a\u00020\u000bHÖ\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0013\u0010\u0010R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0014\u0010\u0010R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0015R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0015R\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0018\u0010\u0010R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0019\u0010\u0010¨\u0006*"}, d2 = {"Lcom/vk/sdk/api/board/dto/BoardTopic;", "", "comments", "", "created", "createdBy", "id", "isClosed", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "isFixed", "title", "", "updated", "updatedBy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getComments", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCreated", "getCreatedBy", "getId", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getTitle", "()Ljava/lang/String;", "getUpdated", "getUpdatedBy", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/sdk/api/board/dto/BoardTopic;", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BoardTopic {
    @SerializedName("comments")
    @Nullable
    private final Integer comments;
    @SerializedName("created")
    @Nullable
    private final Integer created;
    @SerializedName("created_by")
    @Nullable
    private final Integer createdBy;
    @SerializedName("id")
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f35750id;
    @SerializedName("is_closed")
    @Nullable
    private final BaseBoolInt isClosed;
    @SerializedName("is_fixed")
    @Nullable
    private final BaseBoolInt isFixed;
    @SerializedName("title")
    @Nullable
    private final String title;
    @SerializedName("updated")
    @Nullable
    private final Integer updated;
    @SerializedName("updated_by")
    @Nullable
    private final Integer updatedBy;

    public BoardTopic() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public BoardTopic(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str, @Nullable Integer num5, @Nullable Integer num6) {
        this.comments = num;
        this.created = num2;
        this.createdBy = num3;
        this.f35750id = num4;
        this.isClosed = baseBoolInt;
        this.isFixed = baseBoolInt2;
        this.title = str;
        this.updated = num5;
        this.updatedBy = num6;
    }

    @Nullable
    public final Integer component1() {
        return this.comments;
    }

    @Nullable
    public final Integer component2() {
        return this.created;
    }

    @Nullable
    public final Integer component3() {
        return this.createdBy;
    }

    @Nullable
    public final Integer component4() {
        return this.f35750id;
    }

    @Nullable
    public final BaseBoolInt component5() {
        return this.isClosed;
    }

    @Nullable
    public final BaseBoolInt component6() {
        return this.isFixed;
    }

    @Nullable
    public final String component7() {
        return this.title;
    }

    @Nullable
    public final Integer component8() {
        return this.updated;
    }

    @Nullable
    public final Integer component9() {
        return this.updatedBy;
    }

    @NotNull
    public final BoardTopic copy(@Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable BaseBoolInt baseBoolInt, @Nullable BaseBoolInt baseBoolInt2, @Nullable String str, @Nullable Integer num5, @Nullable Integer num6) {
        return new BoardTopic(num, num2, num3, num4, baseBoolInt, baseBoolInt2, str, num5, num6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BoardTopic) {
            BoardTopic boardTopic = (BoardTopic) obj;
            return Intrinsics.areEqual(this.comments, boardTopic.comments) && Intrinsics.areEqual(this.created, boardTopic.created) && Intrinsics.areEqual(this.createdBy, boardTopic.createdBy) && Intrinsics.areEqual(this.f35750id, boardTopic.f35750id) && this.isClosed == boardTopic.isClosed && this.isFixed == boardTopic.isFixed && Intrinsics.areEqual(this.title, boardTopic.title) && Intrinsics.areEqual(this.updated, boardTopic.updated) && Intrinsics.areEqual(this.updatedBy, boardTopic.updatedBy);
        }
        return false;
    }

    @Nullable
    public final Integer getComments() {
        return this.comments;
    }

    @Nullable
    public final Integer getCreated() {
        return this.created;
    }

    @Nullable
    public final Integer getCreatedBy() {
        return this.createdBy;
    }

    @Nullable
    public final Integer getId() {
        return this.f35750id;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    public final Integer getUpdated() {
        return this.updated;
    }

    @Nullable
    public final Integer getUpdatedBy() {
        return this.updatedBy;
    }

    public int hashCode() {
        Integer num = this.comments;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.created;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.createdBy;
        int hashCode3 = (hashCode2 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.f35750id;
        int hashCode4 = (hashCode3 + (num4 == null ? 0 : num4.hashCode())) * 31;
        BaseBoolInt baseBoolInt = this.isClosed;
        int hashCode5 = (hashCode4 + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        BaseBoolInt baseBoolInt2 = this.isFixed;
        int hashCode6 = (hashCode5 + (baseBoolInt2 == null ? 0 : baseBoolInt2.hashCode())) * 31;
        String str = this.title;
        int hashCode7 = (hashCode6 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num5 = this.updated;
        int hashCode8 = (hashCode7 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.updatedBy;
        return hashCode8 + (num6 != null ? num6.hashCode() : 0);
    }

    @Nullable
    public final BaseBoolInt isClosed() {
        return this.isClosed;
    }

    @Nullable
    public final BaseBoolInt isFixed() {
        return this.isFixed;
    }

    @NotNull
    public String toString() {
        Integer num = this.comments;
        Integer num2 = this.created;
        Integer num3 = this.createdBy;
        Integer num4 = this.f35750id;
        BaseBoolInt baseBoolInt = this.isClosed;
        BaseBoolInt baseBoolInt2 = this.isFixed;
        String str = this.title;
        Integer num5 = this.updated;
        Integer num6 = this.updatedBy;
        return "BoardTopic(comments=" + num + ", created=" + num2 + ", createdBy=" + num3 + ", id=" + num4 + ", isClosed=" + baseBoolInt + ", isFixed=" + baseBoolInt2 + ", title=" + str + ", updated=" + num5 + ", updatedBy=" + num6 + ")";
    }

    public /* synthetic */ BoardTopic(Integer num, Integer num2, Integer num3, Integer num4, BaseBoolInt baseBoolInt, BaseBoolInt baseBoolInt2, String str, Integer num5, Integer num6, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : num2, (i9 & 4) != 0 ? null : num3, (i9 & 8) != 0 ? null : num4, (i9 & 16) != 0 ? null : baseBoolInt, (i9 & 32) != 0 ? null : baseBoolInt2, (i9 & 64) != 0 ? null : str, (i9 & 128) != 0 ? null : num5, (i9 & 256) == 0 ? num6 : null);
    }
}
