package com.guochao.component.voiceliveroom.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.databinding.FragmentVoiceRoomListBinding;
import com.guochao.component.liveroom.databinding.ItemVoiceRoomListTopBinding;
import com.guochao.component.voiceliveroom.adapter.VoiceRoomInviteListAdapter;
import com.guochao.component.voiceliveroom.adapter.VoiceRoomListAdapter;
import com.guochao.component.voiceliveroom.event.VoiceRoomInviteCloseEvent;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomInviteListModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomListViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.listener.VoiceRoomInviteMessageViewModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 22\u00020\u0001:\u00012B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010$\u001a\u00020%H\u0002J\u001a\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0012\u0010+\u001a\u00020%2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u0010,\u001a\u00020%H\u0016J\u001a\u0010-\u001a\u00020%2\u0006\u0010.\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0010\u0010/\u001a\u00020%2\u0006\u00100\u001a\u000201H\u0007R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u001a\u0010\u0002\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001b\u0010\u001f\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\b\u001a\u0004\b!\u0010\"¨\u00063"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "adapter", "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;", "getAdapter", "()Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;", "adapter$delegate", "Lkotlin/Lazy;", "inviteViewModel", "Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;", "getInviteViewModel", "()Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;", "inviteViewModel$delegate", "mInviteListAdapter", "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomInviteListAdapter;", "page", "", "topViewBinding", "Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomListTopBinding;", "getTopViewBinding", "()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomListTopBinding;", "setTopViewBinding", "(Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomListTopBinding;)V", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomListBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomListBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomListBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;", "viewModel$delegate", "checkEmpty", "", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onDestroy", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "removeInvite", "data", "Lcom/guochao/component/voiceliveroom/event/VoiceRoomInviteCloseEvent;", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomListFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Lazy adapter$delegate;
    @NotNull
    private final Lazy inviteViewModel$delegate;
    @NotNull
    private final VoiceRoomInviteListAdapter mInviteListAdapter;
    public ItemVoiceRoomListTopBinding topViewBinding;
    public FragmentVoiceRoomListBinding viewBinding;
    private int page = 1;
    @NotNull
    private final Lazy viewModel$delegate = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(VoiceRoomListViewModel.class), new Function0<ViewModelStore>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomListFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final ViewModelStore invoke() {
            FragmentActivity requireActivity = Fragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            ViewModelStore viewModelStore = requireActivity.getViewModelStore();
            Intrinsics.checkNotNullExpressionValue(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<ViewModelProvider.Factory>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomListFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final ViewModelProvider.Factory invoke() {
            FragmentActivity requireActivity = Fragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    });

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomListFragment newInstance() {
            return new VoiceRoomListFragment();
        }
    }

    public VoiceRoomListFragment() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VoiceRoomInviteMessageViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomListFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomInviteMessageViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, VoiceRoomInviteMessageViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(VoiceRoomInviteMessageViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.utils.listener.VoiceRoomInviteMessageViewModel");
                return (VoiceRoomInviteMessageViewModel) baseViewModel;
            }
        });
        this.inviteViewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new VoiceRoomListFragment$adapter$2(this));
        this.adapter$delegate = lazy2;
        this.mInviteListAdapter = new VoiceRoomInviteListAdapter();
    }

    private final void checkEmpty() {
        if (getAdapter().getData().size() <= 0) {
            getViewBinding().emptyView.setVisibility(0);
        } else {
            getViewBinding().emptyView.setVisibility(8);
        }
    }

    private final VoiceRoomListAdapter getAdapter() {
        return (VoiceRoomListAdapter) this.adapter$delegate.getValue();
    }

    private final VoiceRoomInviteMessageViewModel getInviteViewModel() {
        return (VoiceRoomInviteMessageViewModel) this.inviteViewModel$delegate.getValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomListViewModel getViewModel() {
        return (VoiceRoomListViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-10  reason: not valid java name */
    public static final void m272initView$lambda10(VoiceRoomListFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        ArrayList arrayList = new ArrayList();
        Integer roomId = this$0.mInviteListAdapter.getItem(i9).getRoomId();
        if (roomId != null) {
            arrayList.add(new VoiceRoomInfoModel(0, null, this$0.mInviteListAdapter.getItem(i9).getChatGroupId(), String.valueOf(roomId.intValue()), null, null, null, null, null, null, 0, 0, 0L, 0, null, 0, 0, 0L, 0L, null, 0L, 0, null, 0, null, null, 0, 0, null, null, null, null, 0, -13, 1, null));
            this$0.mInviteListAdapter.removeAt(i9);
            if (this$0.mInviteListAdapter.getItemCount() == 0) {
                VoiceRoomListAdapter adapter = this$0.getAdapter();
                LinearLayout root = this$0.getTopViewBinding().getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "topViewBinding.root");
                adapter.removeHeaderView(root);
            }
        }
        Context context = this$0.getContext();
        if (context != null) {
            VoiceRoomMiniHelper.gotoVoiceRoom(context, 0, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-7$lambda-6  reason: not valid java name */
    public static final void m273initView$lambda7$lambda6(VoiceRoomListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.page = 1;
        this$0.getViewModel().loadRoomList(this$0.page);
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomListFragment newInstance() {
        return Companion.newInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-5$lambda-0  reason: not valid java name */
    public static final void m274onViewCreated$lambda5$lambda0(VoiceRoomListFragment this$0, VoiceRoomInviteListModel voiceRoomInviteListModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<VoiceRoomInviteListModel.VoiceRoomInviteUser> list = voiceRoomInviteListModel.getList();
        boolean z10 = false;
        if (list != null && (!list.isEmpty())) {
            z10 = true;
        }
        if (z10) {
            this$0.mInviteListAdapter.setNewInstance(TypeIntrinsics.asMutableList(voiceRoomInviteListModel.getList()));
            if (!this$0.getAdapter().hasHeaderLayout()) {
                VoiceRoomListAdapter adapter = this$0.getAdapter();
                LinearLayout root = this$0.getTopViewBinding().getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "topViewBinding.root");
                BaseQuickAdapter.addHeaderView$default(adapter, root, 0, 0, 6, null);
            }
            this$0.getAdapter().notifyDataSetChanged();
        } else {
            this$0.getInviteViewModel().setNewInvite();
            VoiceRoomListAdapter adapter2 = this$0.getAdapter();
            LinearLayout root2 = this$0.getTopViewBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root2, "topViewBinding.root");
            adapter2.removeHeaderView(root2);
        }
        this$0.checkEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-5$lambda-1  reason: not valid java name */
    public static final void m275onViewCreated$lambda5$lambda1(VoiceRoomListFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (it.booleanValue()) {
            ToastUtils.debugToast(this$0.getActivity(), "刷新语聊房受邀列表");
            this$0.getViewModel().loadInviteList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006d  */
    /* renamed from: onViewCreated$lambda-5$lambda-4  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m276onViewCreated$lambda5$lambda4(com.guochao.component.voiceliveroom.fragment.VoiceRoomListFragment r4, com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel r5) {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils r0 = com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils.INSTANCE
            java.lang.String r1 = com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils.live_tab_success
            java.lang.String r2 = "2"
            r0.track(r1, r2)
            com.guochao.component.liveroom.databinding.FragmentVoiceRoomListBinding r0 = r4.getViewBinding()
            com.guochao.faceshow.aaspring.views.GCSwipeRefreshView r0 = r0.swipe
            r1 = 0
            r0.setRefreshing(r1)
            r0 = 1
            if (r5 == 0) goto L23
            int r2 = r5.getPage()
            if (r2 != r0) goto L23
            r2 = 1
            goto L24
        L23:
            r2 = 0
        L24:
            if (r2 != 0) goto L44
            if (r5 == 0) goto L30
            int r2 = r5.getPage()
            if (r2 != 0) goto L30
            r2 = 1
            goto L31
        L30:
            r2 = 0
        L31:
            if (r2 == 0) goto L34
            goto L44
        L34:
            if (r5 == 0) goto L4f
            java.util.List r2 = r5.getList()
            if (r2 == 0) goto L4f
            com.guochao.component.voiceliveroom.adapter.VoiceRoomListAdapter r3 = r4.getAdapter()
            r3.addData(r2)
            goto L4f
        L44:
            com.guochao.component.voiceliveroom.adapter.VoiceRoomListAdapter r2 = r4.getAdapter()
            java.util.List r3 = r5.getList()
            r2.setList(r3)
        L4f:
            if (r5 == 0) goto L5c
            java.util.List r5 = r5.getList()
            if (r5 == 0) goto L5c
            int r5 = r5.size()
            goto L5d
        L5c:
            r5 = 0
        L5d:
            r2 = 20
            if (r5 >= r2) goto L6d
            com.guochao.component.voiceliveroom.adapter.VoiceRoomListAdapter r5 = r4.getAdapter()
            com.chad.library.adapter.base.module.BaseLoadMoreModule r5 = r5.getLoadMoreModule()
            r5.loadMoreEnd(r1)
            goto L78
        L6d:
            com.guochao.component.voiceliveroom.adapter.VoiceRoomListAdapter r5 = r4.getAdapter()
            com.chad.library.adapter.base.module.BaseLoadMoreModule r5 = r5.getLoadMoreModule()
            r5.loadMoreComplete()
        L78:
            int r5 = r4.page
            int r5 = r5 + r0
            r4.page = r5
            r4.checkEmpty()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.fragment.VoiceRoomListFragment.m276onViewCreated$lambda5$lambda4(com.guochao.component.voiceliveroom.fragment.VoiceRoomListFragment, com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel):void");
    }

    @NotNull
    public final ItemVoiceRoomListTopBinding getTopViewBinding() {
        ItemVoiceRoomListTopBinding itemVoiceRoomListTopBinding = this.topViewBinding;
        if (itemVoiceRoomListTopBinding != null) {
            return itemVoiceRoomListTopBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("topViewBinding");
        return null;
    }

    @NotNull
    public final FragmentVoiceRoomListBinding getViewBinding() {
        FragmentVoiceRoomListBinding fragmentVoiceRoomListBinding = this.viewBinding;
        if (fragmentVoiceRoomListBinding != null) {
            return fragmentVoiceRoomListBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FragmentVoiceRoomListBinding viewBinding = getViewBinding();
        viewBinding.swipe.setRefreshing(true);
        this.page = 1;
        viewBinding.swipe.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.guochao.component.voiceliveroom.fragment.m
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                VoiceRoomListFragment.m273initView$lambda7$lambda6(VoiceRoomListFragment.this);
            }
        });
        viewBinding.recyclerView.setAdapter(getAdapter());
        getViewModel().loadRoomList(this.page);
        ItemVoiceRoomListTopBinding inflate = ItemVoiceRoomListTopBinding.inflate(getLayoutInflater(), getViewBinding().recyclerView, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(layoutInflater, …ding.recyclerView, false)");
        setTopViewBinding(inflate);
        getTopViewBinding().recycleView.setAdapter(this.mInviteListAdapter);
        this.mInviteListAdapter.setOnItemClickListener(new x0.f() { // from class: com.guochao.component.voiceliveroom.fragment.n
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                VoiceRoomListFragment.m272initView$lambda10(VoiceRoomListFragment.this, baseQuickAdapter, view, i9);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (EventBus.getDefault().isRegistered(this)) {
            return;
        }
        EventBus.getDefault().register(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            try {
                getViewModel().getInviteList().observe(activity, new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.j
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj) {
                        VoiceRoomListFragment.m274onViewCreated$lambda5$lambda0(VoiceRoomListFragment.this, (VoiceRoomInviteListModel) obj);
                    }
                });
                getInviteViewModel().getNewInvite().observe(activity, new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.l
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj) {
                        VoiceRoomListFragment.m275onViewCreated$lambda5$lambda1(VoiceRoomListFragment.this, (Boolean) obj);
                    }
                });
                getViewModel().getRoomList().observe(activity, new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.k
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj) {
                        VoiceRoomListFragment.m276onViewCreated$lambda5$lambda4(VoiceRoomListFragment.this, (VoiceRoomMyRoomListModel) obj);
                    }
                });
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void removeInvite(@NotNull VoiceRoomInviteCloseEvent data) {
        Intrinsics.checkNotNullParameter(data, "data");
        if (this.mInviteListAdapter.getItemCount() > 0) {
            VoiceRoomInviteListAdapter voiceRoomInviteListAdapter = this.mInviteListAdapter;
            int i9 = 0;
            Iterator<VoiceRoomInviteListModel.VoiceRoomInviteUser> it = voiceRoomInviteListAdapter.getData().iterator();
            while (true) {
                if (!it.hasNext()) {
                    i9 = -1;
                    break;
                } else if (Intrinsics.areEqual(String.valueOf(it.next().getRoomId()), data.getId())) {
                    break;
                } else {
                    i9++;
                }
            }
            voiceRoomInviteListAdapter.removeAt(i9);
            if (this.mInviteListAdapter.getItemCount() == 0) {
                VoiceRoomListAdapter adapter = getAdapter();
                LinearLayout root = getTopViewBinding().getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "topViewBinding.root");
                adapter.removeHeaderView(root);
            }
        }
    }

    public final void setTopViewBinding(@NotNull ItemVoiceRoomListTopBinding itemVoiceRoomListTopBinding) {
        Intrinsics.checkNotNullParameter(itemVoiceRoomListTopBinding, "<set-?>");
        this.topViewBinding = itemVoiceRoomListTopBinding;
    }

    public final void setViewBinding(@NotNull FragmentVoiceRoomListBinding fragmentVoiceRoomListBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoiceRoomListBinding, "<set-?>");
        this.viewBinding = fragmentVoiceRoomListBinding;
    }
}
