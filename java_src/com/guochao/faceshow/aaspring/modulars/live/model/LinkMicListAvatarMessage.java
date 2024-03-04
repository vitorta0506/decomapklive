package com.guochao.faceshow.aaspring.modulars.live.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0013\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J\u001d\u0010\t\u001a\u00020\u00002\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u001b\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicListAvatarMessage;", "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;", "list", "", "Lcom/guochao/faceshow/aaspring/modulars/live/model/AvatarMessage;", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LinkMicListAvatarMessage extends BaseLiveMessage {
    @Nullable
    private final List<AvatarMessage> list;

    public LinkMicListAvatarMessage(@Nullable List<AvatarMessage> list) {
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LinkMicListAvatarMessage copy$default(LinkMicListAvatarMessage linkMicListAvatarMessage, List list, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            list = linkMicListAvatarMessage.list;
        }
        return linkMicListAvatarMessage.copy(list);
    }

    @Nullable
    public final List<AvatarMessage> component1() {
        return this.list;
    }

    @NotNull
    public final LinkMicListAvatarMessage copy(@Nullable List<AvatarMessage> list) {
        return new LinkMicListAvatarMessage(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LinkMicListAvatarMessage) && Intrinsics.areEqual(this.list, ((LinkMicListAvatarMessage) obj).list);
    }

    @Nullable
    public final List<AvatarMessage> getList() {
        return this.list;
    }

    public int hashCode() {
        List<AvatarMessage> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    @NotNull
    public String toString() {
        return "LinkMicListAvatarMessage(list=" + this.list + ')';
    }
}
