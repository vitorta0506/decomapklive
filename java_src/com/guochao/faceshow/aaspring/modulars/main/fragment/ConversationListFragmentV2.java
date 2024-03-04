package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.activity.MvpChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2;
import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import com.guochao.faceshow.aaspring.modulars.main.viewholder.ConversationInfoHolderV2;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.NotificationsUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.FragmentConversationListV2Binding;
import com.guochao.faceshow.databinding.LayoutListConnectionsBinding;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.LiveInfoUtils;
import java.util.List;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002./B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u001f\u001a\u00020 H\u0002J\u001a\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u00102\b\u0010#\u001a\u0004\u0018\u00010$H\u0014J\u0006\u0010%\u001a\u00020 J\u0012\u0010&\u001a\u00020 2\b\u0010#\u001a\u0004\u0018\u00010$H\u0017J\u0012\u0010'\u001a\u00020 2\b\u0010(\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010)\u001a\u00020 H\u0016J\u001a\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020\u00102\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010,\u001a\u00020-H\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001b\u0010\u001b\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\n\u001a\u0004\b\u001c\u0010\u001d¨\u00060"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;", "()V", "adapter", "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;", "getAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;", "adapter$delegate", "Lkotlin/Lazy;", "connectionBinding", "Lcom/guochao/faceshow/databinding/LayoutListConnectionsBinding;", "headAdapter", "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;", "headerView", "Landroid/view/View;", "lastLoadOnline", "", "lastLoopLoadOnline", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentConversationListV2Binding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;", "viewModel$delegate", "checkNotificationPermission", "", "initView", "root", "savedInstanceState", "Landroid/os/Bundle;", "loadOnline", "onActivityCreated", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "onResume", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "shouldHideNotificationTips", "", "ConversationAdapter", "HeadAdapter", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ConversationListFragmentV2 extends GCBaseMvvmFragment<ConversationModel, ConversationViewModel> {
    @NotNull
    private final Lazy adapter$delegate;
    private LayoutListConnectionsBinding connectionBinding;
    @NotNull
    private final HeadAdapter headAdapter = new HeadAdapter(R.layout.list_item_top_recommend_users);
    private View headerView;
    private long lastLoadOnline;
    private long lastLoopLoadOnline;
    public FragmentConversationListV2Binding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0014J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\fH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$ConversationAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;", "Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;", TypedValues.Custom.S_FLOAT, "", "(Z)V", "convert", "", "holder", BaseConfig.ITEM, "getDefItemViewType", "", "position", "onCreateDefViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static class ConversationAdapter extends BaseQuickAdapter<ConversationInfo, ConversationInfoHolderV2> {

        /* renamed from: float  reason: not valid java name */
        private final boolean f0float;

        public ConversationAdapter() {
            this(false, 1, null);
        }

        public /* synthetic */ ConversationAdapter(boolean z10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this((i9 & 1) != 0 ? false : z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: _init_$lambda-1  reason: not valid java name */
        public static final void m505_init_$lambda1(BaseQuickAdapter adapter, View _v, int i9) {
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            Intrinsics.checkNotNullParameter(_v, "_v");
            ConversationInfo conversationInfo = (ConversationInfo) adapter.getItem(i9);
            if (conversationInfo == null) {
                return;
            }
            if (conversationInfo.isMvpConversation()) {
                MvpChatActivity.Companion companion = MvpChatActivity.Companion;
                Context context = _v.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "_v.context");
                companion.start(context);
            } else if (conversationInfo.getConversationType() == 3) {
                EventTrackingUtils eventTrackingUtils = EventTrackingUtils.getInstance();
                Bundle bundle = new Bundle();
                bundle.putString("system_conversation_id", conversationInfo.getConversationId());
                Unit unit = Unit.INSTANCE;
                eventTrackingUtils.track(EventTrackingUtils.SYSTEM_CONVERSATION_CLICK, bundle);
                Context context2 = _v.getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "_v.context");
                SystemConversationManager.onClick(context2, conversationInfo);
            } else {
                EventTrackingUtils.getInstance().track(EventTrackingUtils.CONVERSATION_CLICK);
                com.guochao.faceshow.aaspring.manager.im.b.l0().N0(conversationInfo);
                Intent intent = new Intent(_v.getContext(), ChatActivity.class);
                if (conversationInfo.getConversationInfoDetail() != null) {
                    Context context3 = _v.getContext();
                    intent.putExtra("otherLanguage", SpUtils.getStr(context3, b8.e.g().c().getCurrentUserId() + conversationInfo.getConversationInfoDetail().getCurrentUserId() + "otherLanguage"));
                }
                _v.getContext().startActivity(intent);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public int getDefItemViewType(int i9) {
            return getItem(i9).getConversationType() == 3 ? 100 : 101;
        }

        public ConversationAdapter(boolean z10) {
            super(0, null, 2, null);
            this.f0float = z10;
            setOnItemClickListener(new x0.f() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.e
                @Override // x0.f
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                    ConversationListFragmentV2.ConversationAdapter.m505_init_$lambda1(baseQuickAdapter, view, i9);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull ConversationInfoHolderV2 holder, @NotNull ConversationInfo item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            holder.bind(item);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        @NotNull
        public ConversationInfoHolderV2 onCreateDefViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.list_item_convesations, parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …vesations, parent, false)");
            return new ConversationInfoHolderV2(inflate);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "layoutId", "", "(I)V", "convert", "", "holder", BaseConfig.ITEM, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class HeadAdapter extends BaseQuickAdapter<ConversationModel.TopOnlineUserModel, BaseViewHolder> {
        public HeadAdapter(int i9) {
            super(i9, null, 2, null);
            setOnItemClickListener(new x0.f() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2.HeadAdapter.1
                @Override // x0.f
                public void onItemClick(@NotNull BaseQuickAdapter<?, ?> adapter, @NotNull View view, int i10) {
                    Intrinsics.checkNotNullParameter(adapter, "adapter");
                    Intrinsics.checkNotNullParameter(view, "view");
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.im_top_click);
                    ConversationModel.TopOnlineUserModel item = HeadAdapter.this.getItem(i10);
                    if (item.getLiveStatus() == 1) {
                        RoomItemData roomItemData = new RoomItemData();
                        roomItemData.setLiveId(item.getLiveId());
                        LiveInfoUtils.jumpToBaseLiveRoomAct(roomItemData, view.getContext());
                        return;
                    }
                    UserHomePageAct.Companion companion = UserHomePageAct.Companion;
                    Context context = view.getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "view.context");
                    companion.start(context, item.getUserId(), 5);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull BaseViewHolder holder, @NotNull ConversationModel.TopOnlineUserModel item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            HeadPortraitView headPortraitView = (HeadPortraitView) holder.getView(R.id.head);
            UserVipData userVipData = new UserVipData();
            userVipData.setDressHead(item.getDressHead());
            userVipData.setHostCertificationUrl(item.get_hostCertificationUrl());
            item.setUserVipData(userVipData);
            headPortraitView.d(item);
            headPortraitView.setOnline(true);
            headPortraitView.setLivingStatus(item.getLiveStatus() == 1);
            holder.setText(R.id.nickname, item.getNickName());
        }
    }

    public ConversationListFragmentV2() {
        Lazy lazy;
        Lazy lazy2;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ConversationViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$special$$inlined$lazyGlobalViewModel$default$1
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
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ConversationAdapter>() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$adapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ConversationListFragmentV2.ConversationAdapter invoke() {
                ConversationListFragmentV2.ConversationAdapter conversationAdapter = new ConversationListFragmentV2.ConversationAdapter(false, 1, null);
                View view = new View(ConversationListFragmentV2.this.requireContext());
                view.setLayoutParams(new RecyclerView.LayoutParams(-2, DensityUtil.dp2px(30.0f)));
                BaseQuickAdapter.addFooterView$default(conversationAdapter, view, 0, 0, 6, null);
                return conversationAdapter;
            }
        });
        this.adapter$delegate = lazy2;
    }

    private final void checkNotificationPermission() {
        LayoutListConnectionsBinding layoutListConnectionsBinding = null;
        if (shouldHideNotificationTips()) {
            LayoutListConnectionsBinding layoutListConnectionsBinding2 = this.connectionBinding;
            if (layoutListConnectionsBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("connectionBinding");
            } else {
                layoutListConnectionsBinding = layoutListConnectionsBinding2;
            }
            layoutListConnectionsBinding.pushStatus.setVisibility(8);
            return;
        }
        LayoutListConnectionsBinding layoutListConnectionsBinding3 = this.connectionBinding;
        if (layoutListConnectionsBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionBinding");
        } else {
            layoutListConnectionsBinding = layoutListConnectionsBinding3;
        }
        layoutListConnectionsBinding.pushStatus.setVisibility(0);
    }

    private final ConversationAdapter getAdapter() {
        return (ConversationAdapter) this.adapter$delegate.getValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-6$lambda-4  reason: not valid java name */
    public static final void m502initView$lambda6$lambda4(ConversationListFragmentV2 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NotificationsUtils.requestNotify(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-6$lambda-5  reason: not valid java name */
    public static final void m503initView$lambda6$lambda5(ConversationListFragmentV2 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        CustomNameCacheUtils.setBool(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, b8.e.g().c().getCurrentUserId() + "KEY_IM_PUSH_STATE", true);
        LayoutListConnectionsBinding layoutListConnectionsBinding = this$0.connectionBinding;
        if (layoutListConnectionsBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionBinding");
            layoutListConnectionsBinding = null;
        }
        layoutListConnectionsBinding.pushStatus.setVisibility(8);
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.notice_list_close_click);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onModelUpdate$lambda-3  reason: not valid java name */
    public static final void m504onModelUpdate$lambda3(ConversationListFragmentV2 this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.getAdapter().setNewInstance(TypeIntrinsics.asMutableList(list));
        } catch (Exception unused) {
        }
    }

    private final boolean shouldHideNotificationTips() {
        if (!NotificationsUtils.isNotificationEnabled(requireContext())) {
            FragmentActivity activity = getActivity();
            if (!CustomNameCacheUtils.getBool(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, b8.e.g().c().getCurrentUserId() + "KEY_IM_PUSH_STATE")) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final FragmentConversationListV2Binding getViewBinding() {
        FragmentConversationListV2Binding fragmentConversationListV2Binding = this.viewBinding;
        if (fragmentConversationListV2Binding != null) {
            return fragmentConversationListV2Binding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x00ba, code lost:
        if ((!r2.isEmpty()) == true) goto L5;
     */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initView(@org.jetbrains.annotations.NotNull android.view.View r18, @org.jetbrains.annotations.Nullable android.os.Bundle r19) {
        /*
            r17 = this;
            r0 = r17
            java.lang.String r1 = "root"
            r2 = r18
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            super.initView(r18, r19)
            com.guochao.faceshow.databinding.FragmentConversationListV2Binding r1 = r17.getViewBinding()
            com.guochao.faceshow.databinding.LayoutEmptyViewNoTextBinding r1 = r1.empty
            android.widget.LinearLayout r1 = r1.getRoot()
            r2 = 8
            r1.setVisibility(r2)
            com.guochao.faceshow.databinding.FragmentConversationListV2Binding r1 = r17.getViewBinding()
            com.guochao.faceshow.databinding.LayoutEmptyViewNoTextBinding r1 = r1.empty
            android.widget.LinearLayout r1 = r1.getRoot()
            r3 = 2131100622(0x7f0603ce, float:1.781363E38)
            r1.setBackgroundResource(r3)
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$ConversationAdapter r4 = r17.getAdapter()
            android.view.LayoutInflater r1 = r17.getLayoutInflater()
            com.guochao.faceshow.databinding.FragmentConversationListV2Binding r3 = r17.getViewBinding()
            androidx.recyclerview.widget.RecyclerView r3 = r3.recyclerView
            r10 = 0
            com.guochao.faceshow.databinding.LayoutListConnectionsBinding r1 = com.guochao.faceshow.databinding.LayoutListConnectionsBinding.inflate(r1, r3, r10)
            java.lang.String r3 = "it"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
            r0.connectionBinding = r1
            android.widget.LinearLayout r3 = r1.pushStatus
            com.guochao.faceshow.aaspring.modulars.main.fragment.c r5 = new com.guochao.faceshow.aaspring.modulars.main.fragment.c
            r5.<init>()
            r3.setOnClickListener(r5)
            android.widget.ImageView r3 = r1.imPushClose
            com.guochao.faceshow.aaspring.modulars.main.fragment.b r5 = new com.guochao.faceshow.aaspring.modulars.main.fragment.b
            r5.<init>()
            r3.setOnClickListener(r5)
            android.widget.LinearLayout r5 = r1.getRoot()
            java.lang.String r1 = "inflate(\n               …     }\n            }.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r1)
            r6 = 0
            r7 = 0
            r8 = 6
            r9 = 0
            com.chad.library.adapter.base.BaseQuickAdapter.addHeaderView$default(r4, r5, r6, r7, r8, r9)
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$ConversationAdapter r11 = r17.getAdapter()
            android.view.LayoutInflater r1 = r17.getLayoutInflater()
            com.guochao.faceshow.databinding.FragmentConversationListV2Binding r3 = r17.getViewBinding()
            androidx.recyclerview.widget.RecyclerView r3 = r3.recyclerView
            com.guochao.faceshow.databinding.ListHeaderConversationListBinding r1 = com.guochao.faceshow.databinding.ListHeaderConversationListBinding.inflate(r1, r3, r10)
            android.widget.LinearLayout r3 = r1.getRoot()
            r3.setVisibility(r2)
            androidx.recyclerview.widget.RecyclerView r2 = r1.rv
            java.lang.String r3 = "it.rv"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$HeadAdapter r3 = r0.headAdapter
            r2.setAdapter(r3)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "top_recommend_"
            r2.append(r3)
            b8.d r3 = b8.e.g()
            java.lang.String r3 = r3.getUserId()
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.Class<com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$TopOnlineUserModel> r3 = com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.TopOnlineUserModel.class
            java.util.List r2 = com.guochao.faceshow.aaspring.manager.b.d(r2, r3)
            java.lang.String r3 = "list"
            r4 = 1
            if (r2 == 0) goto Lbd
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            boolean r5 = r2.isEmpty()
            r5 = r5 ^ r4
            if (r5 != r4) goto Lbd
            goto Lbe
        Lbd:
            r4 = 0
        Lbe:
            if (r4 == 0) goto Ld3
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$HeadAdapter r4 = r0.headAdapter
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            java.util.List r2 = kotlin.collections.CollectionsKt.toMutableList(r2)
            r4.setNewInstance(r2)
            android.widget.LinearLayout r2 = r1.getRoot()
            r2.setVisibility(r10)
        Ld3:
            android.widget.LinearLayout r2 = r1.getRoot()
            java.lang.String r3 = "it.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r0.headerView = r2
            android.widget.LinearLayout r12 = r1.getRoot()
            java.lang.String r1 = "inflate(\n               …    it.root\n            }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)
            r13 = 0
            r14 = 0
            r15 = 6
            r16 = 0
            com.chad.library.adapter.base.BaseQuickAdapter.addHeaderView$default(r11, r12, r13, r14, r15, r16)
            com.guochao.faceshow.databinding.FragmentConversationListV2Binding r1 = r17.getViewBinding()
            androidx.recyclerview.widget.RecyclerView r1 = r1.recyclerView
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$ConversationAdapter r2 = r17.getAdapter()
            r1.setAdapter(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2.initView(android.view.View, android.os.Bundle):void");
    }

    public final void loadOnline() {
        if (!isAdded() || isDetached() || getView() == null || System.currentTimeMillis() - this.lastLoadOnline < 5000) {
            return;
        }
        this.lastLoadOnline = System.currentTimeMillis();
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getMain(), null, new ConversationListFragmentV2$loadOnline$1(this, null), 2, null);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getViewModel().loadSystemMessage();
        getViewModel().requestOnlineStatus();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        checkNotificationPermission();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "viewLifecycleOwner");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), Dispatchers.getMain(), null, new ConversationListFragmentV2$onViewCreated$1(this, null), 2, null);
    }

    public final void setViewBinding(@NotNull FragmentConversationListV2Binding fragmentConversationListV2Binding) {
        Intrinsics.checkNotNullParameter(fragmentConversationListV2Binding, "<set-?>");
        this.viewBinding = fragmentConversationListV2Binding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment
    @NotNull
    public ConversationViewModel getViewModel() {
        return (ConversationViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x007d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0059 A[SYNTHETIC] */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onModelUpdate(@org.jetbrains.annotations.Nullable com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.ConversationListModel
            if (r0 == 0) goto Lda
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$HeadAdapter r0 = r8.headAdapter
            java.util.List r0 = r0.getData()
            java.util.Iterator r0 = r0.iterator()
        Le:
            boolean r1 = r0.hasNext()
            r2 = 1
            if (r1 == 0) goto L46
            java.lang.Object r1 = r0.next()
            com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$TopOnlineUserModel r1 = (com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.TopOnlineUserModel) r1
            r3 = r9
            com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$ConversationListModel r3 = (com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.ConversationListModel) r3
            java.util.List r3 = r3.getList()
            if (r3 == 0) goto Le
            java.util.Iterator r3 = r3.iterator()
        L28:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto Le
            java.lang.Object r4 = r3.next()
            com.guochao.faceshow.aaspring.beans.ConversationInfo r4 = (com.guochao.faceshow.aaspring.beans.ConversationInfo) r4
            java.lang.String r5 = r1.getUserId()
            java.lang.String r6 = r4.getConversationId()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L28
            r4.setOnlineStatus(r2)
            goto L28
        L46:
            r0 = 0
            r1 = r9
            com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$ConversationListModel r1 = (com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.ConversationListModel) r1     // Catch: java.lang.Exception -> La9
            java.util.List r1 = r1.getList()     // Catch: java.lang.Exception -> La9
            if (r1 == 0) goto L81
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Exception -> La9
            r3.<init>()     // Catch: java.lang.Exception -> La9
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Exception -> La9
        L59:
            boolean r4 = r1.hasNext()     // Catch: java.lang.Exception -> La9
            if (r4 == 0) goto L82
            java.lang.Object r4 = r1.next()     // Catch: java.lang.Exception -> La9
            r5 = r4
            com.guochao.faceshow.aaspring.beans.ConversationInfo r5 = (com.guochao.faceshow.aaspring.beans.ConversationInfo) r5     // Catch: java.lang.Exception -> La9
            int r6 = r5.getConversationType()     // Catch: java.lang.Exception -> La9
            r7 = 3
            if (r6 == r7) goto L7a
            java.lang.String r5 = r5.getLastMsgStr()     // Catch: java.lang.Exception -> La9
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> La9
            if (r5 != 0) goto L78
            goto L7a
        L78:
            r5 = 0
            goto L7b
        L7a:
            r5 = 1
        L7b:
            if (r5 == 0) goto L59
            r3.add(r4)     // Catch: java.lang.Exception -> La9
            goto L59
        L81:
            r3 = 0
        L82:
            com.guochao.faceshow.databinding.FragmentConversationListV2Binding r1 = r8.getViewBinding()     // Catch: java.lang.Exception -> La9
            androidx.recyclerview.widget.RecyclerView r1 = r1.recyclerView     // Catch: java.lang.Exception -> La9
            boolean r1 = r1.isComputingLayout()     // Catch: java.lang.Exception -> La9
            if (r1 == 0) goto L9d
            com.guochao.faceshow.databinding.FragmentConversationListV2Binding r1 = r8.getViewBinding()     // Catch: java.lang.Exception -> La9
            androidx.recyclerview.widget.RecyclerView r1 = r1.recyclerView     // Catch: java.lang.Exception -> La9
            com.guochao.faceshow.aaspring.modulars.main.fragment.d r2 = new com.guochao.faceshow.aaspring.modulars.main.fragment.d     // Catch: java.lang.Exception -> La9
            r2.<init>()     // Catch: java.lang.Exception -> La9
            r1.post(r2)     // Catch: java.lang.Exception -> La9
            goto Laa
        L9d:
            com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$ConversationAdapter r1 = r8.getAdapter()     // Catch: java.lang.Exception -> La9
            java.util.List r2 = kotlin.jvm.internal.TypeIntrinsics.asMutableList(r3)     // Catch: java.lang.Exception -> La9
            r1.setNewInstance(r2)     // Catch: java.lang.Exception -> La9
            goto Laa
        La9:
        Laa:
            com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$ConversationListModel r9 = (com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.ConversationListModel) r9
            java.util.List r1 = r9.getList()
            if (r1 == 0) goto Lcd
            java.util.List r9 = r9.getList()
            boolean r9 = r9.isEmpty()
            if (r9 == 0) goto Lbd
            goto Lcd
        Lbd:
            com.guochao.faceshow.databinding.FragmentConversationListV2Binding r9 = r8.getViewBinding()
            com.guochao.faceshow.databinding.LayoutEmptyViewNoTextBinding r9 = r9.empty
            android.widget.LinearLayout r9 = r9.getRoot()
            r0 = 8
            r9.setVisibility(r0)
            goto Lda
        Lcd:
            com.guochao.faceshow.databinding.FragmentConversationListV2Binding r9 = r8.getViewBinding()
            com.guochao.faceshow.databinding.LayoutEmptyViewNoTextBinding r9 = r9.empty
            android.widget.LinearLayout r9 = r9.getRoot()
            r9.setVisibility(r0)
        Lda:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2.onModelUpdate(com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel):void");
    }
}
