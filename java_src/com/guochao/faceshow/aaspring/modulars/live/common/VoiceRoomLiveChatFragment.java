package com.guochao.faceshow.aaspring.modulars.live.common;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomMoreFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.im_messages.IGCIMMessageDispatcherRegister;
import com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.VoiceRoomGiftFragment;
import com.guochao.faceshow.aaspring.modulars.live.adapter.AutoLiveChatAdapter;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\"\u0010#J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\f\u001a\u00020\u0005H\u0016J\u0012\u0010\r\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0017J\u0012\u0010\u000e\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0017J\u0012\u0010\u000f\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\b\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/common/VoiceRoomLiveChatFragment;", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;", "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;", "", "getLayoutId", "", "initPkIcon", "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "resetVoiceRoomChatList", "showGift", "showMore", "voiceSwitch", "onDestroyView", "Lo7/a;", "gcimMessage", "", "dispatchGCIMMessage", "Landroid/widget/ImageView;", "audioSwitch", "Landroid/widget/ImageView;", "getAudioSwitch", "()Landroid/widget/ImageView;", "setAudioSwitch", "(Landroid/widget/ImageView;)V", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class VoiceRoomLiveChatFragment extends LiveChatFragment implements GCIMMessageDispatcher {
    @BindView
    public ImageView audioSwitch;
    @NotNull
    private final Lazy viewModel$delegate;

    public VoiceRoomLiveChatFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.VoiceRoomLiveChatFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomLiveChatFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
    }

    private final VoiceRoomSeatControllerViewModel getViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-1  reason: not valid java name */
    public static final void m475onViewCreated$lambda1(VoiceRoomLiveChatFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ImageView audioSwitch = this$0.getAudioSwitch();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        audioSwitch.setSelected(it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: resetVoiceRoomChatList$lambda-3  reason: not valid java name */
    public static final void m476resetVoiceRoomChatList$lambda3(VoiceRoomLiveChatFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.getCurrentVoiceRoomModel().isVoiceRoomOwner() && !this$0.getCurrentVoiceRoomModel().isVoiceRoomAdministrator()) {
            if (this$0.getCurrentVoiceRoomModel().isVoiceRoomMember()) {
                AutoLiveChatAdapter autoLiveChatAdapter = this$0.mLiveChatAdapter;
                if (autoLiveChatAdapter != null) {
                    autoLiveChatAdapter.g(new LiveMessageModel("", new BaseLiveMessage()), false);
                    return;
                }
                return;
            }
            AutoLiveChatAdapter autoLiveChatAdapter2 = this$0.mLiveChatAdapter;
            if (autoLiveChatAdapter2 != null) {
                autoLiveChatAdapter2.g(new LiveMessageModel("LOCAL_VOICE_ROOM_JOIN_ROOM", new BaseLiveMessage()), false);
            }
            AutoLiveChatAdapter autoLiveChatAdapter3 = this$0.mLiveChatAdapter;
            if (autoLiveChatAdapter3 != null) {
                autoLiveChatAdapter3.g(new LiveMessageModel("", new BaseLiveMessage()), false);
                return;
            }
            return;
        }
        AutoLiveChatAdapter autoLiveChatAdapter4 = this$0.mLiveChatAdapter;
        if (autoLiveChatAdapter4 != null) {
            autoLiveChatAdapter4.g(new LiveMessageModel("LOCAL_VOICE_ROOM_INVITE", new BaseLiveMessage()), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: resetVoiceRoomChatList$lambda-4  reason: not valid java name */
    public static final void m477resetVoiceRoomChatList$lambda4(VoiceRoomLiveChatFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.addFocusMessage();
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher
    public boolean dispatchGCIMMessage(@NotNull o7.a gcimMessage) {
        AutoLiveChatAdapter autoLiveChatAdapter;
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        if ((gcimMessage instanceof VoiceRoomCMDMessageModel) && (autoLiveChatAdapter = this.mLiveChatAdapter) != null) {
            VoiceRoomCMDMessageModel voiceRoomCMDMessageModel = (VoiceRoomCMDMessageModel) gcimMessage;
            if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveAdminMessageModel) {
                VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveAdminMessageModel voiceRoomCMDRemoveAdminMessageModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveAdminMessageModel) gcimMessage;
                autoLiveChatAdapter.g(LiveMessageModelFactory.createAdminModel(voiceRoomCMDRemoveAdminMessageModel.getUserId(), voiceRoomCMDRemoveAdminMessageModel.getNickName(), false, voiceRoomCMDRemoveAdminMessageModel.getSmallImg()), false);
            } else {
                if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDAddAdminMessageModel) {
                    VoiceRoomCMDMessageModel.VoiceRoomCMDAddAdminMessageModel voiceRoomCMDAddAdminMessageModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDAddAdminMessageModel) gcimMessage;
                    autoLiveChatAdapter.g(LiveMessageModelFactory.createAdminModel(voiceRoomCMDAddAdminMessageModel.getUserId(), voiceRoomCMDAddAdminMessageModel.getNickName(), true, voiceRoomCMDAddAdminMessageModel.getSmallImg()), false);
                } else {
                    GCDialog gCDialog = null;
                    if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDSeatModeMessageModel) {
                        VoiceRoomCMDMessageModel.VoiceRoomCMDSeatModeMessageModel voiceRoomCMDSeatModeMessageModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDSeatModeMessageModel) gcimMessage;
                        String roomId = voiceRoomCMDSeatModeMessageModel.getRoomId();
                        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
                        if (!Intrinsics.areEqual(roomId, current != null ? current.getUserId() : null)) {
                            autoLiveChatAdapter.g(LiveMessageModelFactory.createLinkMicStatusChangeModel(getCurrentLiveRoom(), voiceRoomCMDSeatModeMessageModel.getMiroType() == 1), false);
                        }
                    } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDNatureModel) {
                        VoiceRoomCMDMessageModel.VoiceRoomCMDNatureModel voiceRoomCMDNatureModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDNatureModel) gcimMessage;
                        if (Intrinsics.areEqual(getCurrentLiveRoom().getLiveRoomId(), voiceRoomCMDNatureModel.getRoomId())) {
                            autoLiveChatAdapter.g(LiveMessageModelFactory.createNatureChangeModel(voiceRoomCMDNatureModel.getNature() == 1), false);
                        }
                    } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDUnMuteModel) {
                        VoiceRoomCMDMessageModel.VoiceRoomCMDUnMuteModel voiceRoomCMDUnMuteModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDUnMuteModel) gcimMessage;
                        autoLiveChatAdapter.g(LiveMessageModelFactory.createBanSomebodyTalkModel(false, voiceRoomCMDUnMuteModel.getToUserId(), voiceRoomCMDUnMuteModel.getToNickName(), voiceRoomCMDUnMuteModel.getToImg()), false);
                        String toUserId = voiceRoomCMDUnMuteModel.getToUserId();
                        UserSessionModel current2 = UserSessionViewModel.Companion.instance().current();
                        if (Intrinsics.areEqual(toUserId, current2 != null ? current2.getUserId() : null)) {
                            getCurrentVoiceRoomModel().setForbiddenMessage(false);
                            onSelfMute(false);
                        }
                    } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDMuteModel) {
                        VoiceRoomCMDMessageModel.VoiceRoomCMDMuteModel voiceRoomCMDMuteModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDMuteModel) gcimMessage;
                        autoLiveChatAdapter.g(LiveMessageModelFactory.createBanSomebodyTalkModel(true, voiceRoomCMDMuteModel.getToUserId(), voiceRoomCMDMuteModel.getToNickName(), voiceRoomCMDMuteModel.getToImg()), false);
                        String toUserId2 = voiceRoomCMDMuteModel.getToUserId();
                        UserSessionModel current3 = UserSessionViewModel.Companion.instance().current();
                        if (Intrinsics.areEqual(toUserId2, current3 != null ? current3.getUserId() : null)) {
                            getCurrentVoiceRoomModel().setForbiddenMessage(true);
                            onSelfMute(true);
                        }
                    } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDKickMessageModel) {
                        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
                        VoiceRoomCMDMessageModel.VoiceRoomCMDKickMessageModel voiceRoomCMDKickMessageModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDKickMessageModel) gcimMessage;
                        baseLiveMessage.setToUserId(voiceRoomCMDKickMessageModel.getToUserId());
                        baseLiveMessage.setToUserNickName(voiceRoomCMDKickMessageModel.getToNickName());
                        baseLiveMessage.setOperatedUserImg(voiceRoomCMDKickMessageModel.getToImg());
                        baseLiveMessage.setType(BaseLiveMessage.TYPE_REMOVE_USER);
                        autoLiveChatAdapter.g(new LiveMessageModel("LIVE_REMOVE_USER", baseLiveMessage), false);
                    } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDTobeMemberMessageModel) {
                        VoiceRoomCMDMessageModel.VoiceRoomCMDTobeMemberMessageModel voiceRoomCMDTobeMemberMessageModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDTobeMemberMessageModel) gcimMessage;
                        autoLiveChatAdapter.g(LiveMessageModelFactory.createTobeMemberModel(voiceRoomCMDTobeMemberMessageModel.getUserId(), voiceRoomCMDTobeMemberMessageModel.getNickName(), true, voiceRoomCMDTobeMemberMessageModel.getSmallImg(), voiceRoomCMDTobeMemberMessageModel.getLevelId()), false);
                    } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDUserOnSeatMessageModel) {
                        autoLiveChatAdapter.g(LiveMessageModelFactory.createTakeSeatModel((VoiceRoomCMDMessageModel.VoiceRoomCMDUserOnSeatMessageModel) gcimMessage), false);
                    } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel) {
                        UserBean userBean = new UserBean();
                        VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel voiceRoomCMDUserEnterRoomMessageModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDUserEnterRoomMessageModel) gcimMessage;
                        userBean.userId = voiceRoomCMDUserEnterRoomMessageModel.getUserId();
                        userBean.avatar = voiceRoomCMDUserEnterRoomMessageModel.getImg();
                        userBean.img = voiceRoomCMDUserEnterRoomMessageModel.getImg();
                        userBean.levelId = voiceRoomCMDUserEnterRoomMessageModel.getLevelId();
                        userBean.nickName = voiceRoomCMDUserEnterRoomMessageModel.getNickName();
                        autoLiveChatAdapter.g(LiveMessageModelFactory.createChatMessage("LIVE_ADD_GROUP", BaseLiveMessage.TYPE_ADD_GROUP, null, userBean, getResources().getString(R.string.voice_room_enter_room_message), getCurrentLiveRoom().getUserType(), 0, null, null), false);
                    } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveMemberMessageModel) {
                        VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveMemberMessageModel voiceRoomCMDRemoveMemberMessageModel = (VoiceRoomCMDMessageModel.VoiceRoomCMDRemoveMemberMessageModel) gcimMessage;
                        String userId = voiceRoomCMDRemoveMemberMessageModel.getUserId();
                        UserSessionViewModel.Companion companion = UserSessionViewModel.Companion;
                        UserSessionModel current4 = companion.instance().current();
                        if (Intrinsics.areEqual(userId, current4 != null ? current4.getUserId() : null)) {
                            String operateUserId = voiceRoomCMDRemoveMemberMessageModel.getOperateUserId();
                            UserSessionModel current5 = companion.instance().current();
                            if (!Intrinsics.areEqual(operateUserId, current5 != null ? current5.getUserId() : null)) {
                                autoLiveChatAdapter.g(LiveMessageModelFactory.createMemberModel(voiceRoomCMDRemoveMemberMessageModel.getUserId(), voiceRoomCMDRemoveMemberMessageModel.getNickName(), false, voiceRoomCMDRemoveMemberMessageModel.getSmallImg()), false);
                            }
                        }
                    } else if (voiceRoomCMDMessageModel instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDFreeze) {
                        String liveRoomId = getCurrentLiveRoom().getLiveRoomId();
                        UserSessionModel current6 = UserSessionViewModel.Companion.instance().current();
                        if (Intrinsics.areEqual(liveRoomId, current6 != null ? current6.getUserId() : null)) {
                            String reason = ((VoiceRoomCMDMessageModel.VoiceRoomCMDFreeze) gcimMessage).getReason();
                            if (reason != null) {
                                GCDialog.Builder singleButton = GCDialog.Builder.onClick$default(new GCDialog.Builder().contentText(reason), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.VoiceRoomLiveChatFragment$dispatchGCIMMessage$dialog$1$1
                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog2) {
                                        invoke2(gCDialog2);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                    public final void invoke2(@NotNull GCDialog onClick) {
                                        Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                                        onClick.dismiss();
                                        FragmentActivity activity = VoiceRoomLiveChatFragment.this.getActivity();
                                        if (activity != null) {
                                            activity.finish();
                                        }
                                    }
                                }, 1, null).singleButton(true);
                                Context requireContext = requireContext();
                                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
                                gCDialog = singleButton.build(requireContext);
                            }
                        } else {
                            GCDialog.Builder builder = new GCDialog.Builder();
                            String string = getString(R.string.voice_room_room_toast_frozen);
                            Intrinsics.checkNotNullExpressionValue(string, "getString(com.guochao.co…e_room_room_toast_frozen)");
                            GCDialog.Builder singleButton2 = GCDialog.Builder.onClick$default(builder.contentText(string), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.VoiceRoomLiveChatFragment$dispatchGCIMMessage$dialog$2
                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog2) {
                                    invoke2(gCDialog2);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                                public final void invoke2(@NotNull GCDialog onClick) {
                                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                                    onClick.dismiss();
                                    FragmentActivity activity = VoiceRoomLiveChatFragment.this.getActivity();
                                    if (activity != null) {
                                        activity.finish();
                                    }
                                }
                            }, 1, null).singleButton(true);
                            Context requireContext2 = requireContext();
                            Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext()");
                            gCDialog = singleButton2.build(requireContext2);
                        }
                        if (gCDialog != null) {
                            gCDialog.setCancelable(false);
                        }
                        if (gCDialog != null) {
                            gCDialog.show();
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    @NotNull
    public final ImageView getAudioSwitch() {
        ImageView imageView = this.audioSwitch;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("audioSwitch");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment, com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_voice_room_live_chat;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment
    public void initPkIcon() {
        this.multiGame.setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Object navigation = o.a.c().a(RouterPath.ROUTER_GC_MESSAGE_DISPATCHERS).navigation();
        IGCIMMessageDispatcherRegister iGCIMMessageDispatcherRegister = navigation instanceof IGCIMMessageDispatcherRegister ? (IGCIMMessageDispatcherRegister) navigation : null;
        if (iGCIMMessageDispatcherRegister != null) {
            iGCIMMessageDispatcherRegister.unregisterDispatcher(this);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public /* bridge */ /* synthetic */ void onPlayMusicAnim(String str, String str2, int i9) {
        d9.d.a(this, str, str2, i9);
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void onSelectGift(int i9, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, String str, String str2) {
        u8.a.a(this, i9, resourceCategoryItem, resourceListItemBean, str, str2);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment, u8.b
    public /* bridge */ /* synthetic */ void onSelectGift(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, SendGiftCallBack sendGiftCallBack) {
        u8.a.b(this, resourceCategoryItem, resourceListItemBean, list, i9, z10, sendGiftCallBack);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null && (parentFragment instanceof WatcherLiveRoomFragment)) {
            ((WatcherLiveRoomFragment) parentFragment).v5((ViewGroup) view.findViewById(R.id.extra_views));
        }
        getViewModel().getAudioSwitch().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.y
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomLiveChatFragment.m475onViewCreated$lambda1(VoiceRoomLiveChatFragment.this, (Boolean) obj);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment
    public void resetVoiceRoomChatList() {
        if (this.mLiveChatAdapter != null) {
            return;
        }
        AutoLiveChatAdapter autoLiveChatAdapter = new AutoLiveChatAdapter(this.mRecyclerView, this, this.mILiveRoomManager);
        this.mLiveChatAdapter = autoLiveChatAdapter;
        this.mRecyclerView.setAdapter(autoLiveChatAdapter);
        Object navigation = o.a.c().a(RouterPath.ROUTER_GC_MESSAGE_DISPATCHERS).navigation();
        IGCIMMessageDispatcherRegister iGCIMMessageDispatcherRegister = navigation instanceof IGCIMMessageDispatcherRegister ? (IGCIMMessageDispatcherRegister) navigation : null;
        if (iGCIMMessageDispatcherRegister != null) {
            iGCIMMessageDispatcherRegister.registerDispatcher(this);
        }
        this.mRecyclerView.setNestedScrollingEnabled(false);
        AutoLiveChatAdapter autoLiveChatAdapter2 = this.mLiveChatAdapter;
        if (autoLiveChatAdapter2 != null) {
            autoLiveChatAdapter2.l();
        }
        LiveMessageModel<BaseLiveMessage> createNoticModel = LiveMessageModelFactory.createNoticModel(getResources().getString(R.string.voice_room_system_notice));
        AutoLiveChatAdapter autoLiveChatAdapter3 = this.mLiveChatAdapter;
        if (autoLiveChatAdapter3 != null) {
            autoLiveChatAdapter3.g(createNoticModel, false);
        }
        ((LiveChatFragment) this).mHandler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.z
            @Override // java.lang.Runnable
            public final void run() {
                VoiceRoomLiveChatFragment.m476resetVoiceRoomChatList$lambda3(VoiceRoomLiveChatFragment.this);
            }
        }, 10000L);
        ((LiveChatFragment) this).mHandler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.a0
            @Override // java.lang.Runnable
            public final void run() {
                VoiceRoomLiveChatFragment.m477resetVoiceRoomChatList$lambda4(VoiceRoomLiveChatFragment.this);
            }
        }, 3000L);
    }

    public final void setAudioSwitch(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.audioSwitch = imageView;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment
    @OnClick
    public void showGift(@Nullable View view) {
        VoiceRoomGiftFragment.Companion companion = VoiceRoomGiftFragment.Companion;
        String liveRoomId = getCurrentLiveRoom().getLiveRoomId();
        Intrinsics.checkNotNullExpressionValue(liveRoomId, "currentLiveRoom.liveRoomId");
        VoiceRoomGiftFragment newInstance$default = VoiceRoomGiftFragment.Companion.newInstance$default(companion, liveRoomId, null, 16, 0, 8, null);
        this.mGiftFragment = newInstance$default;
        newInstance$default.show(getChildFragmentManager(), "");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment
    @OnClick
    public void showMore(@Nullable View view) {
        VoiceRoomMoreFragment newInstance = VoiceRoomMoreFragment.Companion.newInstance(getCurrentLiveRoom().isAdministrator());
        FragmentManager parentFragmentManager = getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
        newInstance.show(parentFragmentManager, "more");
    }

    @OnClick
    public final void voiceSwitch(@Nullable View view) {
        getViewModel().audioSwitchClick();
    }
}
