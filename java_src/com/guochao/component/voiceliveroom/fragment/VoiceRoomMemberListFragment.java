package com.guochao.component.voiceliveroom.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.android.arouter.facade.Postcard;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.liveroom.R$drawable;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.FragmentVoiceRoomMemberBinding;
import com.guochao.component.liveroom.databinding.ListItemVoiceMembersBinding;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberListItemModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel;
import com.guochao.component.voiceliveroom.view.LoadMoreTextView;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.tencent.imsdk.BaseConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 ;2\u00020\u0001:\u0004;<=>B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u001e0#j\b\u0012\u0004\u0012\u00020\u001e`$J\u001a\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0016\u0010+\u001a\u00020&2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-H\u0002J\u0012\u0010/\u001a\u00020&2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0012\u00100\u001a\u0002012\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u001a\u00102\u001a\u00020&2\u0006\u00103\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u00104\u001a\u00020&H\u0002J\u0010\u00105\u001a\u00020&2\u0006\u00106\u001a\u00020\nH\u0002J\b\u00107\u001a\u00020&H\u0002J\b\u00108\u001a\u00020&H\u0002J\b\u00109\u001a\u00020&H\u0002J\b\u0010:\u001a\u00020&H\u0002R\u001f\u0010\u0003\u001a\u00060\u0004R\u00020\u00008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\b\u001a\u0004\b\u000e\u0010\u000fR$\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\b\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\b\u001a\u0004\b\u001f\u0010 ¨\u0006?"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;", "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;", "()V", "adapter", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberAdapter;", "getAdapter", "()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberAdapter;", "adapter$delegate", "Lkotlin/Lazy;", "operationMode", "", "page", "", "role", "getRole", "()I", "role$delegate", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "viewModel$delegate", "voiceRoomId", "", "getVoiceRoomId", "()Ljava/lang/String;", "voiceRoomId$delegate", "getUserIds", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "notifyWithData", "voiceRoomMemberPagedModel", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "postDelayedLoadData", "setOperationMode", "mode", "showDeleteTips", "showMenu", "showRemoveAdminTips", "showTobeAdminTips", "Companion", "MemberAdapter", "MemberHolder", "TitleHolder", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMemberListFragment extends BaseGCLiveRoomFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Lazy adapter$delegate;
    private boolean operationMode;
    private int page;
    @NotNull
    private final Lazy role$delegate;
    public FragmentVoiceRoomMemberBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;
    @NotNull
    private final Lazy voiceRoomId$delegate;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;", "roomId", "", "role", "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final VoiceRoomMemberListFragment newInstance(@NotNull String roomId, int i9) {
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            Bundle bundle = new Bundle();
            bundle.putString("roomId", roomId);
            bundle.putInt("role", i9);
            VoiceRoomMemberListFragment voiceRoomMemberListFragment = new VoiceRoomMemberListFragment();
            voiceRoomMemberListFragment.setArguments(bundle);
            return voiceRoomMemberListFragment;
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0005¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0014¨\u0006\u000f"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberAdapter;", "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/chad/library/adapter/base/module/LoadMoreModule;", "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;)V", "convert", "", "holder", BaseConfig.ITEM, "onCreateDefViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class MemberAdapter extends BaseMultiItemQuickAdapter<VoiceRoomMemberListItemModel, BaseViewHolder> implements LoadMoreModule {
        public MemberAdapter() {
            super(null, 1, null);
            getLoadMoreModule().setLoadMoreView(new LoadMoreTextView(null, 1, null));
            getLoadMoreModule().setEnableLoadMore(true);
            getLoadMoreModule().setAutoLoadMore(true);
            getLoadMoreModule().setEnableLoadMoreIfNotFullPage(true);
        }

        @Override // com.chad.library.adapter.base.module.LoadMoreModule
        @NotNull
        public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
            return LoadMoreModule.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
        }

        @Override // com.chad.library.adapter.base.BaseMultiItemQuickAdapter, com.chad.library.adapter.base.BaseQuickAdapter
        @NotNull
        protected BaseViewHolder onCreateDefViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            if (i9 == -1) {
                VoiceRoomMemberListFragment voiceRoomMemberListFragment = VoiceRoomMemberListFragment.this;
                View inflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.list_item_voice_members, parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …                        )");
                return new MemberHolder(voiceRoomMemberListFragment, inflate);
            }
            VoiceRoomMemberListFragment voiceRoomMemberListFragment2 = VoiceRoomMemberListFragment.this;
            View inflate2 = LayoutInflater.from(parent.getContext()).inflate(R$layout.list_item_voice_member_list_title, parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate2, "from(parent.context)\n   …                        )");
            return new TitleHolder(voiceRoomMemberListFragment2, inflate2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull BaseViewHolder holder, @NotNull VoiceRoomMemberListItemModel item) {
            int i9;
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            if (holder instanceof TitleHolder) {
                int i10 = R$id.title;
                int itemType = item.getItemType();
                if (itemType == 1) {
                    i9 = R$string.voice_room_host;
                } else if (itemType != 2) {
                    i9 = R$string.voice_room_members;
                } else {
                    i9 = R$string.live_admin;
                }
                holder.setText(i10, i9);
            } else if (holder instanceof MemberHolder) {
                ((MemberHolder) holder).bind(item);
            }
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$MemberHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;Landroid/view/View;)V", "viewBinding", "Lcom/guochao/component/liveroom/databinding/ListItemVoiceMembersBinding;", "bind", "", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class MemberHolder extends BaseViewHolder {
        final /* synthetic */ VoiceRoomMemberListFragment this$0;
        @NotNull
        private final ListItemVoiceMembersBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MemberHolder(@NotNull VoiceRoomMemberListFragment voiceRoomMemberListFragment, View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            this.this$0 = voiceRoomMemberListFragment;
            ListItemVoiceMembersBinding bind = ListItemVoiceMembersBinding.bind(this.itemView);
            Intrinsics.checkNotNullExpressionValue(bind, "bind(itemView)");
            this.viewBinding = bind;
        }

        public final void bind(@NotNull VoiceRoomMemberListItemModel model) {
            boolean equals;
            Intrinsics.checkNotNullParameter(model, "model");
            VoiceRoomMemberModel model2 = model.getModel();
            if (model2 != null) {
                this.viewBinding.nickName.setText(model2.getNickName());
                this.viewBinding.avatarView.h(model2);
                this.viewBinding.levelView.setLevel(model2.getLevel());
                this.viewBinding.vipView.setVipLevel(model2.getVipLevel());
                this.viewBinding.region.setText(model2.getAddress());
                this.viewBinding.userGenderAge.b(model2.getGender(), model2.getAge());
            }
            if (this.this$0.operationMode) {
                VoiceRoomMemberModel model3 = model.getModel();
                if ((model3 != null ? model3.getMemberType() : 30) > this.this$0.getRole()) {
                    this.viewBinding.selected.setVisibility(0);
                    equals = StringsKt__StringsJVMKt.equals(Language.ARABIC, q7.a.e().c(), true);
                    if (equals) {
                        this.viewBinding.myCard.setTranslationX(DensityUtil.dp2px(-52.0f));
                    } else {
                        this.viewBinding.myCard.setTranslationX(DensityUtil.dp2px(52.0f));
                    }
                    this.viewBinding.selected.setSelected(model.isSelected());
                }
            }
            this.viewBinding.myCard.setTranslationX(0.0f);
            this.viewBinding.selected.setVisibility(4);
            this.viewBinding.selected.setSelected(model.isSelected());
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$TitleHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;Landroid/view/View;)V", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class TitleHolder extends BaseViewHolder {
        final /* synthetic */ VoiceRoomMemberListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TitleHolder(@NotNull VoiceRoomMemberListFragment voiceRoomMemberListFragment, View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            this.this$0 = voiceRoomMemberListFragment;
        }
    }

    public VoiceRoomMemberListFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<VoiceRoomMemberViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomMemberViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomMemberListFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomMemberViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomMemberViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$voiceRoomId$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return VoiceRoomMemberListFragment.this.requireArguments().getString("roomId", "");
            }
        });
        this.voiceRoomId$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<MemberAdapter>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$adapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomMemberListFragment.MemberAdapter invoke() {
                return new VoiceRoomMemberListFragment.MemberAdapter();
            }
        });
        this.adapter$delegate = lazy3;
        this.page = 1;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$role$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(VoiceRoomMemberListFragment.this.requireArguments().getInt("role", 30));
            }
        });
        this.role$delegate = lazy4;
    }

    private final MemberAdapter getAdapter() {
        return (MemberAdapter) this.adapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getRole() {
        return ((Number) this.role$delegate.getValue()).intValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomMemberViewModel getViewModel() {
        return (VoiceRoomMemberViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getVoiceRoomId() {
        Object value = this.voiceRoomId$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-voiceRoomId>(...)");
        return (String) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-10  reason: not valid java name */
    public static final void m281initView$lambda10(VoiceRoomMemberListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3$lambda-1  reason: not valid java name */
    public static final void m282initView$lambda3$lambda1(VoiceRoomMemberListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.page = 1;
        VoiceRoomMemberViewModel.loadMemberList$default(this$0.getViewModel(), this$0.getVoiceRoomId(), this$0.page, 0, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4  reason: not valid java name */
    public static final void m283initView$lambda4(VoiceRoomMemberListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showDeleteTips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5  reason: not valid java name */
    public static final void m284initView$lambda5(VoiceRoomMemberListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showRemoveAdminTips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-6  reason: not valid java name */
    public static final void m285initView$lambda6(VoiceRoomMemberListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showTobeAdminTips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-8  reason: not valid java name */
    public static final void m286initView$lambda8(VoiceRoomMemberListFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        if (((VoiceRoomMemberListItemModel) this$0.getAdapter().getData().get(i9)).getItemType() != -1) {
            return;
        }
        if (this$0.operationMode) {
            int role = this$0.getRole();
            VoiceRoomMemberModel model = ((VoiceRoomMemberListItemModel) this$0.getAdapter().getData().get(i9)).getModel();
            if (role >= (model != null ? model.getMemberType() : 1)) {
                return;
            }
            ((VoiceRoomMemberListItemModel) this$0.getAdapter().getData().get(i9)).setSelected(!((VoiceRoomMemberListItemModel) this$0.getAdapter().getData().get(i9)).isSelected());
            this$0.getAdapter().notifyItemChanged(i9);
        } else {
            Postcard a10 = o.a.c().a(RouterPath.ROUTER_USER_HOMEPAGE);
            VoiceRoomMemberModel model2 = ((VoiceRoomMemberListItemModel) this$0.getAdapter().getItem(i9)).getModel();
            a10.withString(Contants.USER_ID, model2 != null ? model2.getUserId() : null).navigation();
        }
        this$0.getUserIds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-9  reason: not valid java name */
    public static final void m287initView$lambda9(VoiceRoomMemberListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VoiceRoomMemberViewModel.loadMemberList$default(this$0.getViewModel(), this$0.getVoiceRoomId(), this$0.page, 0, 4, null);
    }

    private final void notifyWithData(List<VoiceRoomMemberListItemModel> list) {
        getViewBinding().swipe.setRefreshing(false);
        getAdapter().setNewInstance(list);
        this.page++;
        getUserIds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-17  reason: not valid java name */
    public static final void m288onViewCreated$lambda17(VoiceRoomMemberListFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (it.booleanValue()) {
            this$0.getAdapter().getLoadMoreModule().loadMoreComplete();
        } else {
            BaseLoadMoreModule.loadMoreEnd$default(this$0.getAdapter().getLoadMoreModule(), false, 1, null);
        }
        this$0.getAdapter().getLoadMoreModule().setEnableLoadMore(it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-19  reason: not valid java name */
    public static final void m289onViewCreated$lambda19(VoiceRoomMemberListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list != null) {
            this$0.notifyWithData(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-20  reason: not valid java name */
    public static final void m290onViewCreated$lambda20(VoiceRoomMemberListFragment this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = this$0.getViewBinding().tvTitle;
        textView.setText(this$0.getString(R$string.voice_room_members) + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void postDelayedLoadData() {
        getViewBinding().deleteIV.postDelayed(new Runnable() { // from class: com.guochao.component.voiceliveroom.fragment.t
            @Override // java.lang.Runnable
            public final void run() {
                VoiceRoomMemberListFragment.m291postDelayedLoadData$lambda11(VoiceRoomMemberListFragment.this);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: postDelayedLoadData$lambda-11  reason: not valid java name */
    public static final void m291postDelayedLoadData$lambda11(VoiceRoomMemberListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VoiceRoomMemberViewModel.loadMemberList$default(this$0.getViewModel(), this$0.getVoiceRoomId(), 1, 0, 4, null);
    }

    private final void setOperationMode(boolean z10) {
        this.operationMode = z10;
        showMenu();
        getAdapter().notifyDataSetChanged();
        if (this.operationMode) {
            getViewBinding().bottomMenu.setVisibility(0);
            int role = getRole();
            if (role == 1) {
                getViewBinding().tobeAdminIV.setVisibility(0);
                getViewBinding().removeAdminIV.setVisibility(0);
                return;
            } else if (role != 10) {
                getViewBinding().bottomMenu.setVisibility(4);
                return;
            } else {
                getViewBinding().tobeAdminIV.setVisibility(8);
                getViewBinding().removeAdminIV.setVisibility(8);
                ViewGroup.LayoutParams layoutParams = getViewBinding().deleteIV.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                layoutParams2.setMarginStart(DensityUtil.dp2px(52.0f));
                layoutParams2.setMarginEnd(DensityUtil.dp2px(52.0f));
                getViewBinding().deleteIV.setLayoutParams(layoutParams2);
                return;
            }
        }
        getViewBinding().bottomMenu.setVisibility(4);
        for (T t10 : getAdapter().getData()) {
            t10.setSelected(false);
        }
    }

    private final void showDeleteTips() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getString(R$string.voice_room_member_remove_des));
        FragmentActivity activity = getActivity();
        if (activity != null) {
            GCDialog.Builder builder = new GCDialog.Builder();
            String string = getString(R$string.voice_room_member_remove);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.voice_room_member_remove)");
            builder.title(string).contentText(spannableStringBuilder).onClick(new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showDeleteTips$1$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    onClick.dismiss();
                }
            }, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showDeleteTips$1$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    VoiceRoomMemberViewModel viewModel;
                    String voiceRoomId;
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    onClick.dismiss();
                    ArrayList<String> userIds = VoiceRoomMemberListFragment.this.getUserIds();
                    if (userIds.size() > 0) {
                        viewModel = VoiceRoomMemberListFragment.this.getViewModel();
                        voiceRoomId = VoiceRoomMemberListFragment.this.getVoiceRoomId();
                        final VoiceRoomMemberListFragment voiceRoomMemberListFragment = VoiceRoomMemberListFragment.this;
                        viewModel.memberRemove(voiceRoomId, userIds, GCValueCallbackKt.callbackOnLifecycle(voiceRoomMemberListFragment, new Function1<Boolean, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showDeleteTips$1$2.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                invoke(bool.booleanValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(boolean z10) {
                                if (z10) {
                                    ToastUtils.showToast$default(VoiceRoomMemberListFragment.this.getActivity(), R$string.voice_room_member_remove_toast, 0, 4, null);
                                    VoiceRoomMemberListFragment.this.postDelayedLoadData();
                                }
                            }
                        }, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showDeleteTips$1$2.2
                            @Override // kotlin.jvm.functions.Function2
                            /* renamed from: invoke */
                            public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                                invoke(num.intValue(), str);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(int i9, @Nullable String str) {
                            }
                        }));
                    }
                }
            }).build(activity).show();
        }
    }

    private final void showMenu() {
        int role = getRole();
        if (role == 1 || role == 10) {
            if (!this.operationMode) {
                ImageView imageView = getViewBinding().ivEndIcon;
                imageView.setVisibility(0);
                imageView.setImageResource(R$drawable.ic_voice_room_member_menu);
                Intrinsics.checkNotNullExpressionValue(imageView, "");
                ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.y
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VoiceRoomMemberListFragment.m292showMenu$lambda13$lambda12(VoiceRoomMemberListFragment.this, view);
                    }
                }, 1, null);
                return;
            }
            ImageView imageView2 = getViewBinding().ivEndIcon;
            imageView2.setVisibility(0);
            imageView2.setImageResource(R$drawable.ic_voice_room_operation_confirm);
            Intrinsics.checkNotNullExpressionValue(imageView2, "");
            ViewExtendsKt.onClick$default(imageView2, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoiceRoomMemberListFragment.m293showMenu$lambda15$lambda14(VoiceRoomMemberListFragment.this, view);
                }
            }, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showMenu$lambda-13$lambda-12  reason: not valid java name */
    public static final void m292showMenu$lambda13$lambda12(VoiceRoomMemberListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setOperationMode(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showMenu$lambda-15$lambda-14  reason: not valid java name */
    public static final void m293showMenu$lambda15$lambda14(VoiceRoomMemberListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setOperationMode(false);
    }

    private final void showRemoveAdminTips() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getString(R$string.voice_room_member_remove_admin_des));
        FragmentActivity activity = getActivity();
        if (activity != null) {
            GCDialog.Builder builder = new GCDialog.Builder();
            String string = getString(R$string.voice_room_member_remove_admin);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.voice_room_member_remove_admin)");
            builder.title(string).contentText(spannableStringBuilder).onClick(new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showRemoveAdminTips$1$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    onClick.dismiss();
                }
            }, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showRemoveAdminTips$1$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    VoiceRoomMemberViewModel viewModel;
                    String voiceRoomId;
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    onClick.dismiss();
                    ArrayList<String> userIds = VoiceRoomMemberListFragment.this.getUserIds();
                    if (userIds.size() > 0) {
                        viewModel = VoiceRoomMemberListFragment.this.getViewModel();
                        voiceRoomId = VoiceRoomMemberListFragment.this.getVoiceRoomId();
                        final VoiceRoomMemberListFragment voiceRoomMemberListFragment = VoiceRoomMemberListFragment.this;
                        Function1<Boolean, Unit> function1 = new Function1<Boolean, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showRemoveAdminTips$1$2.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                invoke(bool.booleanValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(boolean z10) {
                                if (z10) {
                                    ToastUtils.showToast$default(VoiceRoomMemberListFragment.this.getActivity(), R$string.voice_room_member_remove_admin_toast, 0, 4, null);
                                    VoiceRoomMemberListFragment.this.postDelayedLoadData();
                                }
                            }
                        };
                        final VoiceRoomMemberListFragment voiceRoomMemberListFragment2 = VoiceRoomMemberListFragment.this;
                        viewModel.adminRemove(voiceRoomId, userIds, GCValueCallbackKt.callbackOnLifecycle(voiceRoomMemberListFragment, function1, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showRemoveAdminTips$1$2.2
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            /* renamed from: invoke */
                            public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                                invoke(num.intValue(), str);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(int i9, @Nullable String str) {
                                if (i9 == 50001) {
                                    ToastUtils.showToast$default(VoiceRoomMemberListFragment.this.getActivity(), R$string.permission_rejection, 0, 4, null);
                                }
                            }
                        }));
                    }
                }
            }).build(activity).show();
        }
    }

    private final void showTobeAdminTips() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getString(R$string.voice_room_member_tobe_admin_des));
        FragmentActivity activity = getActivity();
        if (activity != null) {
            GCDialog.Builder builder = new GCDialog.Builder();
            String string = getString(R$string.voice_room_member_tobe_admin);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.voice_room_member_tobe_admin)");
            builder.title(string).contentText(spannableStringBuilder).onClick(new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showTobeAdminTips$1$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    onClick.dismiss();
                }
            }, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showTobeAdminTips$1$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    VoiceRoomMemberViewModel viewModel;
                    String voiceRoomId;
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    onClick.dismiss();
                    ArrayList<String> userIds = VoiceRoomMemberListFragment.this.getUserIds();
                    if (userIds.size() > 0) {
                        viewModel = VoiceRoomMemberListFragment.this.getViewModel();
                        voiceRoomId = VoiceRoomMemberListFragment.this.getVoiceRoomId();
                        final VoiceRoomMemberListFragment voiceRoomMemberListFragment = VoiceRoomMemberListFragment.this;
                        Function1<Boolean, Unit> function1 = new Function1<Boolean, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showTobeAdminTips$1$2.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                invoke(bool.booleanValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(boolean z10) {
                                if (z10) {
                                    ToastUtils.showToast$default(VoiceRoomMemberListFragment.this.getActivity(), R$string.voice_room_member_tobe_admin_toast, 0, 4, null);
                                    VoiceRoomMemberListFragment.this.postDelayedLoadData();
                                }
                            }
                        };
                        final VoiceRoomMemberListFragment voiceRoomMemberListFragment2 = VoiceRoomMemberListFragment.this;
                        viewModel.adminAdd(voiceRoomId, userIds, GCValueCallbackKt.callbackOnLifecycle(voiceRoomMemberListFragment, function1, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$showTobeAdminTips$1$2.2
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            /* renamed from: invoke */
                            public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                                invoke(num.intValue(), str);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(int i9, @Nullable String str) {
                                switch (i9) {
                                    case 50001:
                                        ToastUtils.showToast$default(VoiceRoomMemberListFragment.this.getActivity(), R$string.permission_rejection, 0, 4, null);
                                        return;
                                    case BaseConstants.ERR_SVR_CONV_INVALID_PARAMETERS /* 50002 */:
                                        FragmentActivity activity2 = VoiceRoomMemberListFragment.this.getActivity();
                                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                                        String string2 = VoiceRoomMemberListFragment.this.getString(R$string.voice_room_set_num_admin);
                                        Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.voice_room_set_num_admin)");
                                        String format = String.format(string2, Arrays.copyOf(new Object[]{"3"}, 1));
                                        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                                        ToastUtils.showToast$default(activity2, format, 0, 0, 12, null);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }));
                    }
                }
            }).build(activity).show();
        }
    }

    @NotNull
    public final ArrayList<String> getUserIds() {
        VoiceRoomMemberModel model;
        String userId;
        ArrayList<String> arrayList = new ArrayList<>();
        if (getAdapter() != null && getAdapter().getData().size() > 0) {
            for (VoiceRoomMemberListItemModel voiceRoomMemberListItemModel : getAdapter().getData()) {
                if (voiceRoomMemberListItemModel.getItemType() == -1 && voiceRoomMemberListItemModel.isSelected() && (model = voiceRoomMemberListItemModel.getModel()) != null && (userId = model.getUserId()) != null) {
                    arrayList.add(userId);
                }
            }
        }
        if (arrayList.size() > 0) {
            getViewBinding().buttonLL.setAlpha(1.0f);
            getViewBinding().deleteIV.setClickable(true);
            getViewBinding().tobeAdminIV.setClickable(true);
            getViewBinding().removeAdminIV.setClickable(true);
        } else {
            getViewBinding().buttonLL.setAlpha(0.3f);
            getViewBinding().deleteIV.setClickable(false);
            getViewBinding().tobeAdminIV.setClickable(false);
            getViewBinding().removeAdminIV.setClickable(false);
        }
        return arrayList;
    }

    @NotNull
    public final FragmentVoiceRoomMemberBinding getViewBinding() {
        FragmentVoiceRoomMemberBinding fragmentVoiceRoomMemberBinding = this.viewBinding;
        if (fragmentVoiceRoomMemberBinding != null) {
            return fragmentVoiceRoomMemberBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        final FragmentVoiceRoomMemberBinding viewBinding = getViewBinding();
        viewBinding.swipe.setRefreshing(true);
        viewBinding.swipe.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.guochao.component.voiceliveroom.fragment.e0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                VoiceRoomMemberListFragment.m282initView$lambda3$lambda1(VoiceRoomMemberListFragment.this);
            }
        });
        viewBinding.recyclerView.setAdapter(getAdapter());
        FrameLayout bottomMenu = viewBinding.bottomMenu;
        Intrinsics.checkNotNullExpressionValue(bottomMenu, "bottomMenu");
        if (ViewCompat.isLaidOut(bottomMenu) && !bottomMenu.isLayoutRequested()) {
            RecyclerView recyclerView = viewBinding.recyclerView;
            recyclerView.setPaddingRelative(recyclerView.getPaddingStart(), viewBinding.recyclerView.getPaddingTop(), viewBinding.recyclerView.getPaddingEnd(), bottomMenu.getMeasuredHeight());
        } else {
            bottomMenu.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberListFragment$initView$lambda-3$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(@NotNull View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    RecyclerView recyclerView2 = FragmentVoiceRoomMemberBinding.this.recyclerView;
                    recyclerView2.setPaddingRelative(recyclerView2.getPaddingStart(), FragmentVoiceRoomMemberBinding.this.recyclerView.getPaddingTop(), FragmentVoiceRoomMemberBinding.this.recyclerView.getPaddingEnd(), view.getMeasuredHeight());
                }
            });
        }
        VoiceRoomMemberViewModel.loadMemberList$default(getViewModel(), getVoiceRoomId(), this.page, 0, 4, null);
        ImageView imageView = getViewBinding().deleteIV;
        Intrinsics.checkNotNullExpressionValue(imageView, "viewBinding.deleteIV");
        ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomMemberListFragment.m283initView$lambda4(VoiceRoomMemberListFragment.this, view);
            }
        }, 1, null);
        ImageView imageView2 = getViewBinding().removeAdminIV;
        Intrinsics.checkNotNullExpressionValue(imageView2, "viewBinding.removeAdminIV");
        ViewExtendsKt.onClick$default(imageView2, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomMemberListFragment.m284initView$lambda5(VoiceRoomMemberListFragment.this, view);
            }
        }, 1, null);
        ImageView imageView3 = getViewBinding().tobeAdminIV;
        Intrinsics.checkNotNullExpressionValue(imageView3, "viewBinding.tobeAdminIV");
        ViewExtendsKt.onClick$default(imageView3, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomMemberListFragment.m285initView$lambda6(VoiceRoomMemberListFragment.this, view);
            }
        }, 1, null);
        getAdapter().setOnItemClickListener(new x0.f() { // from class: com.guochao.component.voiceliveroom.fragment.u
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                VoiceRoomMemberListFragment.m286initView$lambda8(VoiceRoomMemberListFragment.this, baseQuickAdapter, view, i9);
            }
        });
        getUserIds();
        getAdapter().getLoadMoreModule().setOnLoadMoreListener(new x0.j() { // from class: com.guochao.component.voiceliveroom.fragment.v
            @Override // x0.j
            public final void onLoadMore() {
                VoiceRoomMemberListFragment.m287initView$lambda9(VoiceRoomMemberListFragment.this);
            }
        });
        ImageView imageView4 = getViewBinding().ivLeftBack;
        Intrinsics.checkNotNullExpressionValue(imageView4, "viewBinding.ivLeftBack");
        ViewExtendsKt.onClick$default(imageView4, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomMemberListFragment.m281initView$lambda10(VoiceRoomMemberListFragment.this, view);
            }
        }, 1, null);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        AppCompatDialog createCenterDialog = createCenterDialog();
        Window window = createCenterDialog.getWindow();
        if (window != null) {
            window.setStatusBarColor(-1);
        }
        return createCenterDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        makeDialogLikeActivity();
        getViewModel().getMemberListHasMore().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.b0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomMemberListFragment.m288onViewCreated$lambda17(VoiceRoomMemberListFragment.this, (Boolean) obj);
            }
        });
        getViewModel().getMemberList().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.d0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomMemberListFragment.m289onViewCreated$lambda19(VoiceRoomMemberListFragment.this, (List) obj);
            }
        });
        getViewModel().getTitle().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.c0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomMemberListFragment.m290onViewCreated$lambda20(VoiceRoomMemberListFragment.this, (String) obj);
            }
        });
        showMenu();
    }

    public final void setViewBinding(@NotNull FragmentVoiceRoomMemberBinding fragmentVoiceRoomMemberBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoiceRoomMemberBinding, "<set-?>");
        this.viewBinding = fragmentVoiceRoomMemberBinding;
    }
}
