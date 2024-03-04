package com.vk.sdk.api.newsfeed.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.base.dto.BaseBoolInt;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J;\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001e"}, d2 = {"Lcom/vk/sdk/api/newsfeed/dto/NewsfeedListFull;", "", "id", "", "title", "", "noReposts", "Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "sourceIds", "", "Lcom/vk/dto/common/id/UserId;", "(ILjava/lang/String;Lcom/vk/sdk/api/base/dto/BaseBoolInt;Ljava/util/List;)V", "getId", "()I", "getNoReposts", "()Lcom/vk/sdk/api/base/dto/BaseBoolInt;", "getSourceIds", "()Ljava/util/List;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class NewsfeedListFull {
    @SerializedName("id")

    /* renamed from: id  reason: collision with root package name */
    private final int f35954id;
    @SerializedName("no_reposts")
    @Nullable
    private final BaseBoolInt noReposts;
    @SerializedName("source_ids")
    @Nullable
    private final List<UserId> sourceIds;
    @SerializedName("title")
    @NotNull
    private final String title;

    public NewsfeedListFull(int i9, @NotNull String title, @Nullable BaseBoolInt baseBoolInt, @Nullable List<UserId> list) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f35954id = i9;
        this.title = title;
        this.noReposts = baseBoolInt;
        this.sourceIds = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NewsfeedListFull copy$default(NewsfeedListFull newsfeedListFull, int i9, String str, BaseBoolInt baseBoolInt, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = newsfeedListFull.f35954id;
        }
        if ((i10 & 2) != 0) {
            str = newsfeedListFull.title;
        }
        if ((i10 & 4) != 0) {
            baseBoolInt = newsfeedListFull.noReposts;
        }
        if ((i10 & 8) != 0) {
            list = newsfeedListFull.sourceIds;
        }
        return newsfeedListFull.copy(i9, str, baseBoolInt, list);
    }

    public final int component1() {
        return this.f35954id;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @Nullable
    public final BaseBoolInt component3() {
        return this.noReposts;
    }

    @Nullable
    public final List<UserId> component4() {
        return this.sourceIds;
    }

    @NotNull
    public final NewsfeedListFull copy(int i9, @NotNull String title, @Nullable BaseBoolInt baseBoolInt, @Nullable List<UserId> list) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new NewsfeedListFull(i9, title, baseBoolInt, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NewsfeedListFull) {
            NewsfeedListFull newsfeedListFull = (NewsfeedListFull) obj;
            return this.f35954id == newsfeedListFull.f35954id && Intrinsics.areEqual(this.title, newsfeedListFull.title) && this.noReposts == newsfeedListFull.noReposts && Intrinsics.areEqual(this.sourceIds, newsfeedListFull.sourceIds);
        }
        return false;
    }

    public final int getId() {
        return this.f35954id;
    }

    @Nullable
    public final BaseBoolInt getNoReposts() {
        return this.noReposts;
    }

    @Nullable
    public final List<UserId> getSourceIds() {
        return this.sourceIds;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode = ((this.f35954id * 31) + this.title.hashCode()) * 31;
        BaseBoolInt baseBoolInt = this.noReposts;
        int hashCode2 = (hashCode + (baseBoolInt == null ? 0 : baseBoolInt.hashCode())) * 31;
        List<UserId> list = this.sourceIds;
        return hashCode2 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.f35954id;
        String str = this.title;
        BaseBoolInt baseBoolInt = this.noReposts;
        List<UserId> list = this.sourceIds;
        return "NewsfeedListFull(id=" + i9 + ", title=" + str + ", noReposts=" + baseBoolInt + ", sourceIds=" + list + ")";
    }

    public /* synthetic */ NewsfeedListFull(int i9, String str, BaseBoolInt baseBoolInt, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, str, (i10 & 4) != 0 ? null : baseBoolInt, (i10 & 8) != 0 ? null : list);
    }
}
