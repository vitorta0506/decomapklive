package com.guochao.component.voiceliveroom.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.FragmentVoiceRoomMyRoomListBinding;
import com.guochao.component.liveroom.databinding.LayoutVoiceRoomMyFooterBinding;
import com.guochao.component.voiceliveroom.adapter.VoiceRoomListAdapter;
import com.guochao.component.voiceliveroom.event.VoiceRoomChangeModeEvent;
import com.guochao.component.voiceliveroom.event.VoiceRoomRemoveEvent;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel;
import com.guochao.component.voiceliveroom.view.LoadMoreTextView;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomListViewModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 22\u00020\u0001:\u000223B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\"\u001a\u00020#H\u0014J\u001a\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\b\u0010)\u001a\u00020#H\u0015J\u0010\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020,H\u0007J\u0010\u0010-\u001a\u00020#2\u0006\u0010+\u001a\u00020.H\u0007J\u0012\u0010/\u001a\u00020#2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\b\u00100\u001a\u00020#H\u0016J\b\u00101\u001a\u00020#H\u0016R\u001f\u0010\u0003\u001a\u00060\u0004R\u00020\u00008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\b\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0002\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\b\u001a\u0004\b\u001f\u0010 ¨\u00064"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;", "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;", "()V", "adapter", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;", "getAdapter", "()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;", "adapter$delegate", "Lkotlin/Lazy;", "bottomViewBinding", "Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyFooterBinding;", "getBottomViewBinding", "()Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyFooterBinding;", "setBottomViewBinding", "(Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomMyFooterBinding;)V", "memberViewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "getMemberViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "memberViewModel$delegate", "page", "", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMyRoomListBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMyRoomListBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMyRoomListBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomListViewModel;", "viewModel$delegate", "initListener", "", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "loadDataAndObserve", "myRoomChangeMode", "event", "Lcom/guochao/component/voiceliveroom/event/VoiceRoomChangeModeEvent;", "myRoomRemove", "Lcom/guochao/component/voiceliveroom/event/VoiceRoomRemoveEvent;", "onCreate", "onDestroy", "onStart", "Companion", "MyVoiceRoomAdapter", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMyRoomListFragment extends FullWidthBaseFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Lazy adapter$delegate;
    public LayoutVoiceRoomMyFooterBinding bottomViewBinding;
    @NotNull
    private final Lazy memberViewModel$delegate;
    private int page = 1;
    public FragmentVoiceRoomMyRoomListBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomMyRoomListFragment newInstance() {
            return new VoiceRoomMyRoomListFragment();
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0014J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007¨\u0006\u0012"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;", "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter;", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Ljava/util/List;)V", "addLoadMoreModule", "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "convert", "", "holder", "Lcom/guochao/component/voiceliveroom/adapter/VoiceRoomListAdapter$VoiceRoomHolder;", BaseConfig.ITEM, "setNoMoreData", "num", "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class MyVoiceRoomAdapter extends VoiceRoomListAdapter {
        final /* synthetic */ VoiceRoomMyRoomListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyVoiceRoomAdapter(@NotNull final VoiceRoomMyRoomListFragment voiceRoomMyRoomListFragment, List<VoiceRoomInfoModel> list) {
            super(list);
            Intrinsics.checkNotNullParameter(list, "list");
            this.this$0 = voiceRoomMyRoomListFragment;
            getLoadMoreModule().setLoadMoreView(new LoadMoreTextView(""));
            getLoadMoreModule().setEnableLoadMore(true);
            getLoadMoreModule().setAutoLoadMore(false);
            getLoadMoreModule().setEnableLoadMoreIfNotFullPage(false);
            setOnItemLongClickListener(new x0.h() { // from class: com.guochao.component.voiceliveroom.fragment.m0
                @Override // x0.h
                public final boolean a(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                    boolean m301_init_$lambda0;
                    m301_init_$lambda0 = VoiceRoomMyRoomListFragment.MyVoiceRoomAdapter.m301_init_$lambda0(VoiceRoomMyRoomListFragment.MyVoiceRoomAdapter.this, voiceRoomMyRoomListFragment, baseQuickAdapter, view, i9);
                    return m301_init_$lambda0;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: _init_$lambda-0  reason: not valid java name */
        public static final boolean m301_init_$lambda0(final MyVoiceRoomAdapter this$0, final VoiceRoomMyRoomListFragment this$1, final BaseQuickAdapter _adapter, View _view, final int i9) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            Intrinsics.checkNotNullParameter(_adapter, "_adapter");
            Intrinsics.checkNotNullParameter(_view, "_view");
            String roomId = this$0.getData().get(i9).getRoomId();
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            if (Intrinsics.areEqual(roomId, current != null ? current.getUserId() : null)) {
                return false;
            }
            GCDialog.Builder builder = new GCDialog.Builder();
            String string = this$0.getContext().getString(R$string.voice_room_remove_room_title1);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.stri…_room_remove_room_title1)");
            builder.contentText(string).showCancel(true, this$0.getContext().getString(R$string.f15844ok)).showConfirm(this$0.getContext().getString(R$string.voice_room_remove_room_cancel)).onClick(new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    onClick.dismiss();
                    GCDialog.Builder builder2 = new GCDialog.Builder();
                    String string2 = onClick.getContext().getString(R$string.voice_room_remove_room_title2);
                    Intrinsics.checkNotNullExpressionValue(string2, "context.getString(R.stri…_room_remove_room_title2)");
                    GCDialog.Builder title = builder2.title(string2);
                    String string3 = onClick.getContext().getString(R$string.voice_room_remove_room_content);
                    Intrinsics.checkNotNullExpressionValue(string3, "context.getString(R.stri…room_remove_room_content)");
                    GCDialog.Builder contentText = title.contentText(string3);
                    AnonymousClass1 anonymousClass1 = new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1.1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                            invoke2(gCDialog);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull GCDialog onClick2) {
                            Intrinsics.checkNotNullParameter(onClick2, "$this$onClick");
                            onClick2.dismiss();
                        }
                    };
                    final VoiceRoomMyRoomListFragment.MyVoiceRoomAdapter myVoiceRoomAdapter = VoiceRoomMyRoomListFragment.MyVoiceRoomAdapter.this;
                    final int i10 = i9;
                    final VoiceRoomMyRoomListFragment voiceRoomMyRoomListFragment = this$1;
                    final BaseQuickAdapter<?, ?> baseQuickAdapter = _adapter;
                    GCDialog.Builder onClick2 = contentText.onClick(anonymousClass1, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1.2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                            invoke2(gCDialog);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull GCDialog onClick3) {
                            VoiceRoomMemberViewModel memberViewModel;
                            String userId;
                            Intrinsics.checkNotNullParameter(onClick3, "$this$onClick");
                            onClick3.dismiss();
                            ArrayList<String> arrayList = new ArrayList<>();
                            UserSessionModel current2 = UserSessionViewModel.Companion.instance().current();
                            if (current2 != null && (userId = current2.getUserId()) != null) {
                                arrayList.add(userId);
                            }
                            String roomId2 = VoiceRoomMyRoomListFragment.MyVoiceRoomAdapter.this.getData().get(i10).getRoomId();
                            if (roomId2 != null) {
                                final VoiceRoomMyRoomListFragment voiceRoomMyRoomListFragment2 = voiceRoomMyRoomListFragment;
                                final BaseQuickAdapter<?, ?> baseQuickAdapter2 = baseQuickAdapter;
                                final int i11 = i10;
                                memberViewModel = voiceRoomMyRoomListFragment2.getMemberViewModel();
                                memberViewModel.memberRemove(roomId2, arrayList, GCValueCallbackKt.callbackOnLifecycle$default(voiceRoomMyRoomListFragment2, new Function1<Boolean, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2$2$1
                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                                        invoke(bool.booleanValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(boolean z10) {
                                        VoiceRoomListViewModel viewModel;
                                        if (z10) {
                                            ToastUtils.showToast(VoiceRoomMyRoomListFragment.this.getActivity(), R$string.voice_room_setting_removed_toast, 1);
                                            baseQuickAdapter2.remove(i11);
                                            baseQuickAdapter2.notifyItemRemoved(i11);
                                            viewModel = VoiceRoomMyRoomListFragment.this.getViewModel();
                                            viewModel.minusMyRoom();
                                        }
                                    }
                                }, null, 2, null));
                            }
                        }
                    });
                    Context context = onClick.getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "context");
                    onClick2.build(context).show();
                }
            }, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$2
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
            }).build(this$0.getContext()).show();
            return true;
        }

        @Override // com.guochao.component.voiceliveroom.adapter.VoiceRoomListAdapter, com.chad.library.adapter.base.module.LoadMoreModule
        @NotNull
        public BaseLoadMoreModule addLoadMoreModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
            Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
            return super.addLoadMoreModule(baseQuickAdapter);
        }

        public final void setNoMoreData(int i9) {
            BaseLoadMoreView loadMoreView = getLoadMoreModule().getLoadMoreView();
            Intrinsics.checkNotNull(loadMoreView, "null cannot be cast to non-null type com.guochao.component.voiceliveroom.view.LoadMoreTextView");
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String string = getContext().getString(R$string.voice_room_my_room_loadmore, String.valueOf(i9));
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.stri…my_room_loadmore, \"$num\")");
            String format = String.format(string, Arrays.copyOf(new Object[0], 0));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            ((LoadMoreTextView) loadMoreView).setText(format);
            notifyItemChanged(getLoadMoreModule().getLoadMoreViewPosition());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.guochao.component.voiceliveroom.adapter.VoiceRoomListAdapter, com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull VoiceRoomListAdapter.VoiceRoomHolder holder, @NotNull VoiceRoomInfoModel item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            super.convert(holder, item);
            String roomId = item.getRoomId();
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            if (Intrinsics.areEqual(roomId, current != null ? current.getUserId() : null)) {
                holder.getBinding().mineTV.setVisibility(0);
            } else {
                holder.getBinding().mineTV.setVisibility(8);
            }
        }
    }

    public VoiceRoomMyRoomListFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VoiceRoomListViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomListViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, VoiceRoomListViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(VoiceRoomListViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.component.voiceliveroom.viewmodel.VoiceRoomListViewModel");
                return (VoiceRoomListViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VoiceRoomMemberViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$special$$inlined$lazyViewModel$default$2
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
        this.memberViewModel$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<MyVoiceRoomAdapter>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$adapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomMyRoomListFragment.MyVoiceRoomAdapter invoke() {
                return new VoiceRoomMyRoomListFragment.MyVoiceRoomAdapter(VoiceRoomMyRoomListFragment.this, new ArrayList());
            }
        });
        this.adapter$delegate = lazy3;
    }

    private final MyVoiceRoomAdapter getAdapter() {
        return (MyVoiceRoomAdapter) this.adapter$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomMemberViewModel getMemberViewModel() {
        return (VoiceRoomMemberViewModel) this.memberViewModel$delegate.getValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomListViewModel getViewModel() {
        return (VoiceRoomListViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-1$lambda-0  reason: not valid java name */
    public static final void m296initListener$lambda1$lambda0(VoiceRoomMyRoomListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.page = 1;
        this$0.getViewModel().loadMyRoomList(this$0.page);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-2  reason: not valid java name */
    public static final void m297initListener$lambda2(VoiceRoomMyRoomListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-3  reason: not valid java name */
    public static final void m298initListener$lambda3(VoiceRoomMyRoomListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().loadMyRoomList(this$0.page);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005c  */
    /* renamed from: loadDataAndObserve$lambda-5  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m299loadDataAndObserve$lambda5(com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment r4, com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel r5) {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L11
            int r2 = r5.getPage()
            if (r2 != r0) goto L11
            r2 = 1
            goto L12
        L11:
            r2 = 0
        L12:
            if (r2 != 0) goto L32
            if (r5 == 0) goto L1e
            int r2 = r5.getPage()
            if (r2 != 0) goto L1e
            r2 = 1
            goto L1f
        L1e:
            r2 = 0
        L1f:
            if (r2 == 0) goto L22
            goto L32
        L22:
            if (r5 == 0) goto L3d
            java.util.List r2 = r5.getList()
            if (r2 == 0) goto L3d
            com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter r3 = r4.getAdapter()
            r3.addData(r2)
            goto L3d
        L32:
            com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter r2 = r4.getAdapter()
            java.util.List r3 = r5.getList()
            r2.setList(r3)
        L3d:
            if (r5 == 0) goto L4a
            java.util.List r5 = r5.getList()
            if (r5 == 0) goto L4a
            int r5 = r5.size()
            goto L4b
        L4a:
            r5 = 0
        L4b:
            r2 = 20
            if (r5 >= r2) goto L5c
            com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter r5 = r4.getAdapter()
            com.chad.library.adapter.base.module.BaseLoadMoreModule r5 = r5.getLoadMoreModule()
            r2 = 0
            com.chad.library.adapter.base.module.BaseLoadMoreModule.loadMoreEnd$default(r5, r1, r0, r2)
            goto L67
        L5c:
            com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter r5 = r4.getAdapter()
            com.chad.library.adapter.base.module.BaseLoadMoreModule r5 = r5.getLoadMoreModule()
            r5.loadMoreComplete()
        L67:
            int r5 = r4.page
            int r5 = r5 + r0
            r4.page = r5
            com.guochao.component.liveroom.databinding.FragmentVoiceRoomMyRoomListBinding r4 = r4.getViewBinding()
            com.guochao.faceshow.aaspring.views.GCSwipeRefreshView r4 = r4.swipe
            r4.setRefreshing(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment.m299loadDataAndObserve$lambda5(com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment, com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadDataAndObserve$lambda-7$lambda-6  reason: not valid java name */
    public static final void m300loadDataAndObserve$lambda7$lambda6(VoiceRoomMyRoomListFragment this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBottomViewBinding().textTV.setText(this$0.getString(R$string.voice_room_my_room_loadmore, String.valueOf(num)));
        if (this$0.getAdapter().hasFooterLayout()) {
            this$0.getAdapter().removeAllFooterView();
            MyVoiceRoomAdapter adapter = this$0.getAdapter();
            LinearLayout root = this$0.getBottomViewBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "bottomViewBinding.root");
            BaseQuickAdapter.addFooterView$default(adapter, root, 0, 0, 6, null);
            return;
        }
        MyVoiceRoomAdapter adapter2 = this$0.getAdapter();
        LinearLayout root2 = this$0.getBottomViewBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "bottomViewBinding.root");
        BaseQuickAdapter.addFooterView$default(adapter2, root2, 0, 0, 6, null);
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomMyRoomListFragment newInstance() {
        return Companion.newInstance();
    }

    @NotNull
    public final LayoutVoiceRoomMyFooterBinding getBottomViewBinding() {
        LayoutVoiceRoomMyFooterBinding layoutVoiceRoomMyFooterBinding = this.bottomViewBinding;
        if (layoutVoiceRoomMyFooterBinding != null) {
            return layoutVoiceRoomMyFooterBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("bottomViewBinding");
        return null;
    }

    @NotNull
    public final FragmentVoiceRoomMyRoomListBinding getViewBinding() {
        FragmentVoiceRoomMyRoomListBinding fragmentVoiceRoomMyRoomListBinding = this.viewBinding;
        if (fragmentVoiceRoomMyRoomListBinding != null) {
            return fragmentVoiceRoomMyRoomListBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment
    public void initListener() {
        super.initListener();
        FragmentVoiceRoomMyRoomListBinding viewBinding = getViewBinding();
        viewBinding.swipe.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.guochao.component.voiceliveroom.fragment.k0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                VoiceRoomMyRoomListFragment.m296initListener$lambda1$lambda0(VoiceRoomMyRoomListFragment.this);
            }
        });
        viewBinding.recyclerView.setAdapter(getAdapter());
        getViewBinding().closeIV.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomMyRoomListFragment.m297initListener$lambda2(VoiceRoomMyRoomListFragment.this, view);
            }
        });
        getAdapter().getLoadMoreModule().setOnLoadMoreListener(new x0.j() { // from class: com.guochao.component.voiceliveroom.fragment.l0
            @Override // x0.j
            public final void onLoadMore() {
                VoiceRoomMyRoomListFragment.m298initListener$lambda3(VoiceRoomMyRoomListFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        LayoutVoiceRoomMyFooterBinding inflate = LayoutVoiceRoomMyFooterBinding.inflate(getLayoutInflater(), null, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(layoutInflater, null, false)");
        setBottomViewBinding(inflate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment
    public void loadDataAndObserve() {
        super.loadDataAndObserve();
        getViewModel().loadMyRoomList(this.page);
        getViewModel().getMyRoomList().observe(this, new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.i0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomMyRoomListFragment.m299loadDataAndObserve$lambda5(VoiceRoomMyRoomListFragment.this, (VoiceRoomMyRoomListModel) obj);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity != null) {
            getViewModel().getMyRoomCount().observe(activity, new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.j0
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    VoiceRoomMyRoomListFragment.m300loadDataAndObserve$lambda7$lambda6(VoiceRoomMyRoomListFragment.this, (Integer) obj);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void myRoomChangeMode(@NotNull VoiceRoomChangeModeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int i9 = 0;
        for (Object obj : getAdapter().getData()) {
            int i10 = i9 + 1;
            if (i9 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            if (Intrinsics.areEqual(event.getRoomId(), ((VoiceRoomInfoModel) obj).getRoomId())) {
                getAdapter().getData().get(i9).setNature(event.getMode());
                getAdapter().notifyItemChanged(i9);
            }
            i9 = i10;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void myRoomRemove(@NotNull VoiceRoomRemoveEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int i9 = 0;
        for (Object obj : getAdapter().getData()) {
            int i10 = i9 + 1;
            if (i9 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            if (Intrinsics.areEqual(event.getRoomId(), ((VoiceRoomInfoModel) obj).getRoomId())) {
                getAdapter().removeAt(i9);
                getViewModel().minusMyRoom();
                getAdapter().notifyDataSetChanged();
            }
            i9 = i10;
        }
    }

    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }

    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        super.onStart();
        Dialog dialog = getDialog();
        WindowManager.LayoutParams attributes = (dialog == null || (window2 = dialog.getWindow()) == null) ? null : window2.getAttributes();
        if (attributes != null) {
            attributes.dimAmount = 0.6f;
        }
        Dialog dialog2 = getDialog();
        Window window3 = dialog2 != null ? dialog2.getWindow() : null;
        if (window3 != null) {
            window3.setAttributes(attributes);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null && (window = dialog3.getWindow()) != null) {
            window.addFlags(2);
        }
        VoiceRoomMiniHelper voiceRoomMiniHelper = VoiceRoomMiniHelper.INSTANCE;
        if (voiceRoomMiniHelper.isPlaying()) {
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            voiceRoomMiniHelper.showView(requireActivity);
        }
    }

    public final void setBottomViewBinding(@NotNull LayoutVoiceRoomMyFooterBinding layoutVoiceRoomMyFooterBinding) {
        Intrinsics.checkNotNullParameter(layoutVoiceRoomMyFooterBinding, "<set-?>");
        this.bottomViewBinding = layoutVoiceRoomMyFooterBinding;
    }

    public final void setViewBinding(@NotNull FragmentVoiceRoomMyRoomListBinding fragmentVoiceRoomMyRoomListBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoiceRoomMyRoomListBinding, "<set-?>");
        this.viewBinding = fragmentVoiceRoomMyRoomListBinding;
    }
}
