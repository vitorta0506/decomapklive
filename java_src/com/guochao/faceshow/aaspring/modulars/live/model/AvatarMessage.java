package com.guochao.faceshow.aaspring.modulars.live.model;

import com.guochao.faceshow.utils.Contants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J%\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/model/AvatarMessage;", "", Contants.USER_ID, "", "avatarList", "", "(Ljava/lang/String;Ljava/util/List;)V", "getAvatarList", "()Ljava/util/List;", "getUserId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AvatarMessage {
    @NotNull
    private final List<String> avatarList;
    @Nullable
    private final String userId;

    public AvatarMessage(@Nullable String str, @NotNull List<String> avatarList) {
        Intrinsics.checkNotNullParameter(avatarList, "avatarList");
        this.userId = str;
        this.avatarList = avatarList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AvatarMessage copy$default(AvatarMessage avatarMessage, String str, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = avatarMessage.userId;
        }
        if ((i9 & 2) != 0) {
            list = avatarMessage.avatarList;
        }
        return avatarMessage.copy(str, list);
    }

    @Nullable
    public final String component1() {
        return this.userId;
    }

    @NotNull
    public final List<String> component2() {
        return this.avatarList;
    }

    @NotNull
    public final AvatarMessage copy(@Nullable String str, @NotNull List<String> avatarList) {
        Intrinsics.checkNotNullParameter(avatarList, "avatarList");
        return new AvatarMessage(str, avatarList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AvatarMessage) {
            AvatarMessage avatarMessage = (AvatarMessage) obj;
            return Intrinsics.areEqual(this.userId, avatarMessage.userId) && Intrinsics.areEqual(this.avatarList, avatarMessage.avatarList);
        }
        return false;
    }

    @NotNull
    public final List<String> getAvatarList() {
        return this.avatarList;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        String str = this.userId;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.avatarList.hashCode();
    }

    @NotNull
    public String toString() {
        return "AvatarMessage(userId=" + this.userId + ", avatarList=" + this.avatarList + ')';
    }
}
