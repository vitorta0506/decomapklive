package com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.databinding.LayoutVoiceRoomChatInviteBinding;
import com.guochao.lib_service_center.share.service.ShareProxy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomInviteHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "liveChatFragment", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;", "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V", "viewBinding", "Lcom/guochao/faceshow/databinding/LayoutVoiceRoomChatInviteBinding;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomInviteHolder extends BaseViewHolder {
    @NotNull
    private final LayoutVoiceRoomChatInviteBinding viewBinding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomInviteHolder(@NotNull final View view, @NotNull final LiveChatFragment liveChatFragment) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(liveChatFragment, "liveChatFragment");
        LayoutVoiceRoomChatInviteBinding bind = LayoutVoiceRoomChatInviteBinding.bind(view);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
        this.viewBinding = bind;
        bind.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VoiceRoomInviteHolder.m450_init_$lambda2(view, liveChatFragment, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-2  reason: not valid java name */
    public static final void m450_init_$lambda2(View view, LiveChatFragment liveChatFragment, View view2) {
        String liveRoomId;
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(liveChatFragment, "$liveChatFragment");
        Context context = view.getContext();
        FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
        Object navigation = o.a.c().a(RouterPath.ROUTER_GC_VOICE_ROOM_SHARE).navigation();
        Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.lib_service_center.share.service.ShareProxy");
        ShareProxy shareProxy = (ShareProxy) navigation;
        if (fragmentActivity == null || (liveRoomId = liveChatFragment.getCurrentLiveRoom().getLiveRoomId()) == null) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(liveRoomId, "liveRoomId");
        shareProxy.start(fragmentActivity, liveRoomId, "", "", Intrinsics.areEqual(b8.e.g().getUserId(), liveRoomId), null);
    }
}
