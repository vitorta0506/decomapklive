package com.vk.sdk.api.utils.dto;

import com.google.gson.annotations.SerializedName;
import com.vk.dto.common.id.UserId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/vk/sdk/api/utils/dto/UtilsDomainResolved;", "", "objectId", "", "groupId", "Lcom/vk/dto/common/id/UserId;", "type", "Lcom/vk/sdk/api/utils/dto/UtilsDomainResolvedType;", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/utils/dto/UtilsDomainResolvedType;)V", "getGroupId", "()Lcom/vk/dto/common/id/UserId;", "getObjectId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getType", "()Lcom/vk/sdk/api/utils/dto/UtilsDomainResolvedType;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/utils/dto/UtilsDomainResolvedType;)Lcom/vk/sdk/api/utils/dto/UtilsDomainResolved;", "equals", "", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public final class UtilsDomainResolved {
    @SerializedName("group_id")
    @Nullable
    private final UserId groupId;
    @SerializedName("object_id")
    @Nullable
    private final Integer objectId;
    @SerializedName("type")
    @Nullable
    private final UtilsDomainResolvedType type;

    public UtilsDomainResolved() {
        this(null, null, null, 7, null);
    }

    public UtilsDomainResolved(@Nullable Integer num, @Nullable UserId userId, @Nullable UtilsDomainResolvedType utilsDomainResolvedType) {
        this.objectId = num;
        this.groupId = userId;
        this.type = utilsDomainResolvedType;
    }

    public static /* synthetic */ UtilsDomainResolved copy$default(UtilsDomainResolved utilsDomainResolved, Integer num, UserId userId, UtilsDomainResolvedType utilsDomainResolvedType, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = utilsDomainResolved.objectId;
        }
        if ((i9 & 2) != 0) {
            userId = utilsDomainResolved.groupId;
        }
        if ((i9 & 4) != 0) {
            utilsDomainResolvedType = utilsDomainResolved.type;
        }
        return utilsDomainResolved.copy(num, userId, utilsDomainResolvedType);
    }

    @Nullable
    public final Integer component1() {
        return this.objectId;
    }

    @Nullable
    public final UserId component2() {
        return this.groupId;
    }

    @Nullable
    public final UtilsDomainResolvedType component3() {
        return this.type;
    }

    @NotNull
    public final UtilsDomainResolved copy(@Nullable Integer num, @Nullable UserId userId, @Nullable UtilsDomainResolvedType utilsDomainResolvedType) {
        return new UtilsDomainResolved(num, userId, utilsDomainResolvedType);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UtilsDomainResolved) {
            UtilsDomainResolved utilsDomainResolved = (UtilsDomainResolved) obj;
            return Intrinsics.areEqual(this.objectId, utilsDomainResolved.objectId) && Intrinsics.areEqual(this.groupId, utilsDomainResolved.groupId) && this.type == utilsDomainResolved.type;
        }
        return false;
    }

    @Nullable
    public final UserId getGroupId() {
        return this.groupId;
    }

    @Nullable
    public final Integer getObjectId() {
        return this.objectId;
    }

    @Nullable
    public final UtilsDomainResolvedType getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.objectId;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        UserId userId = this.groupId;
        int hashCode2 = (hashCode + (userId == null ? 0 : userId.hashCode())) * 31;
        UtilsDomainResolvedType utilsDomainResolvedType = this.type;
        return hashCode2 + (utilsDomainResolvedType != null ? utilsDomainResolvedType.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        Integer num = this.objectId;
        UserId userId = this.groupId;
        UtilsDomainResolvedType utilsDomainResolvedType = this.type;
        return "UtilsDomainResolved(objectId=" + num + ", groupId=" + userId + ", type=" + utilsDomainResolvedType + ")";
    }

    public /* synthetic */ UtilsDomainResolved(Integer num, UserId userId, UtilsDomainResolvedType utilsDomainResolvedType, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : num, (i9 & 2) != 0 ? null : userId, (i9 & 4) != 0 ? null : utilsDomainResolvedType);
    }
}
