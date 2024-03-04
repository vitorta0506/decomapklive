package com.guochao.component.liveroomcommon.interfaces;

import a7.a;
import android.widget.ImageView;
import android.widget.TextView;
import com.guochao.component.liveroom.model.GCLiveRoomUserInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\bJ\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;", "", "getViewHolder", "Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;", "setLiveRoomOwnerUserInfo", "", "gcLiveRoomUserInfo", "Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;", "ViewHolder", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface LiveRoomTopInfoController {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static void setLiveRoomOwnerUserInfo(@NotNull LiveRoomTopInfoController liveRoomTopInfoController, @NotNull GCLiveRoomUserInfo gcLiveRoomUserInfo) {
            Intrinsics.checkNotNullParameter(gcLiveRoomUserInfo, "gcLiveRoomUserInfo");
            a.a(liveRoomTopInfoController, gcLiveRoomUserInfo);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;", "", "nickName", "Landroid/widget/TextView;", "liveRoomId", "avatar", "Landroid/widget/ImageView;", "(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V", "getAvatar", "()Landroid/widget/ImageView;", "getLiveRoomId", "()Landroid/widget/TextView;", "getNickName", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ViewHolder {
        @Nullable
        private final ImageView avatar;
        @Nullable
        private final TextView liveRoomId;
        @NotNull
        private final TextView nickName;

        public ViewHolder(@NotNull TextView nickName, @Nullable TextView textView, @Nullable ImageView imageView) {
            Intrinsics.checkNotNullParameter(nickName, "nickName");
            this.nickName = nickName;
            this.liveRoomId = textView;
            this.avatar = imageView;
        }

        @Nullable
        public final ImageView getAvatar() {
            return this.avatar;
        }

        @Nullable
        public final TextView getLiveRoomId() {
            return this.liveRoomId;
        }

        @NotNull
        public final TextView getNickName() {
            return this.nickName;
        }
    }

    @Nullable
    ViewHolder getViewHolder();

    void setLiveRoomOwnerUserInfo(@NotNull GCLiveRoomUserInfo gCLiveRoomUserInfo);
}
