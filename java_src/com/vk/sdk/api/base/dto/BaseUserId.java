package com.vk.sdk.api.base.dto;

import com.facebook.AccessToken;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseUserId;", "", Contants.USER_ID, "Lcom/vk/dto/common/id/UserId;", "(Lcom/vk/dto/common/id/UserId;)V", "getUserId", "()Lcom/vk/dto/common/id/UserId;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BaseUserId {
    @SerializedName(AccessToken.USER_ID_KEY)
    @Nullable
    private final UserId userId;

    public BaseUserId() {
        this(null, 1, null);
    }

    public BaseUserId(@Nullable UserId userId) {
        this.userId = userId;
    }

    public static /* synthetic */ BaseUserId copy$default(BaseUserId baseUserId, UserId userId, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            userId = baseUserId.userId;
        }
        return baseUserId.copy(userId);
    }

    @Nullable
    public final UserId component1() {
        return this.userId;
    }

    @NotNull
    public final BaseUserId copy(@Nullable UserId userId) {
        return new BaseUserId(userId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BaseUserId) && Intrinsics.areEqual(this.userId, ((BaseUserId) obj).userId);
    }

    @Nullable
    public final UserId getUserId() {
        return this.userId;
    }

    public int hashCode() {
        UserId userId = this.userId;
        if (userId == null) {
            return 0;
        }
        return userId.hashCode();
    }

    @NotNull
    public String toString() {
        UserId userId = this.userId;
        return "BaseUserId(userId=" + userId + ")";
    }

    public /* synthetic */ BaseUserId(UserId userId, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : userId);
    }
}
