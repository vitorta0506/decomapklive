package com.guochao.component.voiceliveroom.fragment;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.R$color;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.liveroom.R$mipmap;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.FragmentVoliceBigInfoCardBinding;
import com.guochao.component.liveroom.databinding.ItemBigInfoMemberBinding;
import com.guochao.component.voiceliveroom.helper.a;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberListItemModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.LiveRandomGo;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.lib_service_center.report.service.ReportProxy;
import com.tencent.imsdk.BaseConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \"2\u00020\u0001:\u0003\"#$B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u001aH\u0014J\b\u0010\u001c\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u001aH\u0002J\b\u0010!\u001a\u00020\u001aH\u0002R\u0012\u0010\u0003\u001a\u00060\u0004R\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\u0002\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\n\u001a\u0004\b\u0016\u0010\u0017¨\u0006%"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;", "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;", "()V", "mAdapter", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;", "memberViewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "getMemberViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "memberViewModel$delegate", "Lkotlin/Lazy;", "roleType", "", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoliceBigInfoCardBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "initListener", "", "loadDataAndObserve", "loadMember", "onHiddenChanged", "hidden", "", "showMemberList", "showQuitTips", "Companion", "PeopleAdapter", "PeopleViewHolder", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomBigInfoCardFragment extends FullWidthBaseFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private PeopleAdapter mAdapter;
    @NotNull
    private final Lazy memberViewModel$delegate;
    private int roleType;
    public FragmentVoliceBigInfoCardBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007¨\u0006\r"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;", "showJoinTips", "", "fragment", "Landroidx/fragment/app/Fragment;", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "memberViewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomBigInfoCardFragment newInstance() {
            VoiceRoomBigInfoCardFragment voiceRoomBigInfoCardFragment = new VoiceRoomBigInfoCardFragment();
            voiceRoomBigInfoCardFragment.setArguments(new Bundle());
            return voiceRoomBigInfoCardFragment;
        }

        @JvmStatic
        public final void showJoinTips(@NotNull Fragment fragment, @NotNull final VoiceRoomSeatControllerViewModel viewModel, @NotNull final VoiceRoomMemberViewModel memberViewModel) {
            SpannableStringBuilder spannableStringBuilder;
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(viewModel, "viewModel");
            Intrinsics.checkNotNullParameter(memberViewModel, "memberViewModel");
            final FragmentActivity activity = fragment.getActivity();
            if (activity == null) {
                return;
            }
            memberViewModel.setVoiceRoomSeatControllerViewModel(viewModel);
            VoiceRoomInfoModel value = viewModel.getRoomInfo().getValue();
            int memberPrice = value != null ? value.getMemberPrice() : 0;
            new SpannableStringBuilder("");
            if (memberPrice > 0) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String string = fragment.getResources().getString(R$string.member_content1_fee);
                Intrinsics.checkNotNullExpressionValue(string, "fragment.resources.getSt…ring.member_content1_fee)");
                String format = String.format(string, Arrays.copyOf(new Object[]{"{icon}" + memberPrice}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                spannableStringBuilder = new SpannableStringBuilder(format);
                Drawable drawable = ContextCompat.getDrawable(fragment.requireActivity(), R$mipmap.ic_voice_room_diamond);
                if (drawable != null) {
                    drawable.setBounds(0, 0, ScreenTools.dip2px(13.0f), ScreenTools.dip2px(13.0f));
                    com.guochao.component.voiceliveroom.helper.a.c(fragment.getResources().getColor(R$color.orange_FF9900), spannableStringBuilder, String.valueOf(memberPrice));
                    com.guochao.component.voiceliveroom.helper.a.b(spannableStringBuilder, format, new a.C0145a(drawable));
                }
            } else {
                String string2 = fragment.getResources().getString(R$string.member_content1_free);
                Intrinsics.checkNotNullExpressionValue(string2, "fragment.resources.getSt…ing.member_content1_free)");
                spannableStringBuilder = new SpannableStringBuilder(string2);
            }
            final FragmentActivity it1 = fragment.requireActivity();
            GCDialog.Builder builder = new GCDialog.Builder();
            String string3 = fragment.getResources().getString(R$string.member_title);
            Intrinsics.checkNotNullExpressionValue(string3, "fragment.resources.getSt…ng(R.string.member_title)");
            GCDialog.Builder onClick = builder.title(string3).contentText(spannableStringBuilder).onClick(new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$1
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
            }, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2
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
                public final void invoke2(@NotNull GCDialog onClick2) {
                    String roomId;
                    Intrinsics.checkNotNullParameter(onClick2, "$this$onClick");
                    onClick2.dismiss();
                    VoiceRoomInfoModel value2 = VoiceRoomSeatControllerViewModel.this.getRoomInfo().getValue();
                    if (value2 == null || (roomId = value2.getRoomId()) == null) {
                        return;
                    }
                    VoiceRoomMemberViewModel voiceRoomMemberViewModel = memberViewModel;
                    FragmentActivity it12 = it1;
                    final FragmentActivity fragmentActivity = activity;
                    Intrinsics.checkNotNullExpressionValue(it12, "it1");
                    voiceRoomMemberViewModel.joinRoom(roomId, GCValueCallbackKt.callbackOnLifecycle(it12, new Function1<Boolean, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
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
                                ToastUtils.showToast(FragmentActivity.this, R$string.voice_room_setting_added_toast, 1);
                            }
                        }
                    }, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment$Companion$showJoinTips$1$2$1$2
                        /* JADX INFO: Access modifiers changed from: package-private */
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
                                case BaseConstants.ERR_SVR_CONV_INVALID_PARAMETERS /* 50002 */:
                                    ToastUtils.showToast(FragmentActivity.this, R$string.voice_room_setting_full_toast, 1);
                                    return;
                                case BaseConstants.ERR_SVR_CONV_ADMIN_REQUIRED /* 50003 */:
                                    LiveRandomGo.INSTANCE.showRechargeDialog();
                                    return;
                                default:
                                    return;
                            }
                        }
                    }));
                }
            });
            Intrinsics.checkNotNullExpressionValue(it1, "it1");
            onClick.build(it1).show();
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;", "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment;)V", "convert", "", "holder", BaseConfig.ITEM, "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class PeopleAdapter extends BaseQuickAdapter<VoiceRoomMemberListItemModel, PeopleViewHolder> {
        public PeopleAdapter() {
            super(R$layout.item_big_info_member, null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull PeopleViewHolder holder, @NotNull VoiceRoomMemberListItemModel item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            ImageView imageView = holder.getBinding().headerIV;
            VoiceRoomMemberModel model = item.getModel();
            hc.a.p(imageView, model != null ? model.getAvatarUrl() : null, com.guochao.lib_core.R$mipmap.icon_head_default);
            TextView textView = holder.getBinding().nameTV;
            VoiceRoomMemberModel model2 = item.getModel();
            textView.setText(model2 != null ? model2.getNickName() : null);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomBigInfoCardFragment$PeopleViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Lcom/guochao/component/liveroom/databinding/ItemBigInfoMemberBinding;", "getBinding", "()Lcom/guochao/component/liveroom/databinding/ItemBigInfoMemberBinding;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PeopleViewHolder extends BaseViewHolder {
        @NotNull
        private final ItemBigInfoMemberBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PeopleViewHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            ItemBigInfoMemberBinding bind = ItemBigInfoMemberBinding.bind(view);
            Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
            this.binding = bind;
        }

        @NotNull
        public final ItemBigInfoMemberBinding getBinding() {
            return this.binding;
        }
    }

    public VoiceRoomBigInfoCardFragment() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomBigInfoCardFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<VoiceRoomMemberViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment$memberViewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomMemberViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomBigInfoCardFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomMemberViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomMemberViewModel.class));
            }
        });
        this.memberViewModel$delegate = lazy2;
        this.mAdapter = new PeopleAdapter();
        this.roleType = 30;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomMemberViewModel getMemberViewModel() {
        return (VoiceRoomMemberViewModel) this.memberViewModel$delegate.getValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomSeatControllerViewModel getViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-0  reason: not valid java name */
    public static final void m265initListener$lambda0(VoiceRoomBigInfoCardFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showMemberList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-1  reason: not valid java name */
    public static final void m266initListener$lambda1(VoiceRoomBigInfoCardFragment this$0, BaseQuickAdapter adapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        this$0.showMemberList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-2  reason: not valid java name */
    public static final void m267initListener$lambda2(VoiceRoomBigInfoCardFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i9 = this$0.roleType;
        if (i9 == 1) {
            VoiceRoomSettingFragment newInstance = VoiceRoomSettingFragment.Companion.newInstance();
            FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            newInstance.show(parentFragmentManager, "setting");
        } else if (i9 == 10 || i9 == 20) {
            this$0.showQuitTips();
        } else if (i9 != 30) {
        } else {
            Companion.showJoinTips(this$0, this$0.getViewModel(), this$0.getMemberViewModel());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-6  reason: not valid java name */
    public static final void m268initListener$lambda6(VoiceRoomBigInfoCardFragment this$0, View view) {
        String roomId;
        FragmentActivity it2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object navigation = o.a.c().a(RouterPath.ROUTER_GC_GC_REPORT).navigation();
        ReportProxy reportProxy = navigation instanceof ReportProxy ? (ReportProxy) navigation : null;
        VoiceRoomInfoModel value = this$0.getViewModel().getRoomInfo().getValue();
        if (value == null || (roomId = value.getRoomId()) == null || (it2 = this$0.getActivity()) == null || reportProxy == null) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(it2, "it2");
        reportProxy.start(it2, roomId, roomId, ReportController.REPORT_TYPE_VOICE_ROOM, false, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadDataAndObserve$lambda-11  reason: not valid java name */
    public static final void m269loadDataAndObserve$lambda11(VoiceRoomBigInfoCardFragment this$0, VoiceRoomInfoModel voiceRoomInfoModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (voiceRoomInfoModel != null) {
            hc.a.s(this$0.getViewBinding().headerIV, voiceRoomInfoModel.getCoverImgUrl(), 15);
            this$0.getViewBinding().titleTV.setText(voiceRoomInfoModel.getTitle());
            TextView textView = this$0.getViewBinding().roomIdTV;
            textView.setText("ID:" + voiceRoomInfoModel.getRoomId());
            this$0.roleType = voiceRoomInfoModel.getRoleType();
            Context context = this$0.getContext();
            if (context != null) {
                this$0.getViewBinding().joinTV.setTextColor(ContextCompat.getColor(context, com.guochao.lib_base.R$color.white));
            }
            this$0.getViewBinding().joinLL.setSelected(true);
            int roleType = voiceRoomInfoModel.getRoleType();
            if (roleType == 1) {
                this$0.getViewBinding().iconIV.setImageResource(R$mipmap.ic_voice_room_big_info_card_setting);
                this$0.getViewBinding().joinTV.setText(this$0.getString(R$string.voice_room_setting));
                this$0.getViewBinding().moneyLL.setVisibility(8);
                this$0.getViewBinding().reportIV.setVisibility(8);
            } else if (roleType == 10 || roleType == 20) {
                this$0.getViewBinding().iconIV.setImageResource(R$mipmap.ic_voice_room_big_info_card_added);
                this$0.getViewBinding().joinTV.setText(this$0.getString(R$string.voice_room_setting_added));
                Context context2 = this$0.getContext();
                if (context2 != null) {
                    this$0.getViewBinding().joinTV.setTextColor(ContextCompat.getColor(context2, R$color.gray_65657A));
                }
                this$0.getViewBinding().moneyLL.setVisibility(8);
                this$0.getViewBinding().joinLL.setSelected(false);
            } else if (roleType != 30) {
            } else {
                this$0.getViewBinding().iconIV.setImageResource(R$mipmap.ic_voice_room_big_info_card_add);
                this$0.getViewBinding().joinTV.setText(this$0.getString(R$string.voice_room_setting_add));
                if (voiceRoomInfoModel.getMemberPrice() == 0) {
                    this$0.getViewBinding().moneyLL.setVisibility(8);
                    return;
                }
                this$0.getViewBinding().moneyLL.setVisibility(0);
                this$0.getViewBinding().moneyTV.setText(String.valueOf(voiceRoomInfoModel.getMemberPrice()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadDataAndObserve$lambda-13  reason: not valid java name */
    public static final void m270loadDataAndObserve$lambda13(VoiceRoomBigInfoCardFragment this$0, List list) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PeopleAdapter peopleAdapter = this$0.mAdapter;
        if (list != null) {
            arrayList = new ArrayList();
            for (Object obj : list) {
                if (((VoiceRoomMemberListItemModel) obj).getItemType() == -1) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        peopleAdapter.setNewInstance(TypeIntrinsics.asMutableList(arrayList));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadDataAndObserve$lambda-14  reason: not valid java name */
    public static final void m271loadDataAndObserve$lambda14(VoiceRoomBigInfoCardFragment this$0, Integer num) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = this$0.getViewBinding().countTV;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String string = this$0.getString(R$string.voice_room_members_num);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.voice_room_members_num)");
        String format = String.format(string, Arrays.copyOf(new Object[]{num}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        textView.setText(format);
    }

    private final void loadMember() {
        String roomId;
        VoiceRoomInfoModel value = getViewModel().getRoomInfo().getValue();
        if (value == null || (roomId = value.getRoomId()) == null) {
            return;
        }
        getMemberViewModel().loadMemberList(roomId, 1, Integer.MAX_VALUE);
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomBigInfoCardFragment newInstance() {
        return Companion.newInstance();
    }

    @JvmStatic
    public static final void showJoinTips(@NotNull Fragment fragment, @NotNull VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, @NotNull VoiceRoomMemberViewModel voiceRoomMemberViewModel) {
        Companion.showJoinTips(fragment, voiceRoomSeatControllerViewModel, voiceRoomMemberViewModel);
    }

    private final void showMemberList() {
        String roomId;
        VoiceRoomInfoModel value;
        VoiceRoomInfoModel value2 = getViewModel().getRoomInfo().getValue();
        if (value2 == null || (roomId = value2.getRoomId()) == null || (value = getViewModel().getRoomInfo().getValue()) == null) {
            return;
        }
        VoiceRoomMemberListFragment newInstance = VoiceRoomMemberListFragment.Companion.newInstance(roomId, value.getRoleType());
        FragmentManager parentFragmentManager = getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
        newInstance.show(parentFragmentManager, "memberList");
    }

    private final void showQuitTips() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getString(R$string.member_content1_cancel));
        FragmentActivity activity = getActivity();
        if (activity != null) {
            GCDialog.Builder builder = new GCDialog.Builder();
            String string = getString(R$string.voice_room_remove_room_title1);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.voice_room_remove_room_title1)");
            builder.title(string).contentText(spannableStringBuilder).onClick(new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment$showQuitTips$1$1
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
            }, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment$showQuitTips$1$2
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
                    VoiceRoomSeatControllerViewModel viewModel;
                    String roomId;
                    VoiceRoomMemberViewModel memberViewModel;
                    String userId;
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    onClick.dismiss();
                    viewModel = VoiceRoomBigInfoCardFragment.this.getViewModel();
                    VoiceRoomInfoModel value = viewModel.getRoomInfo().getValue();
                    if (value == null || (roomId = value.getRoomId()) == null) {
                        return;
                    }
                    final VoiceRoomBigInfoCardFragment voiceRoomBigInfoCardFragment = VoiceRoomBigInfoCardFragment.this;
                    ArrayList<String> arrayList = new ArrayList<>();
                    UserSessionModel current = UserSessionViewModel.Companion.instance().current();
                    if (current != null && (userId = current.getUserId()) != null) {
                        arrayList.add(userId);
                    }
                    memberViewModel = voiceRoomBigInfoCardFragment.getMemberViewModel();
                    memberViewModel.memberRemove(roomId, arrayList, GCValueCallbackKt.callbackOnLifecycle$default(voiceRoomBigInfoCardFragment, new Function1<Boolean, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomBigInfoCardFragment$showQuitTips$1$2$1$2
                        /* JADX INFO: Access modifiers changed from: package-private */
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
                                ToastUtils.showToast(VoiceRoomBigInfoCardFragment.this.getActivity(), R$string.voice_room_setting_removed_toast, 1);
                            }
                        }
                    }, null, 2, null));
                }
            }).build(activity).show();
        }
    }

    @NotNull
    public final FragmentVoliceBigInfoCardBinding getViewBinding() {
        FragmentVoliceBigInfoCardBinding fragmentVoliceBigInfoCardBinding = this.viewBinding;
        if (fragmentVoliceBigInfoCardBinding != null) {
            return fragmentVoliceBigInfoCardBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment
    public void initListener() {
        super.initListener();
        getMemberViewModel().setVoiceRoomSeatControllerViewModel(getViewModel());
        getViewBinding().recentRV.setAdapter(this.mAdapter);
        RelativeLayout relativeLayout = getViewBinding().memberRL;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "viewBinding.memberRL");
        ViewExtendsKt.onClick$default(relativeLayout, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomBigInfoCardFragment.m265initListener$lambda0(VoiceRoomBigInfoCardFragment.this, view);
            }
        }, 1, null);
        this.mAdapter.setOnItemClickListener(new x0.f() { // from class: com.guochao.component.voiceliveroom.fragment.i
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                VoiceRoomBigInfoCardFragment.m266initListener$lambda1(VoiceRoomBigInfoCardFragment.this, baseQuickAdapter, view, i9);
            }
        });
        LinearLayout linearLayout = getViewBinding().joinLL;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "viewBinding.joinLL");
        ViewExtendsKt.onClick$default(linearLayout, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomBigInfoCardFragment.m267initListener$lambda2(VoiceRoomBigInfoCardFragment.this, view);
            }
        }, 1, null);
        ImageView imageView = getViewBinding().reportIV;
        Intrinsics.checkNotNullExpressionValue(imageView, "viewBinding.reportIV");
        ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomBigInfoCardFragment.m268initListener$lambda6(VoiceRoomBigInfoCardFragment.this, view);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment
    public void loadDataAndObserve() {
        super.loadDataAndObserve();
        getViewModel().getRoomInfo().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomBigInfoCardFragment.m269loadDataAndObserve$lambda11(VoiceRoomBigInfoCardFragment.this, (VoiceRoomInfoModel) obj);
            }
        });
        loadMember();
        getMemberViewModel().getMemberList().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomBigInfoCardFragment.m270loadDataAndObserve$lambda13(VoiceRoomBigInfoCardFragment.this, (List) obj);
            }
        });
        getMemberViewModel().getMemberNum().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomBigInfoCardFragment.m271loadDataAndObserve$lambda14(VoiceRoomBigInfoCardFragment.this, (Integer) obj);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z10) {
        super.onHiddenChanged(z10);
        if (z10) {
            return;
        }
        loadMember();
    }

    public final void setViewBinding(@NotNull FragmentVoliceBigInfoCardBinding fragmentVoliceBigInfoCardBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoliceBigInfoCardBinding, "<set-?>");
        this.viewBinding = fragmentVoliceBigInfoCardBinding;
    }
}
