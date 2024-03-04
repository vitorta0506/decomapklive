package com.guochao.faceshow.component.live.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.LivePeopleInfoBean;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2;
import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import com.guochao.faceshow.aaspring.modulars.main.viewholder.ConversationInfoHolderV2;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment;
import com.guochao.faceshow.component.live.utils.FloatFragmentUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.ActivityLiveImconversationFloatBinding;
import com.guochao.faceshow.databinding.ListImFloatImHeaderBinding;
import com.guochao.faceshow.views.e;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\f\u001a\u00020\tH\u0002J\b\u0010 \u001a\u00020\u001aH\u0002R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u000e\u0010\u0002\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016¨\u0006!"}, d2 = {"Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "adapter", "com/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1", "Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment$adapter$1;", "broadCasterId", "", "headerBinding", "Lcom/guochao/faceshow/databinding/ListImFloatImHeaderBinding;", "isWatcher", "", "viewBinding", "Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/ActivityLiveImconversationFloatBinding;)V", "viewModel", "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "loadBroadCasterInfo", "showReadAllDialog", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class LiveIMConversationFloatFragment extends GCCoreFragment {
    @NotNull
    private final LiveIMConversationFloatFragment$adapter$1 adapter;
    @NotNull
    private String broadCasterId;
    @Nullable
    private ListImFloatImHeaderBinding headerBinding;
    private boolean isWatcher;
    public ActivityLiveImconversationFloatBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.chad.library.adapter.base.BaseQuickAdapter, com.guochao.faceshow.component.live.fragment.LiveIMConversationFloatFragment$adapter$1] */
    public LiveIMConversationFloatFragment() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ConversationViewModel>() { // from class: com.guochao.faceshow.component.live.fragment.LiveIMConversationFloatFragment$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ConversationViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, ConversationViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(ConversationViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel");
                return (ConversationViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        ?? r02 = new ConversationListFragmentV2.ConversationAdapter() { // from class: com.guochao.faceshow.component.live.fragment.LiveIMConversationFloatFragment$adapter$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(true);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2.ConversationAdapter, com.chad.library.adapter.base.BaseQuickAdapter
            public int getDefItemViewType(int i9) {
                boolean z10;
                String str;
                ConversationInfo item = getItem(i9);
                z10 = LiveIMConversationFloatFragment.this.isWatcher;
                if (z10) {
                    String conversationId = item.getConversationId();
                    str = LiveIMConversationFloatFragment.this.broadCasterId;
                    if (Intrinsics.areEqual(conversationId, str)) {
                        return 1000;
                    }
                }
                return super.getDefItemViewType(i9);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2.ConversationAdapter, com.chad.library.adapter.base.BaseQuickAdapter
            @NotNull
            public ConversationInfoHolderV2 onCreateDefViewHolder(@NotNull ViewGroup parent, int i9) {
                Intrinsics.checkNotNullParameter(parent, "parent");
                ConversationInfoHolderV2 onCreateDefViewHolder = super.onCreateDefViewHolder(parent, i9);
                if (i9 == 1000) {
                    onCreateDefViewHolder.itemView.setBackgroundResource(R.drawable.shape_im_broadcaster_header);
                }
                return onCreateDefViewHolder;
            }
        };
        r02.setOnItemClickListener(new x0.f() { // from class: com.guochao.faceshow.component.live.fragment.q
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                LiveIMConversationFloatFragment.m669adapter$lambda2$lambda1(LiveIMConversationFloatFragment.this, baseQuickAdapter, view, i9);
            }
        });
        this.adapter = r02;
        this.broadCasterId = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: adapter$lambda-2$lambda-1  reason: not valid java name */
    public static final void m669adapter$lambda2$lambda1(LiveIMConversationFloatFragment this$0, BaseQuickAdapter adapter, View _v, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(_v, "_v");
        ConversationInfo conversationInfo = (ConversationInfo) adapter.getItem(i9);
        if (conversationInfo == null) {
            return;
        }
        if (conversationInfo.getConversationType() == 3) {
            EventTrackingUtils eventTrackingUtils = EventTrackingUtils.getInstance();
            Bundle bundle = new Bundle();
            bundle.putString("system_conversation_id", conversationInfo.getConversationId());
            Unit unit = Unit.INSTANCE;
            eventTrackingUtils.track(EventTrackingUtils.LIVE_IM_FLOAT_SYSTEM_CONVERSATION_CLICK, bundle);
            String conversationId = conversationInfo.getConversationId();
            if (conversationId != null) {
                switch (conversationId.hashCode()) {
                    case -355905854:
                        if (conversationId.equals(SystemConversationManager.SYSTEM_HELLO)) {
                            LiveFloatGreetingListFragment liveFloatGreetingListFragment = new LiveFloatGreetingListFragment();
                            FragmentActivity requireActivity = this$0.requireActivity();
                            Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
                            FloatFragmentUtils.addFloatFragment(liveFloatGreetingListFragment, (BaseLiveActivity) requireActivity);
                            return;
                        }
                        break;
                    case 75105639:
                        if (conversationId.equals(SystemConversationManager.SYSTEM_FOCUSED)) {
                            LiveFloatFriendRequestListFragment liveFloatFriendRequestListFragment = new LiveFloatFriendRequestListFragment();
                            FragmentActivity requireActivity2 = this$0.requireActivity();
                            Intrinsics.checkNotNull(requireActivity2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
                            FloatFragmentUtils.addFloatFragment(liveFloatFriendRequestListFragment, (BaseLiveActivity) requireActivity2);
                            return;
                        }
                        break;
                    case 1510432507:
                        if (conversationId.equals(SystemConversationManager.SYSTEM_OFFICIAL)) {
                            LiveFloatOfficialFragment liveFloatOfficialFragment = new LiveFloatOfficialFragment();
                            FragmentActivity requireActivity3 = this$0.requireActivity();
                            Intrinsics.checkNotNull(requireActivity3, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
                            FloatFragmentUtils.addFloatFragment(liveFloatOfficialFragment, (BaseLiveActivity) requireActivity3);
                            return;
                        }
                        break;
                    case 1827065858:
                        if (conversationId.equals(SystemConversationManager.SYSTEM_INTERACTION)) {
                            LiveFloatInteractionFragment liveFloatInteractionFragment = new LiveFloatInteractionFragment();
                            FragmentActivity activity = this$0.getActivity();
                            Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
                            FloatFragmentUtils.addFloatFragment(liveFloatInteractionFragment, (BaseLiveActivity) activity);
                            return;
                        }
                        break;
                }
            }
            Context context = _v.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "_v.context");
            SystemConversationManager.onClick(context, conversationInfo);
            return;
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.LIVE_IM_FLOAT_CONVERSATION_CLICK);
        LiveIMChatFloatFragment.Companion companion = LiveIMChatFloatFragment.Companion;
        String conversationId2 = conversationInfo.getConversationId();
        Intrinsics.checkNotNullExpressionValue(conversationId2, "item.conversationId");
        String conversationName = conversationInfo.getConversationName();
        Intrinsics.checkNotNullExpressionValue(conversationName, "item.conversationName");
        LiveIMChatFloatFragment newInstance = companion.newInstance(conversationId2, conversationName);
        FragmentActivity activity2 = this$0.getActivity();
        Intrinsics.checkNotNull(activity2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
        FloatFragmentUtils.addFloatFragment(newInstance, (BaseLiveActivity) activity2);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final ConversationViewModel getViewModel() {
        return (ConversationViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0103  */
    /* renamed from: initView$lambda-10  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m670initView$lambda10(androidx.fragment.app.FragmentActivity r7, final com.guochao.faceshow.component.live.fragment.LiveIMConversationFloatFragment r8, com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel r9) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.component.live.fragment.LiveIMConversationFloatFragment.m670initView$lambda10(androidx.fragment.app.FragmentActivity, com.guochao.faceshow.component.live.fragment.LiveIMConversationFloatFragment, com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-10$lambda-8  reason: not valid java name */
    public static final int m671initView$lambda10$lambda8(LiveIMConversationFloatFragment this$0, ConversationInfo conversationInfo, ConversationInfo conversationInfo2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (Intrinsics.areEqual(conversationInfo.getConversationId(), this$0.broadCasterId)) {
            return -1;
        }
        if (Intrinsics.areEqual(conversationInfo2.getConversationId(), this$0.broadCasterId)) {
            return 1;
        }
        return conversationInfo.compareTo(conversationInfo2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5$lambda-4$lambda-3  reason: not valid java name */
    public static final void m672initView$lambda5$lambda4$lambda3(LiveRoomModel this_apply, LiveIMConversationFloatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.guochao.faceshow.aaspring.manager.im.b.l0().e0(this_apply.getBroadCasterUserId(), false).setNewConversation(true);
        LiveIMChatFloatFragment.Companion companion = LiveIMChatFloatFragment.Companion;
        String broadCasterUserId = this_apply.getBroadCasterUserId();
        Intrinsics.checkNotNullExpressionValue(broadCasterUserId, "broadCasterUserId");
        String broadCasterUserName = this_apply.getBroadCasterUserName();
        if (broadCasterUserName == null) {
            broadCasterUserName = "";
        }
        LiveIMChatFloatFragment newInstance = companion.newInstance(broadCasterUserId, broadCasterUserName);
        FragmentActivity activity = this$0.getActivity();
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
        FloatFragmentUtils.addFloatFragment(newInstance, (BaseLiveActivity) activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-6  reason: not valid java name */
    public static final void m673initView$lambda6(LiveIMConversationFloatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showReadAllDialog();
    }

    private final void loadBroadCasterInfo(final ListImFloatImHeaderBinding listImFloatImHeaderBinding) {
        if (getActivity() instanceof BaseLiveActivity) {
            FragmentActivity activity = getActivity();
            Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
            d9.g e02 = ((BaseLiveActivity) activity).e0();
            Intrinsics.checkNotNullExpressionValue(e02, "activity as BaseLiveActivity).currentLiveRoom");
            LiveRoomModel currentLiveRoom = e02.getCurrentLiveRoom();
            boolean z10 = true;
            if ((currentLiveRoom == null || !currentLiveRoom.isVoiceRoom()) ? false : false) {
                listImFloatImHeaderBinding.userName.setText(e02.getCurrentLiveRoom().getUserNickName());
                listImFloatImHeaderBinding.avatarView.d(e02.getCurrentLiveRoom());
            }
            post("tokens/user/info/findDetailAttention").D("account", this.broadCasterId).D("liveId", e02.getCurrentLiveRoom().getLiveRoomId()).D("IMID", e02.getCurrentLiveRoom().getChatGroupId()).M(new com.guochao.faceshow.aaspring.base.http.callback.c<LivePeopleInfoBean>() { // from class: com.guochao.faceshow.component.live.fragment.LiveIMConversationFloatFragment$loadBroadCasterInfo$1
                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NotNull g7.a<LivePeopleInfoBean> exp) {
                    Intrinsics.checkNotNullParameter(exp, "exp");
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable LivePeopleInfoBean livePeopleInfoBean, @NotNull FaceCastBaseResponse<LivePeopleInfoBean> baseResponse) {
                    Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                    if (livePeopleInfoBean == null) {
                        return;
                    }
                    ListImFloatImHeaderBinding.this.userName.setText(livePeopleInfoBean.getNick_name());
                    ListImFloatImHeaderBinding.this.avatarView.d(livePeopleInfoBean);
                }
            });
        }
    }

    private final void showReadAllDialog() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(requireContext(), new e.a() { // from class: com.guochao.faceshow.component.live.fragment.o
            @Override // com.guochao.faceshow.views.e.a
            public final void onClick(Dialog dialog, boolean z10) {
                LiveIMConversationFloatFragment.m674showReadAllDialog$lambda11(LiveIMConversationFloatFragment.this, dialog, z10);
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar2) {
                com.guochao.faceshow.views.d.a(this, eVar2);
            }
        });
        eVar.b(getString(R.string.ignore_unread_title));
        eVar.f(getString(R.string.ignore_unread_content));
        eVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showReadAllDialog$lambda-11  reason: not valid java name */
    public static final void m674showReadAllDialog$lambda11(LiveIMConversationFloatFragment this$0, Dialog dialog, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z10) {
            this$0.getViewModel().readAll();
            dialog.dismiss();
        }
    }

    @NotNull
    public final ActivityLiveImconversationFloatBinding getViewBinding() {
        ActivityLiveImconversationFloatBinding activityLiveImconversationFloatBinding = this.viewBinding;
        if (activityLiveImconversationFloatBinding != null) {
            return activityLiveImconversationFloatBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        final LiveRoomModel currentLiveRoom;
        Intrinsics.checkNotNullParameter(root, "root");
        FloatFragmentUtils.setDefaultFragmentViewHeight(root);
        getViewModel().loadSystemMessage();
        getViewModel().requestOnlineStatus();
        final FragmentActivity activity = getActivity();
        if (activity instanceof WatchLiveRoomActivity) {
            this.isWatcher = true;
            d9.g gVar = ((WatchLiveRoomActivity) activity).f18075l;
            if (gVar != null && (currentLiveRoom = gVar.getCurrentLiveRoom()) != null && !currentLiveRoom.isVoiceRoom()) {
                String broadCasterUserId = currentLiveRoom.getBroadCasterUserId();
                Intrinsics.checkNotNullExpressionValue(broadCasterUserId, "this.broadCasterUserId");
                this.broadCasterId = broadCasterUserId;
                LiveIMConversationFloatFragment$adapter$1 liveIMConversationFloatFragment$adapter$1 = this.adapter;
                ListImFloatImHeaderBinding it = ListImFloatImHeaderBinding.inflate(getLayoutInflater(), getViewBinding().recyclerView, false);
                this.headerBinding = it;
                it.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.l
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        LiveIMConversationFloatFragment.m672initView$lambda5$lambda4$lambda3(LiveRoomModel.this, this, view);
                    }
                });
                it.avatarView.setOnline(true);
                if (TextUtils.isEmpty(currentLiveRoom.getBroadCasterUserName())) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    loadBroadCasterInfo(it);
                } else {
                    it.userName.setText(currentLiveRoom.getBroadCasterUserName());
                    it.avatarView.d(currentLiveRoom);
                }
                FrameLayout root2 = it.getRoot();
                Intrinsics.checkNotNullExpressionValue(root2, "inflate(\n               …iew\n                    }");
                BaseQuickAdapter.addHeaderView$default(liveIMConversationFloatFragment$adapter$1, root2, 0, 0, 6, null);
            }
        }
        getViewBinding().recyclerView.setAdapter(this.adapter);
        getViewBinding().clear.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveIMConversationFloatFragment.m673initView$lambda6(LiveIMConversationFloatFragment.this, view);
            }
        });
        getViewModel().bind(this, new Observer() { // from class: com.guochao.faceshow.component.live.fragment.n
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiveIMConversationFloatFragment.m670initView$lambda10(FragmentActivity.this, this, (ConversationModel) obj);
            }
        });
    }

    public final void setViewBinding(@NotNull ActivityLiveImconversationFloatBinding activityLiveImconversationFloatBinding) {
        Intrinsics.checkNotNullParameter(activityLiveImconversationFloatBinding, "<set-?>");
        this.viewBinding = activityLiveImconversationFloatBinding;
    }
}
