package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.OnClick;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.VoiceRoomGiftFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2;
import com.guochao.faceshow.databinding.ListItemLiveGiftUserInfoBinding;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u0000 (2\u00020\u0001:\u0005()*+,B\u0007¢\u0006\u0004\b&\u0010'J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u001a\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\r\u001a\u00020\u0002H\u0017J\b\u0010\u000e\u001a\u00020\u0002H\u0014J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0014J\b\u0010\u0012\u001a\u00020\u0002H\u0016R\u001a\u0010\u0014\u001a\u00060\u0013R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001d\u0010 \u001a\u0004\u0018\u00010\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0018\u001a\u0004\b#\u0010$¨\u0006-"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;", "", "setSendBtnEnable", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Event;", "event", "onGift", "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "onViewCreated", "onViewClicked", "notifySelectAllChanged", "", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;", "buildSendUsers", "initRecycleView", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;", "mAdapter", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "toUser$delegate", "getToUser", "()Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "toUser", "", "roomId$delegate", "getRoomId", "()Ljava/lang/String;", "roomId", "<init>", "()V", "Companion", "Event", "UserHolder", "UserModel", "UserOnSeatAdapter", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class VoiceRoomGiftFragment extends GiftFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private UserOnSeatAdapter mAdapter;
    @NotNull
    private final Lazy roomId$delegate;
    @NotNull
    private final Lazy toUser$delegate;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0007¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;", "roomId", "", "toUser", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "type", "", "voiceId", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ VoiceRoomGiftFragment newInstance$default(Companion companion, String str, GCUser gCUser, int i9, int i10, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                i9 = 4;
            }
            if ((i11 & 8) != 0) {
                i10 = -1;
            }
            return companion.newInstance(str, gCUser, i9, i10);
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomGiftFragment newInstance(@NotNull String roomId, @Nullable GCUser gCUser, int i9, int i10) {
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", gCUser);
            bundle.putString("roomId", roomId);
            bundle.putInt("type", i9);
            bundle.putInt("voiceId", i10);
            VoiceRoomGiftFragment voiceRoomGiftFragment = new VoiceRoomGiftFragment();
            voiceRoomGiftFragment.setArguments(bundle);
            return voiceRoomGiftFragment;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$Event;", "", "fragment", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;", "(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;)V", "getFragment", "()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Event {
        @NotNull
        private final VoiceRoomGiftFragment fragment;

        public Event(@NotNull VoiceRoomGiftFragment fragment) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            this.fragment = fragment;
        }

        @NotNull
        public final VoiceRoomGiftFragment getFragment() {
            return this.fragment;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "viewBinding", "Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;", "(Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;)V", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ListItemLiveGiftUserInfoBinding;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class UserHolder extends BaseViewHolder {
        @NotNull
        private final ListItemLiveGiftUserInfoBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UserHolder(@NotNull ListItemLiveGiftUserInfoBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ListItemLiveGiftUserInfoBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;", "", "index", "", BaseConfig.ITEM, "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "(ILcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V", "getIndex", "()I", "getItem", "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class UserModel {
        private final int index;
        @NotNull
        private final VoiceRoomUserOnSeatModel item;

        public UserModel(int i9, @NotNull VoiceRoomUserOnSeatModel item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.index = i9;
            this.item = item;
        }

        public static /* synthetic */ UserModel copy$default(UserModel userModel, int i9, VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = userModel.index;
            }
            if ((i10 & 2) != 0) {
                voiceRoomUserOnSeatModel = userModel.item;
            }
            return userModel.copy(i9, voiceRoomUserOnSeatModel);
        }

        public final int component1() {
            return this.index;
        }

        @NotNull
        public final VoiceRoomUserOnSeatModel component2() {
            return this.item;
        }

        @NotNull
        public final UserModel copy(int i9, @NotNull VoiceRoomUserOnSeatModel item) {
            Intrinsics.checkNotNullParameter(item, "item");
            return new UserModel(i9, item);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof UserModel) {
                UserModel userModel = (UserModel) obj;
                return this.index == userModel.index && Intrinsics.areEqual(this.item, userModel.item);
            }
            return false;
        }

        public final int getIndex() {
            return this.index;
        }

        @NotNull
        public final VoiceRoomUserOnSeatModel getItem() {
            return this.item;
        }

        public int hashCode() {
            return (this.index * 31) + this.item.hashCode();
        }

        @NotNull
        public String toString() {
            return "UserModel(index=" + this.index + ", item=" + this.item + ')';
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\b\u0010\u0012\u001a\u00020\bH\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\bH\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\bH\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00058F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserOnSeatAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserHolder;", "list", "", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;", "(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;Ljava/util/List;)V", "currentSelected", "", "getCurrentSelected", "()I", "setCurrentSelected", "(I)V", "currentSelectedUser", "getCurrentSelectedUser", "()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment$UserModel;", "getList", "()Ljava/util/List;", "getItemCount", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class UserOnSeatAdapter extends RecyclerView.Adapter<UserHolder> {
        private int currentSelected;
        @NotNull
        private final List<UserModel> list;
        final /* synthetic */ VoiceRoomGiftFragment this$0;

        public UserOnSeatAdapter(@NotNull VoiceRoomGiftFragment voiceRoomGiftFragment, List<UserModel> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.this$0 = voiceRoomGiftFragment;
            this.list = list;
            this.currentSelected = -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onCreateViewHolder$lambda-1$lambda-0  reason: not valid java name */
        public static final void m412onCreateViewHolder$lambda1$lambda0(UserOnSeatAdapter this$0, UserHolder this_apply, VoiceRoomGiftFragment this$1, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            int absoluteAdapterPosition = this_apply.getAbsoluteAdapterPosition();
            this$0.currentSelected = absoluteAdapterPosition;
            this$1.userId = this$0.list.get(absoluteAdapterPosition).getItem().getUserId();
            this$0.notifyDataSetChanged();
            this$1.setSendBtnEnable();
        }

        public final int getCurrentSelected() {
            return this.currentSelected;
        }

        @Nullable
        public final UserModel getCurrentSelectedUser() {
            int i9 = this.currentSelected;
            if (i9 >= 0) {
                return this.list.get(i9);
            }
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.list.size();
        }

        @NotNull
        public final List<UserModel> getList() {
            return this.list;
        }

        public final void setCurrentSelected(int i9) {
            this.currentSelected = i9;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull UserHolder holder, int i9) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            boolean z10 = this.this$0.mSelectAll || holder.getAbsoluteAdapterPosition() == this.currentSelected || this.this$0.getToUser() != null;
            UserModel userModel = this.list.get(i9);
            ListItemLiveGiftUserInfoBinding viewBinding = holder.getViewBinding();
            VoiceRoomGiftFragment voiceRoomGiftFragment = this.this$0;
            hc.a.i(viewBinding.userHead, userModel.getItem().getSmallAvatarUrl(), R.mipmap.default_head, new com.bumptech.glide.load.resource.bitmap.l());
            viewBinding.tvNumber.setText(String.valueOf(userModel.getItem().getSeatIndex()));
            if (z10) {
                if (voiceRoomGiftFragment.getToUser() != null) {
                    viewBinding.tvNumber.setVisibility(8);
                }
                viewBinding.ivBg.setVisibility(8);
                viewBinding.ivNumberBg.setVisibility(8);
                viewBinding.tvNumber.setTextColor(-1);
                viewBinding.tvNumber.setBackgroundResource(R.drawable.zz_shape_radius_blue);
                viewBinding.ivHollowCircle.setImageResource(R.drawable.bg_hollow_circle);
                viewBinding.ivNumberLayout.setVisibility(8);
                return;
            }
            viewBinding.ivBg.setVisibility(0);
            viewBinding.ivNumberBg.setVisibility(0);
            viewBinding.tvNumber.setBackgroundResource(R.drawable.zz_shape_rect_radius_gray);
            viewBinding.ivHollowCircle.setImageResource(R.drawable.bg_hollow_circle_no);
            viewBinding.tvNumber.setTextColor(ContextCompat.getColor(viewBinding.getRoot().getContext(), R.color.color_ugc_text_level_1));
            viewBinding.ivNumberLayout.setVisibility(8);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public UserHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            ListItemLiveGiftUserInfoBinding inflate = ListItemLiveGiftUserInfoBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(\n               …lse\n                    )");
            final UserHolder userHolder = new UserHolder(inflate);
            final VoiceRoomGiftFragment voiceRoomGiftFragment = this.this$0;
            if (voiceRoomGiftFragment.getToUser() == null) {
                userHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.y
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VoiceRoomGiftFragment.UserOnSeatAdapter.m412onCreateViewHolder$lambda1$lambda0(VoiceRoomGiftFragment.UserOnSeatAdapter.this, userHolder, voiceRoomGiftFragment, view);
                    }
                });
            }
            return userHolder;
        }
    }

    public VoiceRoomGiftFragment() {
        List emptyList;
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.mAdapter = new UserOnSeatAdapter(this, emptyList);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.VoiceRoomGiftFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomGiftFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<GCUser>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.VoiceRoomGiftFragment$toUser$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final GCUser invoke() {
                return (GCUser) VoiceRoomGiftFragment.this.requireArguments().getParcelable("data");
            }
        });
        this.toUser$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<String>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.VoiceRoomGiftFragment$roomId$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return VoiceRoomGiftFragment.this.requireArguments().getString("roomId", "");
            }
        });
        this.roomId$delegate = lazy3;
    }

    private final String getRoomId() {
        Object value = this.roomId$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-roomId>(...)");
        return (String) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GCUser getToUser() {
        return (GCUser) this.toUser$delegate.getValue();
    }

    private final VoiceRoomSeatControllerViewModel getViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.viewModel$delegate.getValue();
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomGiftFragment newInstance(@NotNull String str, @Nullable GCUser gCUser, int i9, int i10) {
        return Companion.newInstance(str, gCUser, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onViewCreated$lambda-4  reason: not valid java name */
    public static final void m411onViewCreated$lambda4(VoiceRoomGiftFragment this$0, VoiceRoomInfoModel voiceRoomInfoModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (voiceRoomInfoModel == null) {
            this$0.llMultiPlayer.setVisibility(8);
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<VoiceRoomUserOnSeatModel> userListOnSeat = voiceRoomInfoModel.getUserListOnSeat();
        List sortedWith = userListOnSeat != null ? CollectionsKt___CollectionsKt.sortedWith(userListOnSeat, new Comparator() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.VoiceRoomGiftFragment$onViewCreated$lambda-4$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((VoiceRoomUserOnSeatModel) t10).getSeatIndex()), Integer.valueOf(((VoiceRoomUserOnSeatModel) t11).getSeatIndex()));
                return compareValues;
            }
        }) : null;
        if (sortedWith != null) {
            int i9 = 0;
            for (Object obj : sortedWith) {
                int i10 = i9 + 1;
                if (i9 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel = (VoiceRoomUserOnSeatModel) obj;
                if (!Intrinsics.areEqual(voiceRoomUserOnSeatModel.getUserId(), b8.e.g().getUserId())) {
                    arrayList.add(new UserModel(i10, voiceRoomUserOnSeatModel));
                }
                i9 = i10;
            }
        }
        CollectionsKt__MutableCollectionsKt.removeAll((List) arrayList, (Function1) new Function1<UserModel, Boolean>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.VoiceRoomGiftFragment$onViewCreated$1$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull VoiceRoomGiftFragment.UserModel it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it.getItem().getUserId(), b8.e.g().getUserId()));
            }
        });
        if (arrayList.isEmpty()) {
            this$0.llMultiPlayer.setVisibility(8);
        } else {
            if (arrayList.size() >= 2) {
                this$0.initSelectAll();
                this$0.mSelectAllView.setVisibility(0);
            } else {
                this$0.mSelectAllView.setVisibility(8);
            }
            this$0.llMultiPlayer.setVisibility(0);
            UserModel currentSelectedUser = this$0.mAdapter.getCurrentSelectedUser();
            this$0.mAdapter = new UserOnSeatAdapter(this$0, arrayList);
            if (currentSelectedUser != null) {
                int i11 = 0;
                for (Object obj2 : arrayList) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    if (Intrinsics.areEqual(currentSelectedUser.getItem().getUserId(), ((UserModel) obj2).getItem().getUserId())) {
                        this$0.mAdapter.setCurrentSelected(i11);
                    }
                    i11 = i12;
                }
            }
            if (this$0.mAdapter.getItemCount() == 1 && this$0.mAdapter.getCurrentSelected() == -1) {
                this$0.mAdapter.setCurrentSelected(0);
            }
            this$0.recyclerView.setAdapter(this$0.mAdapter);
        }
        this$0.setSendBtnEnable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setSendBtnEnable() {
        if (!this.mSelectAll && this.mAdapter.getCurrentSelected() <= -1) {
            this.mNumCheckSendView.n(false);
        } else if (this.mAdapter.getList().isEmpty()) {
            this.mNumCheckSendView.n(false);
        } else {
            this.mNumCheckSendView.n(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment
    @NotNull
    protected List<GiftFragment.r> buildSendUsers() {
        List<VoiceRoomUserOnSeatModel> userListOnSeat;
        List<VoiceRoomUserOnSeatModel> userListOnSeat2;
        ArrayList arrayList = new ArrayList();
        if (getToUser() != null) {
            GiftFragment.r rVar = new GiftFragment.r();
            GCUser toUser = getToUser();
            rVar.f17819a = toUser != null ? toUser.getUserId() : null;
            GCUser toUser2 = getToUser();
            rVar.f17820b = toUser2 != null ? toUser2.getNickName() : null;
            VoiceRoomInfoModel value = getViewModel().getRoomInfo().getValue();
            if (value != null && (userListOnSeat2 = value.getUserListOnSeat()) != null) {
                Iterator<T> it = userListOnSeat2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (Intrinsics.areEqual(((VoiceRoomUserOnSeatModel) next).getUserId(), rVar.f17819a)) {
                        r2 = next;
                        break;
                    }
                }
                r2 = r2;
            }
            if (r2 != null) {
                rVar.f17823e = String.valueOf(r2.getId());
            }
            arrayList.add(rVar);
        } else if (this.mSelectAll) {
            VoiceRoomInfoModel value2 = getViewModel().getRoomInfo().getValue();
            if (value2 != null && (userListOnSeat = value2.getUserListOnSeat()) != null) {
                for (VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel : userListOnSeat) {
                    GiftFragment.r rVar2 = new GiftFragment.r();
                    rVar2.f17819a = voiceRoomUserOnSeatModel.getUserId();
                    rVar2.f17820b = voiceRoomUserOnSeatModel.getNickName();
                    rVar2.f17823e = String.valueOf(voiceRoomUserOnSeatModel.getId());
                    arrayList.add(rVar2);
                }
            } else {
                return new ArrayList();
            }
        } else {
            RecyclerView.Adapter adapter = this.recyclerView.getAdapter();
            UserOnSeatAdapter userOnSeatAdapter = adapter instanceof UserOnSeatAdapter ? (UserOnSeatAdapter) adapter : null;
            if ((userOnSeatAdapter != null ? userOnSeatAdapter.getCurrentSelected() : -1) >= 0) {
                UserModel currentSelectedUser = this.mAdapter.getCurrentSelectedUser();
                r2 = currentSelectedUser != null ? currentSelectedUser.getItem() : null;
                if (r2 != null) {
                    GiftFragment.r rVar3 = new GiftFragment.r();
                    rVar3.f17819a = r2.getUserId();
                    rVar3.f17820b = r2.getNickName();
                    rVar3.f17823e = String.valueOf(r2.getId());
                    arrayList.add(rVar3);
                }
            }
        }
        CollectionsKt__MutableCollectionsKt.removeAll((List) arrayList, (Function1) new Function1<GiftFragment.r, Boolean>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.VoiceRoomGiftFragment$buildSendUsers$4
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull GiftFragment.r it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it2.f17819a, b8.e.g().getUserId()));
            }
        });
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment
    public void initRecycleView() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment
    public void notifySelectAllChanged() {
        super.notifySelectAllChanged();
        RecyclerView.Adapter adapter = this.recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        setSendBtnEnable();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment, com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ((GiftFragment) this).mTheme = R.style.AppTheme;
        EventBus.getDefault().post(new Event(this));
        this.mSelectAll = true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onGift(@NotNull Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getFragment(), this)) {
            return;
        }
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment
    @OnClick
    public void onViewClicked() {
        UserModel currentSelectedUser;
        if (getToUser() != null) {
            GCUser toUser = getToUser();
            String userId = toUser != null ? toUser.getUserId() : null;
            LivePeopleInfoCardFragmentV2.Companion.newInstance(getRoomId(), userId != null ? userId : "").show(getParentFragmentManager(), "people");
            return;
        }
        RecyclerView.Adapter adapter = this.recyclerView.getAdapter();
        UserOnSeatAdapter userOnSeatAdapter = adapter instanceof UserOnSeatAdapter ? (UserOnSeatAdapter) adapter : null;
        if (userOnSeatAdapter == null || (currentSelectedUser = userOnSeatAdapter.getCurrentSelectedUser()) == null) {
            return;
        }
        LivePeopleInfoCardFragmentV2.Companion companion = LivePeopleInfoCardFragmentV2.Companion;
        String roomId = getRoomId();
        String userId2 = currentSelectedUser.getItem().getUserId();
        companion.newInstance(roomId, userId2 != null ? userId2 : "").show(getParentFragmentManager(), "people");
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        List listOf;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (getToUser() != null) {
            this.mNumCheckSendView.n(true);
            this.llMultiPlayer.setVisibility(0);
            RecyclerView recyclerView = this.recyclerView;
            GCUser toUser = getToUser();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new UserModel(-1, new VoiceRoomUserOnSeatModel(0, 0, 0, null, null, 0, 0, null, null, null, toUser != null ? toUser.getAvatarUrl() : null, 0, null, 0, 0, null, 64511, null)));
            recyclerView.setAdapter(new UserOnSeatAdapter(this, listOf));
            return;
        }
        getViewModel().getRoomInfo().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.x
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomGiftFragment.m411onViewCreated$lambda4(VoiceRoomGiftFragment.this, (VoiceRoomInfoModel) obj);
            }
        });
    }
}
