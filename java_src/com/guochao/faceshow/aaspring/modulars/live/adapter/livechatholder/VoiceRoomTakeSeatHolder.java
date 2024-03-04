package com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder;

import android.view.View;
import androidx.fragment.app.Fragment;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.databinding.LayoutVoiceRoomTakeSeatBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomTakeSeatHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "fragment", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;", "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V", "viewBinding", "Lcom/guochao/faceshow/databinding/LayoutVoiceRoomTakeSeatBinding;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomTakeSeatHolder extends BaseViewHolder {
    @NotNull
    private final LayoutVoiceRoomTakeSeatBinding viewBinding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomTakeSeatHolder(@NotNull View view, @NotNull final LiveChatFragment fragment) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        LayoutVoiceRoomTakeSeatBinding bind = LayoutVoiceRoomTakeSeatBinding.bind(view);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
        this.viewBinding = bind;
        bind.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VoiceRoomTakeSeatHolder.m453_init_$lambda0(LiveChatFragment.this, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m453_init_$lambda0(LiveChatFragment fragment, View view) {
        Integer num;
        VoiceRoomSeatControllerViewModel B2;
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        Fragment parentFragment = fragment.getParentFragment();
        WatcherLiveRoomFragment watcherLiveRoomFragment = parentFragment instanceof WatcherLiveRoomFragment ? (WatcherLiveRoomFragment) parentFragment : null;
        if (watcherLiveRoomFragment == null || (B2 = watcherLiveRoomFragment.B2()) == null) {
            num = null;
        } else {
            String liveRoomId = fragment.getCurrentLiveRoom().getLiveRoomId();
            Intrinsics.checkNotNullExpressionValue(liveRoomId, "fragment.currentLiveRoom.liveRoomId");
            num = Integer.valueOf(B2.takeSeat(liveRoomId, -1));
        }
        if (num != null && num.intValue() == -2) {
            ToastUtils.showToast$default(null, R.string.voice_room_tips_already_on_seat, 0, 5, null);
        }
    }
}
