package com.vk.sdk.api.stories.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import com.vk.sdk.api.users.dto.UsersUserFull;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\tR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/vk/sdk/api/stories/dto/StoriesViewersItem;", "", "isLiked", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "user", "Lcom/vk/sdk/api/users/dto/UsersUserFull;", "(ZLcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/users/dto/UsersUserFull;)V", "()Z", "getUser", "()Lcom/vk/sdk/api/users/dto/UsersUserFull;", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class StoriesViewersItem {
    @SerializedName("is_liked")
    private final boolean isLiked;
    @SerializedName("user")
    @Nullable
    private final UsersUserFull user;
    @SerializedName(AccessToken.USER_ID_KEY)
    @NotNull
    private final UserId userId;

    public StoriesViewersItem(boolean z10, @NotNull UserId userId, @Nullable UsersUserFull usersUserFull) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.isLiked = z10;
        this.userId = userId;
        this.user = usersUserFull;
    }

    public static /* synthetic */ StoriesViewersItem copy$default(StoriesViewersItem storiesViewersItem, boolean z10, UserId userId, UsersUserFull usersUserFull, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = storiesViewersItem.isLiked;
        }
        if ((i9 & 2) != 0) {
            userId = storiesViewersItem.userId;
        }
        if ((i9 & 4) != 0) {
            usersUserFull = storiesViewersItem.user;
        }
        return storiesViewersItem.copy(z10, userId, usersUserFull);
    }

    public final boolean component1() {
        return this.isLiked;
    }

    @NotNull
    public final UserId component2() {
        return this.userId;
    }

    @Nullable
    public final UsersUserFull component3() {
        return this.user;
    }

    @NotNull
    public final StoriesViewersItem copy(boolean z10, @NotNull UserId userId, @Nullable UsersUserFull usersUserFull) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new StoriesViewersItem(z10, userId, usersUserFull);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StoriesViewersItem) {
            StoriesViewersItem storiesViewersItem = (StoriesViewersItem) obj;
            return this.isLiked == storiesViewersItem.isLiked && Intrinsics.areEqual(this.userId, storiesViewersItem.userId) && Intrinsics.areEqual(this.user, storiesViewersItem.user);
        }
        return false;
    }

    @Nullable
    public final UsersUserFull getUser() {
        return this.user;
    }

    @NotNull
    public final UserId getUserId() {
        return this.userId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public int hashCode() {
        boolean z10 = this.isLiked;
        ?? r02 = z10;
        if (z10) {
            r02 = 1;
        }
        int hashCode = ((r02 * 31) + this.userId.hashCode()) * 31;
        UsersUserFull usersUserFull = this.user;
        return hashCode + (usersUserFull == null ? 0 : usersUserFull.hashCode());
    }

    public final boolean isLiked() {
        return this.isLiked;
    }

    @NotNull
    public String toString() {
        boolean z10 = this.isLiked;
        UserId userId = this.userId;
        UsersUserFull usersUserFull = this.user;
        return "StoriesViewersItem(isLiked=" + z10 + ", userId=" + userId + ", user=" + usersUserFull + ")";
    }

    public /* synthetic */ StoriesViewersItem(boolean z10, UserId userId, UsersUserFull usersUserFull, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, userId, (i9 & 4) != 0 ? null : usersUserFull);
    }
}
