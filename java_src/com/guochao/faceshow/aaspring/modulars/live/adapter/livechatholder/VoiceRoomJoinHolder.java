package com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.databinding.LayoutVoiceRoomJoinRoomBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "fragment", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;", "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V", "viewBinding", "Lcom/guochao/faceshow/databinding/LayoutVoiceRoomJoinRoomBinding;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomJoinHolder extends BaseViewHolder {
    @NotNull
    private final LayoutVoiceRoomJoinRoomBinding viewBinding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomJoinHolder(@NotNull View view, @NotNull final LiveChatFragment fragment) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        LayoutVoiceRoomJoinRoomBinding bind = LayoutVoiceRoomJoinRoomBinding.bind(view);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
        this.viewBinding = bind;
        FragmentActivity requireActivity = fragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "fragment.requireActivity()");
        final VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel = (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
        FragmentActivity requireActivity2 = fragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity2, "fragment.requireActivity()");
        final VoiceRoomMemberViewModel voiceRoomMemberViewModel = (VoiceRoomMemberViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity2).get(VoiceRoomMemberViewModel.class));
        voiceRoomSeatControllerViewModel.getRoomInfo().observe(fragment.getViewLifecycleOwner(), new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomJoinHolder.m451_init_$lambda2(VoiceRoomJoinHolder.this, fragment, voiceRoomSeatControllerViewModel, voiceRoomMemberViewModel, (VoiceRoomInfoModel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-2  reason: not valid java name */
    public static final void m451_init_$lambda2(VoiceRoomJoinHolder this$0, final LiveChatFragment fragment, final VoiceRoomSeatControllerViewModel viewModel, final VoiceRoomMemberViewModel memberViewModel, VoiceRoomInfoModel voiceRoomInfoModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        Intrinsics.checkNotNullParameter(viewModel, "$viewModel");
        Intrinsics.checkNotNullParameter(memberViewModel, "$memberViewModel");
        if (voiceRoomInfoModel != null && voiceRoomInfoModel.getRoleType() == 30) {
            this$0.viewBinding.text.setText(this$0.itemView.getResources().getString(R.string.voice_room_tips_join_the_room));
            TextView textView = this$0.viewBinding.text;
            Drawable drawable = this$0.itemView.getResources().getDrawable(R.drawable.ic_voice_room_tips_join_room);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            Unit unit = Unit.INSTANCE;
            textView.setCompoundDrawablesRelative(null, null, drawable, null);
            LinearLayout root = this$0.viewBinding.getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "viewBinding.root");
            ViewExtendsKt.onClick$default(root, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoiceRoomJoinHolder.m452lambda2$lambda1(LiveChatFragment.this, viewModel, memberViewModel, view);
                }
            }, 1, null);
            return;
        }
        this$0.viewBinding.text.setText(this$0.itemView.getResources().getString(R.string.voice_room_setting_added));
        this$0.viewBinding.text.setCompoundDrawablesRelative(null, null, null, null);
        LinearLayout root2 = this$0.viewBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "viewBinding.root");
        ViewExtendsKt.onClick$default(root2, 0L, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lambda-2$lambda-1  reason: not valid java name */
    public static final void m452lambda2$lambda1(LiveChatFragment fragment, VoiceRoomSeatControllerViewModel viewModel, VoiceRoomMemberViewModel memberViewModel, View view) {
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        Intrinsics.checkNotNullParameter(viewModel, "$viewModel");
        Intrinsics.checkNotNullParameter(memberViewModel, "$memberViewModel");
        VoiceRoomBigInfoCardFragment.Companion.showJoinTips(fragment, viewModel, memberViewModel);
    }
}
