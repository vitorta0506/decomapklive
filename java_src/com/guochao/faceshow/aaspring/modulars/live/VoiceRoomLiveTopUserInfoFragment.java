package com.guochao.faceshow.aaspring.modulars.live;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.bumptech.glide.load.resource.bitmap.l;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.liveroom.databinding.ListItemVoiceRoomViewerBinding;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomVisitorListFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomViewerModel;
import com.guochao.component.voiceliveroom.view.WrapLoadMoreView;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.VoiceRoomLiveTopUserInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveUserInfoFragment;
import com.guochao.faceshow.databinding.FragmentVoiceRoomLiveTopUserInfoBinding;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.lib_service_center.share.service.ShareProxy;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u00015B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u000eH\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u001aH\u0016J\b\u0010\u001c\u001a\u00020\u001aH\u0016J\u001a\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0018\u0010\"\u001a\u00020\u001a2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$H\u0016J>\u0010&\u001a\u00020\u001a2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010(2\b\u0010*\u001a\u0004\u0018\u00010(2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010$2\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u0010/\u001a\u00020\u001a2\u0006\u00100\u001a\u000201H\u0002J\u0018\u00102\u001a\u00020\u001a2\u0006\u00100\u001a\u0002012\u0006\u00103\u001a\u000204H\u0002R\u0015\u0010\u0003\u001a\u00060\u0004R\u00020\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\f\u001a\u0004\b\u0015\u0010\u0016¨\u00066"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;", "()V", "mAdapter", "Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;", "getMAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;", "memberViewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "getMemberViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "memberViewModel$delegate", "Lkotlin/Lazy;", "page", "", "getPage", "()I", "setPage", "(I)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "getLayoutId", "initVisitorListView", "", "onLiveFinish", "onPlaySuccess", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "refreshBroadcasterInfo", "matchList", "", "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;", "refreshUserInfo", "onlineNum", "", "fcoin", "likeNum", "audienceList", "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;", "liveInfoState", "", "resetViews", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;", "setDataToView", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "ViewerAdapter", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomLiveTopUserInfoFragment extends LiveUserInfoFragment {
    @NotNull
    private final ViewerAdapter mAdapter;
    @NotNull
    private final Lazy memberViewModel$delegate;
    private int page;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n0\u0003R\u00060\u0000R\u00020\u00040\u00012\u00020\u0005:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0006J \u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n0\u0003R\u00060\u0000R\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0014¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;", "Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;", "Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;)V", "convert", "", "holder", BaseConfig.ITEM, "ViewerRoomHolder", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class ViewerAdapter extends BaseQuickAdapter<VoiceRoomViewerModel, ViewerRoomHolder> implements LoadMoreModule {

        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter$ViewerRoomHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment$ViewerAdapter;Landroid/view/View;)V", "binding", "Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;", "getBinding", "()Lcom/guochao/component/liveroom/databinding/ListItemVoiceRoomViewerBinding;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public final class ViewerRoomHolder extends BaseViewHolder {
            @NotNull
            private final ListItemVoiceRoomViewerBinding binding;
            final /* synthetic */ ViewerAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ViewerRoomHolder(@NotNull ViewerAdapter viewerAdapter, View view) {
                super(view);
                Intrinsics.checkNotNullParameter(view, "view");
                this.this$0 = viewerAdapter;
                ListItemVoiceRoomViewerBinding bind = ListItemVoiceRoomViewerBinding.bind(view);
                Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
                this.binding = bind;
            }

            @NotNull
            public final ListItemVoiceRoomViewerBinding getBinding() {
                return this.binding;
            }
        }

        public ViewerAdapter() {
            super(R.layout.list_item_voice_room_viewer, null, 2, null);
            getLoadMoreModule().setLoadMoreView(new WrapLoadMoreView());
            getLoadMoreModule().setEnableLoadMore(true);
            getLoadMoreModule().setAutoLoadMore(true);
            setOnItemClickListener(new x0.f() { // from class: com.guochao.faceshow.aaspring.modulars.live.k
                @Override // x0.f
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                    VoiceRoomLiveTopUserInfoFragment.ViewerAdapter.m445_init_$lambda0(VoiceRoomLiveTopUserInfoFragment.this, this, baseQuickAdapter, view, i9);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: _init_$lambda-0  reason: not valid java name */
        public static final void m445_init_$lambda0(VoiceRoomLiveTopUserInfoFragment this$0, ViewerAdapter this$1, BaseQuickAdapter adapter, View view, int i9) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            Intrinsics.checkNotNullParameter(view, "view");
            LivePeopleInfoCardFragmentV2.Companion companion = LivePeopleInfoCardFragmentV2.Companion;
            VoiceRoomInfoModel value = this$0.getViewModel().getRoomInfo().getValue();
            String str = (value == null || (str = value.getRoomId()) == null) ? "" : "";
            String userId = this$1.getData().get(i9).getUserId();
            companion.newInstance(str, userId != null ? userId : "").show(this$0.getChildFragmentManager(), "people");
        }

        @Override // com.chad.library.adapter.base.module.LoadMoreModule
        @NotNull
        public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
            return LoadMoreModule.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull ViewerRoomHolder holder, @NotNull VoiceRoomViewerModel item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            hc.a.i((ImageView) holder.getView(R.id.avatar), item.getSmallImg(), R.mipmap.default_head, new l());
            hc.a.j((ImageView) holder.getView(R.id.pendant_view), item.getDressHead());
        }
    }

    public VoiceRoomLiveTopUserInfoFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<VoiceRoomMemberViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.live.VoiceRoomLiveTopUserInfoFragment$memberViewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomMemberViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomLiveTopUserInfoFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomMemberViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomMemberViewModel.class));
            }
        });
        this.memberViewModel$delegate = lazy;
        this.mAdapter = new ViewerAdapter();
        this.page = 1;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.live.VoiceRoomLiveTopUserInfoFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomLiveTopUserInfoFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.viewModel$delegate = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomSeatControllerViewModel getViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-0  reason: not valid java name */
    public static final void m435onViewCreated$lambda0(VoiceRoomLiveTopUserInfoFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requireActivity().onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-1  reason: not valid java name */
    public static final void m436onViewCreated$lambda1(VoiceRoomLiveTopUserInfoFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VoiceRoomBigInfoCardFragment newInstance = VoiceRoomBigInfoCardFragment.Companion.newInstance();
        FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
        newInstance.show(parentFragmentManager, "bigInfoCard");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-2  reason: not valid java name */
    public static final void m437onViewCreated$lambda2(VoiceRoomLiveTopUserInfoFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VoiceRoomVisitorListFragment newInstance = VoiceRoomVisitorListFragment.Companion.newInstance();
        FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
        newInstance.show(parentFragmentManager, "members");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-3  reason: not valid java name */
    public static final void m438onViewCreated$lambda3(VoiceRoomLiveTopUserInfoFragment this$0, FragmentVoiceRoomLiveTopUserInfoBinding viewBinding, VoiceRoomInfoModel voiceRoomInfoModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(viewBinding, "$viewBinding");
        if (voiceRoomInfoModel == null) {
            this$0.resetViews(viewBinding);
        } else {
            this$0.setDataToView(viewBinding, voiceRoomInfoModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-4  reason: not valid java name */
    public static final void m439onViewCreated$lambda4(VoiceRoomLiveTopUserInfoFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VoiceRoomSeatControllerViewModel.loadViewerList$default(this$0.getViewModel(), 0, false, 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-5  reason: not valid java name */
    public static final void m440onViewCreated$lambda5(VoiceRoomLiveTopUserInfoFragment this$0, FragmentVoiceRoomLiveTopUserInfoBinding viewBinding, List list) {
        List mutableList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(viewBinding, "$viewBinding");
        if (list == null) {
            this$0.mAdapter.setNewInstance(null);
            this$0.page = 1;
            viewBinding.inRoomMemberCount.setText("0");
            return;
        }
        ViewerAdapter viewerAdapter = this$0.mAdapter;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
        viewerAdapter.setNewInstance(mutableList);
        this$0.mRecyclerViewUsers.scrollToPosition(0);
        viewBinding.inRoomMemberCount.setText(String.valueOf(this$0.getViewModel().getViewerCount().getValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-6  reason: not valid java name */
    public static final void m441onViewCreated$lambda6(FragmentVoiceRoomLiveTopUserInfoBinding viewBinding, Integer num) {
        Intrinsics.checkNotNullParameter(viewBinding, "$viewBinding");
        viewBinding.inRoomMemberCount.setText(String.valueOf(num));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-7  reason: not valid java name */
    public static final void m442onViewCreated$lambda7(VoiceRoomLiveTopUserInfoFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!it.booleanValue()) {
            BaseLoadMoreModule.loadMoreEnd$default(this$0.mAdapter.getLoadMoreModule(), false, 1, null);
        } else {
            this$0.mAdapter.getLoadMoreModule().loadMoreComplete();
        }
        BaseLoadMoreModule loadMoreModule = this$0.mAdapter.getLoadMoreModule();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        loadMoreModule.setEnableLoadMore(it.booleanValue());
        this$0.mAdapter.getLoadMoreModule().setAutoLoadMore(it.booleanValue());
    }

    private final void resetViews(FragmentVoiceRoomLiveTopUserInfoBinding fragmentVoiceRoomLiveTopUserInfoBinding) {
        fragmentVoiceRoomLiveTopUserInfoBinding.masterName.setText("");
        fragmentVoiceRoomLiveTopUserInfoBinding.inRoomMemberCount.setText("0");
        fragmentVoiceRoomLiveTopUserInfoBinding.roomId.setText("");
        fragmentVoiceRoomLiveTopUserInfoBinding.focusBtn.setVisibility(8);
        fragmentVoiceRoomLiveTopUserInfoBinding.voiceRoomHostHead.setImageDrawable(null);
    }

    private final void setDataToView(FragmentVoiceRoomLiveTopUserInfoBinding fragmentVoiceRoomLiveTopUserInfoBinding, final VoiceRoomInfoModel voiceRoomInfoModel) {
        fragmentVoiceRoomLiveTopUserInfoBinding.masterName.setText(voiceRoomInfoModel.getTitle());
        fragmentVoiceRoomLiveTopUserInfoBinding.masterName.setSelected(true);
        TextView textView = fragmentVoiceRoomLiveTopUserInfoBinding.roomId;
        textView.setText("ID:" + voiceRoomInfoModel.getRoomId());
        hc.a.i(fragmentVoiceRoomLiveTopUserInfoBinding.voiceRoomHostHead, voiceRoomInfoModel.getCoverImgUrl(), -1, new jc.b(true, true, true, true, (float) DensityUtil.dp2px(7.0f)));
        int roleType = voiceRoomInfoModel.getRoleType();
        if (roleType == 1) {
            fragmentVoiceRoomLiveTopUserInfoBinding.focusBtn.setVisibility(8);
        } else if (roleType == 10 || roleType == 20) {
            fragmentVoiceRoomLiveTopUserInfoBinding.focusBtn.setVisibility(8);
        } else if (roleType == 30) {
            fragmentVoiceRoomLiveTopUserInfoBinding.focusBtn.setVisibility(0);
        }
        fragmentVoiceRoomLiveTopUserInfoBinding.focusBtn.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomLiveTopUserInfoFragment.m444setDataToView$lambda13$lambda9(VoiceRoomLiveTopUserInfoFragment.this, view);
            }
        });
        if (voiceRoomInfoModel.getNature() == 2) {
            if (voiceRoomInfoModel.getRoleType() == 1) {
                fragmentVoiceRoomLiveTopUserInfoBinding.shareRoom.setVisibility(0);
                fragmentVoiceRoomLiveTopUserInfoBinding.dividerView.setVisibility(0);
            } else {
                fragmentVoiceRoomLiveTopUserInfoBinding.shareRoom.setVisibility(8);
                fragmentVoiceRoomLiveTopUserInfoBinding.dividerView.setVisibility(8);
            }
        } else {
            fragmentVoiceRoomLiveTopUserInfoBinding.shareRoom.setVisibility(0);
        }
        ImageView shareRoom = fragmentVoiceRoomLiveTopUserInfoBinding.shareRoom;
        Intrinsics.checkNotNullExpressionValue(shareRoom, "shareRoom");
        ViewExtendsKt.onClick$default(shareRoom, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomLiveTopUserInfoFragment.m443setDataToView$lambda13$lambda12(VoiceRoomLiveTopUserInfoFragment.this, voiceRoomInfoModel, view);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setDataToView$lambda-13$lambda-12  reason: not valid java name */
    public static final void m443setDataToView$lambda13$lambda12(VoiceRoomLiveTopUserInfoFragment this$0, VoiceRoomInfoModel model, View view) {
        String roomId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        Object navigation = o.a.c().a(RouterPath.ROUTER_GC_VOICE_ROOM_SHARE).navigation();
        Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.lib_service_center.share.service.ShareProxy");
        ShareProxy shareProxy = (ShareProxy) navigation;
        FragmentActivity activity = this$0.getActivity();
        if (activity == null || (roomId = model.getRoomId()) == null) {
            return;
        }
        shareProxy.start(activity, roomId, "", "", Intrinsics.areEqual(b8.e.g().getUserId(), model.getRoomId()), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setDataToView$lambda-13$lambda-9  reason: not valid java name */
    public static final void m444setDataToView$lambda13$lambda9(VoiceRoomLiveTopUserInfoFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VoiceRoomBigInfoCardFragment.Companion.showJoinTips(this$0, this$0.getViewModel(), this$0.getMemberViewModel());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveUserInfoFragment, com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_voice_room_live_top_user_info;
    }

    @NotNull
    public final ViewerAdapter getMAdapter() {
        return this.mAdapter;
    }

    @NotNull
    public final VoiceRoomMemberViewModel getMemberViewModel() {
        return (VoiceRoomMemberViewModel) this.memberViewModel$delegate.getValue();
    }

    public final int getPage() {
        return this.page;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveUserInfoFragment
    protected void initVisitorListView() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveUserInfoFragment
    public void onLiveFinish() {
        super.onLiveFinish();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public /* bridge */ /* synthetic */ void onPlayMusicAnim(String str, String str2, int i9) {
        d9.d.a(this, str, str2, i9);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveUserInfoFragment, com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onPlaySuccess() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        final FragmentVoiceRoomLiveTopUserInfoBinding bind = FragmentVoiceRoomLiveTopUserInfoBinding.bind(view);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
        ImageView imageView = bind.closeRoom;
        Intrinsics.checkNotNullExpressionValue(imageView, "viewBinding.closeRoom");
        ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VoiceRoomLiveTopUserInfoFragment.m435onViewCreated$lambda0(VoiceRoomLiveTopUserInfoFragment.this, view2);
            }
        }, 1, null);
        LinearLayout linearLayout = bind.topInfoClick;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "viewBinding.topInfoClick");
        ViewExtendsKt.onClick$default(linearLayout, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VoiceRoomLiveTopUserInfoFragment.m436onViewCreated$lambda1(VoiceRoomLiveTopUserInfoFragment.this, view2);
            }
        }, 1, null);
        LinearLayout linearLayout2 = bind.members;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "viewBinding.members");
        ViewExtendsKt.onClick$default(linearLayout2, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VoiceRoomLiveTopUserInfoFragment.m437onViewCreated$lambda2(VoiceRoomLiveTopUserInfoFragment.this, view2);
            }
        }, 1, null);
        getViewModel().getRoomInfo().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.live.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomLiveTopUserInfoFragment.m438onViewCreated$lambda3(VoiceRoomLiveTopUserInfoFragment.this, bind, (VoiceRoomInfoModel) obj);
            }
        });
        this.mRecyclerViewUsers.setVisibility(0);
        this.mRecyclerViewUsers.setAdapter(this.mAdapter);
        this.mAdapter.getLoadMoreModule().setOnLoadMoreListener(new x0.j() { // from class: com.guochao.faceshow.aaspring.modulars.live.j
            @Override // x0.j
            public final void onLoadMore() {
                VoiceRoomLiveTopUserInfoFragment.m439onViewCreated$lambda4(VoiceRoomLiveTopUserInfoFragment.this);
            }
        });
        getViewModel().getViewerList().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.live.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomLiveTopUserInfoFragment.m440onViewCreated$lambda5(VoiceRoomLiveTopUserInfoFragment.this, bind, (List) obj);
            }
        });
        getViewModel().getViewerCount().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.live.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomLiveTopUserInfoFragment.m441onViewCreated$lambda6(FragmentVoiceRoomLiveTopUserInfoBinding.this, (Integer) obj);
            }
        });
        getViewModel().getViewerHasMore().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.live.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomLiveTopUserInfoFragment.m442onViewCreated$lambda7(VoiceRoomLiveTopUserInfoFragment.this, (Boolean) obj);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveUserInfoFragment
    public void refreshBroadcasterInfo(@Nullable List<LiveInfoMatchBean> list) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveUserInfoFragment
    public void refreshUserInfo(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable List<AudienceInformation> list, boolean z10) {
    }

    public final void setPage(int i9) {
        this.page = i9;
    }
}
