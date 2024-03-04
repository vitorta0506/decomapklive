package com.guochao.component.voiceliveroom.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.R$drawable;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.FragmentVoiceRoomVisitorListBinding;
import com.guochao.component.liveroom.databinding.ItemVoiceRoomVisitorBinding;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomVisitorListModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.LoadMoreView;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u001aH\u0014R\u0015\u0010\u0003\u001a\u00060\u0004R\u00020\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR$\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\f\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001f"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;", "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;", "()V", "mAdapter", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;", "getMAdapter", "()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;", "seatViewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getSeatViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "seatViewModel$delegate", "Lkotlin/Lazy;", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomVisitorListBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "viewModel$delegate", "initListener", "", "loadDataAndObserve", "Companion", "PeopleAdapter", "PeopleViewHolder", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomVisitorListFragment extends FullWidthBaseFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final PeopleAdapter mAdapter;
    @NotNull
    private final Lazy seatViewModel$delegate;
    public FragmentVoiceRoomVisitorListBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final VoiceRoomVisitorListFragment newInstance() {
            Bundle bundle = new Bundle();
            VoiceRoomVisitorListFragment voiceRoomVisitorListFragment = new VoiceRoomVisitorListFragment();
            voiceRoomVisitorListFragment.setArguments(bundle);
            return voiceRoomVisitorListFragment;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¨\u0006\n"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment;)V", "convert", "", "holder", BaseConfig.ITEM, "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class PeopleAdapter extends BaseQuickAdapter<VoiceRoomMemberModel, PeopleViewHolder> implements LoadMoreModule {
        public PeopleAdapter() {
            super(R$layout.item_voice_room_visitor, null, 2, null);
            getLoadMoreModule().setLoadMoreView(new LoadMoreView(true));
        }

        @Override // com.chad.library.adapter.base.module.LoadMoreModule
        @NotNull
        public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
            return LoadMoreModule.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull PeopleViewHolder holder, @NotNull VoiceRoomMemberModel item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            holder.getBinding().nickName.setText(item.getNickName());
            holder.getBinding().avatarView.h(item);
            holder.getBinding().levelView.setLevel(item.getLevel());
            holder.getBinding().vipView.setVipLevel(item.getVipLevel());
            holder.getBinding().userGenderAge.b(item.getGender(), item.getAge());
            int roleType = item.getRoleType();
            if (roleType == 1) {
                holder.getBinding().roleIV.setVisibility(0);
                holder.getBinding().roleIV.setImageResource(R$drawable.ic_voice_room_visitor_role_owner);
            } else if (roleType == 10) {
                holder.getBinding().roleIV.setVisibility(0);
                holder.getBinding().roleIV.setImageResource(R$drawable.ic_voice_room_visitor_role_admin);
            } else if (roleType == 20) {
                holder.getBinding().roleIV.setVisibility(0);
                holder.getBinding().roleIV.setImageResource(R$drawable.ic_voice_room_visitor_role_member);
            } else if (roleType != 30) {
                holder.getBinding().roleIV.setVisibility(8);
            } else {
                holder.getBinding().roleIV.setVisibility(8);
            }
            if (item.getMicroStatus() == 0) {
                holder.getBinding().onlineIV.setVisibility(8);
            } else {
                holder.getBinding().onlineIV.setVisibility(0);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomVisitorListFragment$PeopleViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;", "getBinding", "()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomVisitorBinding;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PeopleViewHolder extends BaseViewHolder {
        @NotNull
        private final ItemVoiceRoomVisitorBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PeopleViewHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            ItemVoiceRoomVisitorBinding bind = ItemVoiceRoomVisitorBinding.bind(view);
            Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
            this.binding = bind;
        }

        @NotNull
        public final ItemVoiceRoomVisitorBinding getBinding() {
            return this.binding;
        }
    }

    public VoiceRoomVisitorListFragment() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VoiceRoomMemberViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomVisitorListFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomMemberViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, VoiceRoomMemberViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(VoiceRoomMemberViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel");
                return (VoiceRoomMemberViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomVisitorListFragment$seatViewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomVisitorListFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.seatViewModel$delegate = lazy2;
        PeopleAdapter peopleAdapter = new PeopleAdapter();
        peopleAdapter.getLoadMoreModule().setOnLoadMoreListener(new x0.j() { // from class: com.guochao.component.voiceliveroom.fragment.j1
            @Override // x0.j
            public final void onLoadMore() {
                VoiceRoomVisitorListFragment.m324mAdapter$lambda1$lambda0(VoiceRoomVisitorListFragment.this);
            }
        });
        this.mAdapter = peopleAdapter;
    }

    private final VoiceRoomSeatControllerViewModel getSeatViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.seatViewModel$delegate.getValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final VoiceRoomMemberViewModel getViewModel() {
        return (VoiceRoomMemberViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-3$lambda-2  reason: not valid java name */
    public static final void m320initListener$lambda3$lambda2(VoiceRoomVisitorListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VoiceRoomMemberViewModel viewModel = this$0.getViewModel();
        GCLiveRoomModel requireGCLiveRoomModel$default = BaseGCLiveRoomFragment.requireGCLiveRoomModel$default(this$0, null, 1, null);
        VoiceRoomMemberViewModel.loadVisitorList$default(viewModel, (requireGCLiveRoomModel$default == null || (r7 = requireGCLiveRoomModel$default.getLiveRoomId()) == null) ? "" : "", false, 0, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-4  reason: not valid java name */
    public static final void m321initListener$lambda4(VoiceRoomVisitorListFragment this$0, BaseQuickAdapter adapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        o.a.c().a(RouterPath.ROUTER_USER_HOMEPAGE).withString(Contants.USER_ID, this$0.mAdapter.getItem(i9).getUserId()).navigation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadDataAndObserve$lambda-6  reason: not valid java name */
    public static final void m322loadDataAndObserve$lambda6(final VoiceRoomVisitorListFragment this$0, final VoiceRoomVisitorListModel voiceRoomVisitorListModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (voiceRoomVisitorListModel.getList() != null) {
            this$0.mAdapter.setNewInstance(voiceRoomVisitorListModel.getList());
        }
        SpannableString spannableString = new SpannableString(this$0.getSeatViewModel().getViewerCount().getValue() + IOUtils.DIR_SEPARATOR_UNIX + voiceRoomVisitorListModel.getTotal() + this$0.getString(R$string.voice_room_visitor_title));
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#6365FF")), 0, String.valueOf(this$0.getSeatViewModel().getViewerCount().getValue()).length(), 33);
        this$0.getViewBinding().title.setText(spannableString);
        this$0.getViewBinding().swipe.setRefreshing(false);
        ArrayList<VoiceRoomMemberModel> list = voiceRoomVisitorListModel.getList();
        int size = list != null ? list.size() : 0;
        Integer total = voiceRoomVisitorListModel.getTotal();
        if (size < (total != null ? total.intValue() : 0)) {
            this$0.mAdapter.getLoadMoreModule().loadMoreComplete();
        } else {
            BaseLoadMoreModule.loadMoreEnd$default(this$0.mAdapter.getLoadMoreModule(), false, 1, null);
        }
        Integer value = this$0.getSeatViewModel().getViewerCount().getValue();
        if (value == null) {
            value = 0;
        }
        if (value.intValue() <= 0) {
            VoiceRoomSeatControllerViewModel.loadViewerList$default(this$0.getSeatViewModel(), 20, false, 2, null);
            this$0.getSeatViewModel().getViewerCount().observe(this$0, new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.g1
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    VoiceRoomVisitorListFragment.m323loadDataAndObserve$lambda6$lambda5(VoiceRoomVisitorListModel.this, this$0, (Integer) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadDataAndObserve$lambda-6$lambda-5  reason: not valid java name */
    public static final void m323loadDataAndObserve$lambda6$lambda5(VoiceRoomVisitorListModel voiceRoomVisitorListModel, VoiceRoomVisitorListFragment this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SpannableString spannableString = new SpannableString(num + IOUtils.DIR_SEPARATOR_UNIX + voiceRoomVisitorListModel.getTotal() + this$0.getString(R$string.voice_room_visitor_title));
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#6365FF")), 0, String.valueOf(num).length(), 33);
        this$0.getViewBinding().title.setText(spannableString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mAdapter$lambda-1$lambda-0  reason: not valid java name */
    public static final void m324mAdapter$lambda1$lambda0(VoiceRoomVisitorListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VoiceRoomMemberViewModel viewModel = this$0.getViewModel();
        GCLiveRoomModel requireGCLiveRoomModel$default = BaseGCLiveRoomFragment.requireGCLiveRoomModel$default(this$0, null, 1, null);
        VoiceRoomMemberViewModel.loadVisitorList$default(viewModel, (requireGCLiveRoomModel$default == null || (r7 = requireGCLiveRoomModel$default.getLiveRoomId()) == null) ? "" : "", false, 0, 4, null);
    }

    @NotNull
    public final PeopleAdapter getMAdapter() {
        return this.mAdapter;
    }

    @NotNull
    public final FragmentVoiceRoomVisitorListBinding getViewBinding() {
        FragmentVoiceRoomVisitorListBinding fragmentVoiceRoomVisitorListBinding = this.viewBinding;
        if (fragmentVoiceRoomVisitorListBinding != null) {
            return fragmentVoiceRoomVisitorListBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment
    public void initListener() {
        super.initListener();
        getViewBinding().swipe.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.guochao.component.voiceliveroom.fragment.h1
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                VoiceRoomVisitorListFragment.m320initListener$lambda3$lambda2(VoiceRoomVisitorListFragment.this);
            }
        });
        getViewBinding().recyclerView.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemClickListener(new x0.f() { // from class: com.guochao.component.voiceliveroom.fragment.i1
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                VoiceRoomVisitorListFragment.m321initListener$lambda4(VoiceRoomVisitorListFragment.this, baseQuickAdapter, view, i9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment
    public void loadDataAndObserve() {
        super.loadDataAndObserve();
        VoiceRoomMemberViewModel viewModel = getViewModel();
        GCLiveRoomModel requireGCLiveRoomModel$default = BaseGCLiveRoomFragment.requireGCLiveRoomModel$default(this, null, 1, null);
        VoiceRoomMemberViewModel.loadVisitorList$default(viewModel, (requireGCLiveRoomModel$default == null || (r1 = requireGCLiveRoomModel$default.getLiveRoomId()) == null) ? "" : "", false, 0, 6, null);
        getViewModel().getVisitorList().observe(this, new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.f1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomVisitorListFragment.m322loadDataAndObserve$lambda6(VoiceRoomVisitorListFragment.this, (VoiceRoomVisitorListModel) obj);
            }
        });
    }

    public final void setViewBinding(@NotNull FragmentVoiceRoomVisitorListBinding fragmentVoiceRoomVisitorListBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoiceRoomVisitorListBinding, "<set-?>");
        this.viewBinding = fragmentVoiceRoomVisitorListBinding;
    }
}
