package com.guochao.component.voiceliveroom.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.component.liveroom.R$drawable;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.FragmentVoliceRoomMoreBinding;
import com.guochao.component.voiceliveroom.event.VoiceRoomChangeModeEvent;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomMoreFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomMoreModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.lib_service_center.liveroom.service.LiveBannedListProxy;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0018\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0012\u0010\u001d\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f¨\u0006 "}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;", "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;", "()V", "isAdmin", "", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "obtainMenus", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;", "voiceRoomInfoModel", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "onCreate", "Companion", "SettingMenuAdapter", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMoreFragment extends FullWidthBaseFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private boolean isAdmin;
    public FragmentVoliceRoomMoreBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;", "isAdmin", "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomMoreFragment newInstance(boolean z10) {
            VoiceRoomMoreFragment voiceRoomMoreFragment = new VoiceRoomMoreFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean("isAdmin", z10);
            voiceRoomMoreFragment.setArguments(bundle);
            return voiceRoomMoreFragment;
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B,\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\t¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\fH\u0016R\u001f\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\b\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;", "click", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "getItemCount", "", "onBindViewHolder", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class SettingMenuAdapter extends RecyclerView.Adapter<BaseViewHolder> {
        @NotNull
        private final Function1<VoiceRoomMoreModel, Unit> click;
        @NotNull
        private final List<VoiceRoomMoreModel> list;

        /* JADX WARN: Multi-variable type inference failed */
        public SettingMenuAdapter(@NotNull List<VoiceRoomMoreModel> list, @NotNull Function1<? super VoiceRoomMoreModel, Unit> click) {
            Intrinsics.checkNotNullParameter(list, "list");
            Intrinsics.checkNotNullParameter(click, "click");
            this.list = list;
            this.click = click;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onCreateViewHolder$lambda-1$lambda-0  reason: not valid java name */
        public static final void m295onCreateViewHolder$lambda1$lambda0(SettingMenuAdapter this$0, BaseViewHolder this_apply, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            this$0.click.invoke(this$0.list.get(this_apply.getAbsoluteAdapterPosition()));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            VoiceRoomMoreModel voiceRoomMoreModel = this.list.get(i9);
            holder.setText(R$id.nameTV, voiceRoomMoreModel.getStrId());
            holder.setImageResource(R$id.icon, voiceRoomMoreModel.getIconId());
            TextView textView = (TextView) holder.getView(R$id.extra);
            String extraText = voiceRoomMoreModel.getExtraText();
            if (extraText == null || extraText.length() == 0) {
                textView.setVisibility(4);
            } else {
                textView.setVisibility(0);
                textView.setText(voiceRoomMoreModel.getExtraText());
            }
            holder.itemView.setSelected(voiceRoomMoreModel.getSelectState());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            View inflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.item_more, parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context).inf…item_more, parent, false)");
            final BaseViewHolder baseViewHolder = new BaseViewHolder(inflate);
            View itemView = baseViewHolder.itemView;
            Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
            ViewExtendsKt.onClick$default(itemView, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoiceRoomMoreFragment.SettingMenuAdapter.m295onCreateViewHolder$lambda1$lambda0(VoiceRoomMoreFragment.SettingMenuAdapter.this, baseViewHolder, view);
                }
            }, 1, null);
            return baseViewHolder;
        }
    }

    public VoiceRoomMoreFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMoreFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomMoreFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomSeatControllerViewModel getViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m294initView$lambda0(final VoiceRoomMoreFragment this$0, final VoiceRoomInfoModel voiceRoomInfoModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewBinding().recentRV.setAdapter(new SettingMenuAdapter(this$0.obtainMenus(voiceRoomInfoModel), new Function1<VoiceRoomMoreModel, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMoreFragment$initView$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(VoiceRoomMoreModel voiceRoomMoreModel) {
                invoke2(voiceRoomMoreModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull final VoiceRoomMoreModel $receiver) {
                FragmentManager parentFragmentManager;
                VoiceRoomSeatControllerViewModel viewModel;
                VoiceRoomSeatControllerViewModel viewModel2;
                VoiceRoomSeatControllerViewModel viewModel3;
                VoiceRoomSeatControllerViewModel viewModel4;
                VoiceRoomSeatControllerViewModel viewModel5;
                VoiceRoomSeatControllerViewModel viewModel6;
                VoiceRoomSeatControllerViewModel viewModel7;
                String roomId;
                FragmentActivity it2;
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                int iconId = $receiver.getIconId();
                if (iconId == R$drawable.ic_voice_room_audio_effect) {
                    Object navigation = o.a.c().a(RouterPath.ROUTER_LIVE_ROOM_SOUND).navigation();
                    DialogFragment dialogFragment = navigation instanceof DialogFragment ? (DialogFragment) navigation : null;
                    if (dialogFragment != null) {
                        dialogFragment.show(VoiceRoomMoreFragment.this.getParentFragmentManager(), "live_sound");
                    }
                } else if (iconId == R$drawable.ic_voice_room_manager) {
                    Object navigation2 = o.a.c().a(RouterPath.ROUTER_LIVE_BANNED_LIST).navigation();
                    Intrinsics.checkNotNull(navigation2, "null cannot be cast to non-null type com.guochao.lib_service_center.liveroom.service.LiveBannedListProxy");
                    LiveBannedListProxy liveBannedListProxy = (LiveBannedListProxy) navigation2;
                    viewModel7 = VoiceRoomMoreFragment.this.getViewModel();
                    VoiceRoomInfoModel value = viewModel7.getRoomInfo().getValue();
                    if (value != null && (roomId = value.getRoomId()) != null && (it2 = VoiceRoomMoreFragment.this.getActivity()) != null) {
                        Intrinsics.checkNotNullExpressionValue(it2, "it2");
                        liveBannedListProxy.start(it2, roomId, null);
                    }
                    VoiceRoomMoreFragment.this.dismissAllowingStateLoss();
                } else {
                    int i9 = 2;
                    boolean z10 = false;
                    if (iconId == R$drawable.ic_voice_room_mic_mode) {
                        viewModel4 = VoiceRoomMoreFragment.this.getViewModel();
                        VoiceRoomInfoModel value2 = viewModel4.getRoomInfo().getValue();
                        if (value2 != null && value2.getRoleType() == 1) {
                            z10 = true;
                        }
                        if (z10) {
                            viewModel5 = VoiceRoomMoreFragment.this.getViewModel();
                            VoiceRoomInfoModel value3 = viewModel5.getRoomInfo().getValue();
                            Integer valueOf = value3 != null ? Integer.valueOf(value3.getMicroType()) : null;
                            viewModel6 = VoiceRoomMoreFragment.this.getViewModel();
                            i9 = (valueOf == null || valueOf.intValue() != 1) ? 1 : 1;
                            final VoiceRoomMoreFragment voiceRoomMoreFragment = VoiceRoomMoreFragment.this;
                            viewModel6.changeMicMode(i9, GCValueCallbackKt.callbackOnLifecycle(voiceRoomMoreFragment, new Function1<Integer, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMoreFragment$initView$1$1.3
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                                    invoke(num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(int i10) {
                                    VoiceRoomMoreModel voiceRoomMoreModel = VoiceRoomMoreModel.this;
                                    voiceRoomMoreModel.setSelectState(!voiceRoomMoreModel.getSelectState());
                                    RecyclerView.Adapter adapter = voiceRoomMoreFragment.getViewBinding().recentRV.getAdapter();
                                    if (adapter != null) {
                                        adapter.notifyDataSetChanged();
                                    }
                                }
                            }, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMoreFragment$initView$1$1.4
                                @Override // kotlin.jvm.functions.Function2
                                /* renamed from: invoke */
                                public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                                    invoke(num.intValue(), str);
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(int i10, @Nullable String str) {
                                }
                            }));
                        }
                    } else if (iconId == R$drawable.ic_voice_room_more_select_private_mode) {
                        viewModel = VoiceRoomMoreFragment.this.getViewModel();
                        VoiceRoomInfoModel value4 = viewModel.getRoomInfo().getValue();
                        if (value4 != null && value4.getRoleType() == 1) {
                            z10 = true;
                        }
                        if (z10) {
                            viewModel2 = VoiceRoomMoreFragment.this.getViewModel();
                            VoiceRoomInfoModel value5 = viewModel2.getRoomInfo().getValue();
                            Integer valueOf2 = value5 != null ? Integer.valueOf(value5.getNature()) : null;
                            final Ref.IntRef intRef = new Ref.IntRef();
                            if (valueOf2 != null && valueOf2.intValue() == 2) {
                                i9 = 1;
                            }
                            intRef.element = i9;
                            viewModel3 = VoiceRoomMoreFragment.this.getViewModel();
                            int i10 = intRef.element;
                            final VoiceRoomMoreFragment voiceRoomMoreFragment2 = VoiceRoomMoreFragment.this;
                            viewModel3.changeRoomPrivateMode(i10, GCValueCallbackKt.callbackOnLifecycle(voiceRoomMoreFragment2, new Function1<Integer, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMoreFragment$initView$1$1.5
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                                    invoke(num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(int i11) {
                                    VoiceRoomSeatControllerViewModel viewModel8;
                                    String roomId2;
                                    EventBus eventBus = EventBus.getDefault();
                                    viewModel8 = VoiceRoomMoreFragment.this.getViewModel();
                                    VoiceRoomInfoModel value6 = viewModel8.getRoomInfo().getValue();
                                    eventBus.post((value6 == null || (roomId2 = value6.getRoomId()) == null) ? null : new VoiceRoomChangeModeEvent(roomId2, intRef.element));
                                }
                            }, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMoreFragment$initView$1$1.6
                                @Override // kotlin.jvm.functions.Function2
                                /* renamed from: invoke */
                                public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                                    invoke(num.intValue(), str);
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(int i11, @Nullable String str) {
                                }
                            }));
                        }
                    } else if (iconId == R$drawable.ic_voice_room_settings) {
                        VoiceRoomSettingFragment newInstance = VoiceRoomSettingFragment.Companion.newInstance();
                        FragmentManager parentFragmentManager2 = VoiceRoomMoreFragment.this.getParentFragmentManager();
                        Intrinsics.checkNotNullExpressionValue(parentFragmentManager2, "parentFragmentManager");
                        newInstance.show(parentFragmentManager2, "setting");
                        VoiceRoomMoreFragment.this.dismissAllowingStateLoss();
                    } else if (iconId != R$drawable.ic_voice_room_enter_fee || (parentFragmentManager = VoiceRoomMoreFragment.this.getParentFragmentManager()) == null) {
                    } else {
                        VoiceRoomInfoModel voiceRoomInfoModel2 = voiceRoomInfoModel;
                        VoiceRoomMemberFeeFragment.Companion.newInstance(voiceRoomInfoModel2 != null ? Integer.valueOf(voiceRoomInfoModel2.getMemberPrice()) : null).show(parentFragmentManager, "memberFee");
                    }
                }
            }
        }));
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomMoreFragment newInstance(boolean z10) {
        return Companion.newInstance(z10);
    }

    private final List<VoiceRoomMoreModel> obtainMenus(VoiceRoomInfoModel voiceRoomInfoModel) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VoiceRoomMoreModel(R$drawable.ic_voice_room_audio_effect, R$string.live_sound_effect, null, false, 12, null));
        arrayList.add(new VoiceRoomMoreModel(R$drawable.ic_voice_room_manager, R$string.management, null, false, 12, null));
        if (!this.isAdmin) {
            boolean z10 = true;
            arrayList.add(new VoiceRoomMoreModel(R$drawable.ic_voice_room_mic_mode, R$string.voice_room_mic_mode, getString(voiceRoomInfoModel != null && voiceRoomInfoModel.getMicroType() == 2 ? R$string.voice_room_members : R$string.voice_room_all), false, 8, null));
            arrayList.add(new VoiceRoomMoreModel(R$drawable.ic_voice_room_enter_fee, R$string.member_fee_title, String.valueOf(voiceRoomInfoModel != null ? Integer.valueOf(voiceRoomInfoModel.getMemberPrice()) : null), false, 8, null));
            arrayList.add(new VoiceRoomMoreModel(R$drawable.ic_voice_room_more_select_private_mode, voiceRoomInfoModel != null && voiceRoomInfoModel.getNature() == 1 ? R$string.voice_room_mic_private : R$string.voice_room_mic_public, null, (voiceRoomInfoModel == null || voiceRoomInfoModel.getNature() != 1) ? false : false));
            arrayList.add(new VoiceRoomMoreModel(R$drawable.ic_voice_room_settings, R$string.setting_text, null, false, 12, null));
        }
        return arrayList;
    }

    @NotNull
    public final FragmentVoliceRoomMoreBinding getViewBinding() {
        FragmentVoliceRoomMoreBinding fragmentVoliceRoomMoreBinding = this.viewBinding;
        if (fragmentVoliceRoomMoreBinding != null) {
            return fragmentVoliceRoomMoreBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getViewModel().getRoomInfo().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.f0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomMoreFragment.m294initView$lambda0(VoiceRoomMoreFragment.this, (VoiceRoomInfoModel) obj);
            }
        });
    }

    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        boolean z10 = true;
        this.isAdmin = (arguments == null || !arguments.getBoolean("isAdmin")) ? false : false;
    }

    public final void setViewBinding(@NotNull FragmentVoliceRoomMoreBinding fragmentVoliceRoomMoreBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoliceRoomMoreBinding, "<set-?>");
        this.viewBinding = fragmentVoliceRoomMoreBinding;
    }
}
