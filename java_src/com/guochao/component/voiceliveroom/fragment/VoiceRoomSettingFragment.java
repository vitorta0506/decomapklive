package com.guochao.component.voiceliveroom.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.RecyclerView;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.beloo.widget.chipslayoutmanager.ChipsLayoutManager;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.material.appbar.MaterialToolbar;
import com.guochao.component.liveroom.R$color;
import com.guochao.component.liveroom.R$drawable;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.liveroom.R$menu;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.DialogSavingBinding;
import com.guochao.component.liveroom.databinding.FragmentVoiceRoomSettingBinding;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomSettingFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomBackgroundModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomClassifyModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomCreateRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.viewmodel.CreateVoiceRoomViewModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.lib_base.R$raw;
import com.guochao.lib_service_center.liveroom.service.CoverImageDisplayer;
import com.guochao.lib_service_center.util.service.ISensitiveWordFilter;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 02\u00020\u00012\u00020\u0002:\u0004/012B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001a\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u001a\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0012\u0010\"\u001a\u00020\u00192\b\u0010#\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010$\u001a\u00020\u00192\b\u0010%\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010&\u001a\u00020\u00192\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010'\u001a\u00020(2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010)\u001a\u00020\u00192\u0006\u0010*\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0012\u0010+\u001a\u00020\u00192\b\u0010,\u001a\u0004\u0018\u00010-H\u0002J\b\u0010.\u001a\u00020\u0019H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u000e\u0010\u0003\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\t\u001a\u0004\b\u0015\u0010\u0016¨\u00063"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;", "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;", "Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;", "()V", "createRoomViewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;", "getCreateRoomViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;", "createRoomViewModel$delegate", "Lkotlin/Lazy;", "currentCoverImage", "", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "getCover", "", "hideKeyboard", JThirdPlatFormInterface.KEY_TOKEN, "Landroid/os/IBinder;", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "notifyLocalImage", TCConstants.VIDEO_RECORD_VIDEPATH, "notifyNetworkImage", "url", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "resetData", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "save", "BackgroundAdapter", "Companion", "SavingDialog", "TagAdapter", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomSettingFragment extends BaseGCLiveRoomFragment implements CoverImageDisplayer {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static String cameraPath = "";
    @NotNull
    private static String myPath = "";
    @NotNull
    private final Lazy createRoomViewModel$delegate;
    @NotNull
    private String currentCoverImage;
    public FragmentVoiceRoomSettingBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\bH\u0016J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\bH\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$BackgroundAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "list", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;", "(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;Ljava/util/List;)V", "currentUserClicked", "", "currentBackground", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class BackgroundAdapter extends RecyclerView.Adapter<BaseViewHolder> {
        private int currentUserClicked;
        @NotNull
        private final List<VoiceRoomBackgroundModel> list;
        final /* synthetic */ VoiceRoomSettingFragment this$0;

        public BackgroundAdapter(@NotNull VoiceRoomSettingFragment voiceRoomSettingFragment, List<VoiceRoomBackgroundModel> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.this$0 = voiceRoomSettingFragment;
            this.list = list;
            this.currentUserClicked = -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onBindViewHolder$lambda-5  reason: not valid java name */
        public static final void m316onBindViewHolder$lambda5(VoiceRoomBackgroundModel mode, VoiceRoomSettingFragment this$0, View view) {
            Intrinsics.checkNotNullParameter(mode, "$mode");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            VoiceRoomSettingPictureReviewFragment newInstance = VoiceRoomSettingPictureReviewFragment.Companion.newInstance(mode.getUrl());
            FragmentManager parentFragmentManager = this$0.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            newInstance.show(parentFragmentManager, "pictureReview");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onCreateViewHolder$lambda-3$lambda-2  reason: not valid java name */
        public static final void m317onCreateViewHolder$lambda3$lambda2(BackgroundAdapter this$0, BaseViewHolder this_apply, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            this$0.currentUserClicked = this_apply.getAbsoluteAdapterPosition();
            this$0.notifyDataSetChanged();
        }

        @NotNull
        public final String currentBackground() {
            Object obj;
            int i9 = this.currentUserClicked;
            if (i9 == -1) {
                Iterator<T> it = this.list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    boolean z10 = true;
                    if (((VoiceRoomBackgroundModel) obj).getSelected() != 1) {
                        z10 = false;
                        continue;
                    }
                    if (z10) {
                        break;
                    }
                }
                VoiceRoomBackgroundModel voiceRoomBackgroundModel = (VoiceRoomBackgroundModel) obj;
                return String.valueOf(voiceRoomBackgroundModel != null ? voiceRoomBackgroundModel.getUrl() : null);
            }
            VoiceRoomBackgroundModel voiceRoomBackgroundModel2 = this.list.get(i9);
            return voiceRoomBackgroundModel2.getId() == -1 ? "" : String.valueOf(voiceRoomBackgroundModel2.getUrl());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            final VoiceRoomBackgroundModel voiceRoomBackgroundModel = this.list.get(i9);
            ImageView imageView = (ImageView) holder.getView(R$id.image);
            com.bumptech.glide.c.v(imageView).n(voiceRoomBackgroundModel.getUrl()).u0(new jc.e(imageView.getContext(), 10)).Q0(imageView);
            holder.itemView.setSelected(this.currentUserClicked == holder.getAbsoluteAdapterPosition());
            ImageView imageView2 = (ImageView) holder.getView(R$id.icon);
            CardView cardView = (CardView) holder.getView(R$id.cardView);
            if (voiceRoomBackgroundModel.getId() == -1) {
                holder.setText(R$id.info, R$string.setting_privacy_distance_default);
            } else if (voiceRoomBackgroundModel.getFree() == 1) {
                holder.setText(R$id.info, R$string.voice_room_free);
            }
            if (this.currentUserClicked == holder.getAbsoluteAdapterPosition()) {
                imageView2.setVisibility(0);
                cardView.setSelected(true);
                imageView2.setImageResource(R$drawable.ic_voice_room_bg_expand);
                final VoiceRoomSettingFragment voiceRoomSettingFragment = this.this$0;
                ViewExtendsKt.onClick$default(imageView2, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.c1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VoiceRoomSettingFragment.BackgroundAdapter.m316onBindViewHolder$lambda5(VoiceRoomBackgroundModel.this, voiceRoomSettingFragment, view);
                    }
                }, 1, null);
            } else if (voiceRoomBackgroundModel.getSelected() == 1) {
                imageView2.setVisibility(0);
                cardView.setSelected(false);
                imageView2.setImageResource(R$drawable.ic_voice_room_selected);
                imageView2.setOnClickListener(null);
            } else {
                cardView.setSelected(false);
                imageView2.setVisibility(4);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            View inflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.grid_item_voice_room_background, parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …ackground, parent, false)");
            final BaseViewHolder baseViewHolder = new BaseViewHolder(inflate);
            baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.b1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoiceRoomSettingFragment.BackgroundAdapter.m317onCreateViewHolder$lambda3$lambda2(VoiceRoomSettingFragment.BackgroundAdapter.this, baseViewHolder, view);
                }
            });
            return baseViewHolder;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$Companion;", "", "()V", "cameraPath", "", "myPath", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomSettingFragment newInstance() {
            return new VoiceRoomSettingFragment();
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$SavingDialog;", "Landroidx/appcompat/app/AppCompatDialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "viewBinding", "Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/DialogSavingBinding;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class SavingDialog extends AppCompatDialog {
        public DialogSavingBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavingDialog(@NotNull Context context) {
            super(context);
            Intrinsics.checkNotNullParameter(context, "context");
        }

        @NotNull
        public final DialogSavingBinding getViewBinding() {
            DialogSavingBinding dialogSavingBinding = this.viewBinding;
            if (dialogSavingBinding != null) {
                return dialogSavingBinding;
            }
            Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
        public void onCreate(@Nullable Bundle bundle) {
            super.onCreate(bundle);
            LayoutInflater from = LayoutInflater.from(getContext());
            Window window = getWindow();
            View decorView = window != null ? window.getDecorView() : null;
            DialogSavingBinding it = DialogSavingBinding.inflate(from, decorView instanceof ViewGroup ? (ViewGroup) decorView : null, false);
            Intrinsics.checkNotNullExpressionValue(it, "it");
            setViewBinding(it);
            it.loading.playRaw(R$raw.loading_global);
            setContentView(it.getRoot());
            Window window2 = getWindow();
            if (window2 != null) {
                window2.setBackgroundDrawable(null);
            }
            setCancelable(false);
            setCanceledOnTouchOutside(false);
        }

        public final void setViewBinding(@NotNull DialogSavingBinding dialogSavingBinding) {
            Intrinsics.checkNotNullParameter(dialogSavingBinding, "<set-?>");
            this.viewBinding = dialogSavingBinding;
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\bJ\b\u0010\n\u001a\u00020\bH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\bH\u0016J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bH\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "tags", "", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;", "(Ljava/util/List;)V", "currentSelected", "", "currentTag", "getItemCount", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class TagAdapter extends RecyclerView.Adapter<BaseViewHolder> {
        private int currentSelected;
        @Nullable
        private final List<VoiceRoomClassifyModel> tags;

        public TagAdapter(@Nullable List<VoiceRoomClassifyModel> list) {
            this.tags = list;
            int i9 = -1;
            if (list != null) {
                int i10 = 0;
                Iterator<VoiceRoomClassifyModel> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (it.next().getSelected()) {
                        i9 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
            }
            this.currentSelected = i9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onCreateViewHolder$lambda-3$lambda-2  reason: not valid java name */
        public static final void m318onCreateViewHolder$lambda3$lambda2(TagAdapter this$0, BaseViewHolder this_apply, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            this$0.currentSelected = this_apply.getAbsoluteAdapterPosition();
            this$0.notifyDataSetChanged();
        }

        public final int currentTag() {
            VoiceRoomClassifyModel voiceRoomClassifyModel;
            VoiceRoomClassifyModel voiceRoomClassifyModel2;
            int i9 = this.currentSelected;
            if (i9 == -1) {
                List<VoiceRoomClassifyModel> list = this.tags;
                if (list == null || (voiceRoomClassifyModel2 = list.get(0)) == null) {
                    return -1;
                }
                return voiceRoomClassifyModel2.getId();
            }
            List<VoiceRoomClassifyModel> list2 = this.tags;
            if (list2 == null || (voiceRoomClassifyModel = list2.get(i9)) == null) {
                return -1;
            }
            return voiceRoomClassifyModel.getId();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<VoiceRoomClassifyModel> list = this.tags;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
            VoiceRoomClassifyModel voiceRoomClassifyModel;
            Intrinsics.checkNotNullParameter(holder, "holder");
            List<VoiceRoomClassifyModel> list = this.tags;
            if (list == null || (voiceRoomClassifyModel = list.get(i9)) == null) {
                return;
            }
            holder.itemView.setSelected(this.currentSelected == holder.getAbsoluteAdapterPosition());
            holder.setText(R$id.text, voiceRoomClassifyModel.getName());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            View inflate = LayoutInflater.from(parent.getContext()).inflate(R$layout.grid_item_tag_adapter, parent, false);
            TextView textView = (TextView) inflate.findViewById(R$id.text);
            textView.setBackgroundResource(R$drawable.bg_tag_voice_setting);
            textView.setTextColor(ContextCompat.getColorStateList(inflate.getContext(), R$color.voice_room_tag_text_color_setting));
            Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …  )\n                    }");
            final BaseViewHolder baseViewHolder = new BaseViewHolder(inflate);
            View itemView = baseViewHolder.itemView;
            Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
            ViewExtendsKt.onClick$default(itemView, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.d1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoiceRoomSettingFragment.TagAdapter.m318onCreateViewHolder$lambda3$lambda2(VoiceRoomSettingFragment.TagAdapter.this, baseViewHolder, view);
                }
            }, 1, null);
            return baseViewHolder;
        }
    }

    public VoiceRoomSettingFragment() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomSettingFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomSettingFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<CreateVoiceRoomViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomSettingFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CreateVoiceRoomViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, CreateVoiceRoomViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(CreateVoiceRoomViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.component.voiceliveroom.viewmodel.CreateVoiceRoomViewModel");
                return (CreateVoiceRoomViewModel) baseViewModel;
            }
        });
        this.createRoomViewModel$delegate = lazy2;
        this.currentCoverImage = "";
    }

    private final void getCover() {
        long j10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(FilePathProvider.getCachePath("crop"));
        sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb2.append(System.currentTimeMillis() / 1000);
        sb2.append(FileUtils.PIC_POSTFIX_JPEG);
        myPath = sb2.toString();
        cameraPath = FilePathProvider.getCachePath("crop") + IOUtils.DIR_SEPARATOR_UNIX + (System.currentTimeMillis() / j10) + FileUtils.PIC_POSTFIX_JPEG;
        Object navigation = o.a.c().a(RouterPath.ROUTER_LIVE_ROOM_SELECT_COVER).withBoolean("openLive", true).withString("cameraPath", cameraPath).withString("myPath", myPath).navigation();
        DialogFragment dialogFragment = navigation instanceof DialogFragment ? (DialogFragment) navigation : null;
        if (dialogFragment != null) {
            dialogFragment.show(getChildFragmentManager(), "cover");
        }
    }

    private final CreateVoiceRoomViewModel getCreateRoomViewModel() {
        return (CreateVoiceRoomViewModel) this.createRoomViewModel$delegate.getValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final VoiceRoomSeatControllerViewModel getViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.viewModel$delegate.getValue();
    }

    private final void hideKeyboard(IBinder iBinder) {
        if (iBinder == null || getActivity() == null) {
            return;
        }
        FragmentActivity activity = getActivity();
        Object systemService = activity != null ? activity.getSystemService("input_method") : null;
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(iBinder, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-10  reason: not valid java name */
    public static final boolean m309initView$lambda10(VoiceRoomSettingFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.hideKeyboard(view.getWindowToken());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m310initView$lambda2(VoiceRoomSettingFragment this$0, VoiceRoomInfoModel voiceRoomInfoModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.resetData(voiceRoomInfoModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-7$lambda-3  reason: not valid java name */
    public static final void m311initView$lambda7$lambda3(VoiceRoomSettingFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.save();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-7$lambda-5$lambda-4  reason: not valid java name */
    public static final boolean m312initView$lambda7$lambda5$lambda4(VoiceRoomSettingFragment this$0, MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getParentFragmentManager().beginTransaction().remove(this$0).commitAllowingStateLoss();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-7$lambda-6  reason: not valid java name */
    public static final void m313initView$lambda7$lambda6(VoiceRoomSettingFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getCover();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-8  reason: not valid java name */
    public static final boolean m314initView$lambda8(VoiceRoomSettingFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.hideKeyboard(view.getWindowToken());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-9  reason: not valid java name */
    public static final boolean m315initView$lambda9(VoiceRoomSettingFragment this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.hideKeyboard(view.getWindowToken());
        return false;
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomSettingFragment newInstance() {
        return Companion.newInstance();
    }

    private final void resetData(VoiceRoomInfoModel voiceRoomInfoModel) {
        if (voiceRoomInfoModel == null) {
            return;
        }
        FragmentVoiceRoomSettingBinding viewBinding = getViewBinding();
        viewBinding.info.setText(voiceRoomInfoModel.getTitle());
        EditText editText = viewBinding.info;
        String title = voiceRoomInfoModel.getTitle();
        editText.setSelection(title != null ? title.length() : 0);
        notifyNetworkImage(voiceRoomInfoModel.getCoverImgUrl());
        viewBinding.tagRv.setAdapter(new TagAdapter(voiceRoomInfoModel.getTagConfs()));
        viewBinding.backgroundRv.setAdapter(new BackgroundAdapter(this, voiceRoomInfoModel.getBackgroundImageUrls()));
    }

    private final void save() {
        List listOf;
        String obj = getViewBinding().info.getText().toString();
        if (obj == null || obj.length() == 0) {
            ToastUtils.showToast$default(getContext(), R$string.voice_room_room_title_hint, 0, 4, null);
            return;
        }
        Object navigation = o.a.c().a(RouterPath.ROUTER_SENSITIVE_WORD_FILTER).navigation();
        Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.lib_service_center.util.service.ISensitiveWordFilter");
        String checkWord = ((ISensitiveWordFilter) navigation).checkWord(obj);
        if (!TextUtils.isEmpty(obj) && !TextUtils.isEmpty(checkWord)) {
            ToastUtils.showToast$default(getActivity(), R$string.live_room_name_violate, 0, 4, null);
            return;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        SavingDialog savingDialog = new SavingDialog(requireContext);
        savingDialog.show();
        RecyclerView.Adapter adapter = getViewBinding().tagRv.getAdapter();
        TagAdapter tagAdapter = adapter instanceof TagAdapter ? (TagAdapter) adapter : null;
        int currentTag = tagAdapter != null ? tagAdapter.currentTag() : -1;
        if (currentTag == -1) {
            listOf = CollectionsKt__CollectionsKt.emptyList();
        } else {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(currentTag));
        }
        VoiceRoomSeatControllerViewModel viewModel = getViewModel();
        String obj2 = getViewBinding().info.getText().toString();
        String str = this.currentCoverImage;
        RecyclerView.Adapter adapter2 = getViewBinding().backgroundRv.getAdapter();
        BackgroundAdapter backgroundAdapter = adapter2 instanceof BackgroundAdapter ? (BackgroundAdapter) adapter2 : null;
        viewModel.saveVoiceRoomSetting(new VoiceRoomCreateRoomModel(obj2, str, listOf, (backgroundAdapter == null || (r7 = backgroundAdapter.currentBackground()) == null) ? "" : ""), new VoiceRoomSettingFragment$save$1(this, savingDialog, null));
    }

    @NotNull
    public final FragmentVoiceRoomSettingBinding getViewBinding() {
        FragmentVoiceRoomSettingBinding fragmentVoiceRoomSettingBinding = this.viewBinding;
        if (fragmentVoiceRoomSettingBinding != null) {
            return fragmentVoiceRoomSettingBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getCreateRoomViewModel().getVoiceRoomInfo().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.a1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomSettingFragment.m310initView$lambda2(VoiceRoomSettingFragment.this, (VoiceRoomInfoModel) obj);
            }
        });
        getCreateRoomViewModel().loadVoiceRoomInfo();
        Dialog dialog = getDialog();
        Window window = dialog != null ? dialog.getWindow() : null;
        if (window != null) {
            window.setStatusBarColor(-1);
        }
        FragmentVoiceRoomSettingBinding viewBinding = getViewBinding();
        viewBinding.tagRv.setLayoutManager(ChipsLayoutManager.G(requireContext()).b(1).a());
        TextView save = viewBinding.save;
        Intrinsics.checkNotNullExpressionValue(save, "save");
        ViewExtendsKt.onClick$default(save, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomSettingFragment.m311initView$lambda7$lambda3(VoiceRoomSettingFragment.this, view);
            }
        }, 1, null);
        MaterialToolbar materialToolbar = viewBinding.title.gcToolBar;
        materialToolbar.setTitle(R$string.voice_room_setting);
        materialToolbar.inflateMenu(R$menu.menu_voice_room_member);
        materialToolbar.getMenu().findItem(R$id.role).setIcon(R$drawable.ic_voice_room_setting_close);
        materialToolbar.setOnMenuItemClickListener(new Toolbar.OnMenuItemClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.z0
            @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean m312initView$lambda7$lambda5$lambda4;
                m312initView$lambda7$lambda5$lambda4 = VoiceRoomSettingFragment.m312initView$lambda7$lambda5$lambda4(VoiceRoomSettingFragment.this, menuItem);
                return m312initView$lambda7$lambda5$lambda4;
            }
        });
        materialToolbar.setBackgroundColor(-1);
        FrameLayout coverArea = viewBinding.coverArea;
        Intrinsics.checkNotNullExpressionValue(coverArea, "coverArea");
        ViewExtendsKt.onClick$default(coverArea, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomSettingFragment.m313initView$lambda7$lambda6(VoiceRoomSettingFragment.this, view);
            }
        }, 1, null);
        getViewBinding().backgroundRv.setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.component.voiceliveroom.fragment.x0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m314initView$lambda8;
                m314initView$lambda8 = VoiceRoomSettingFragment.m314initView$lambda8(VoiceRoomSettingFragment.this, view, motionEvent);
                return m314initView$lambda8;
            }
        });
        getViewBinding().tagRv.setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.component.voiceliveroom.fragment.y0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m315initView$lambda9;
                m315initView$lambda9 = VoiceRoomSettingFragment.m315initView$lambda9(VoiceRoomSettingFragment.this, view, motionEvent);
                return m315initView$lambda9;
            }
        });
        getViewBinding().contentFL.setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.component.voiceliveroom.fragment.w0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m309initView$lambda10;
                m309initView$lambda10 = VoiceRoomSettingFragment.m309initView$lambda10(VoiceRoomSettingFragment.this, view, motionEvent);
                return m309initView$lambda10;
            }
        });
    }

    @Override // com.guochao.lib_service_center.liveroom.service.CoverImageDisplayer
    public void notifyLocalImage(@Nullable String str) {
        GCCoreFragment.showLoading$default(this, null, 1, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002a, code lost:
        if (r2 == true) goto L18;
     */
    @Override // com.guochao.lib_service_center.liveroom.service.CoverImageDisplayer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void notifyNetworkImage(@org.jetbrains.annotations.Nullable java.lang.String r6) {
        /*
            r5 = this;
            r5.dismissLoading()
            com.guochao.component.liveroom.databinding.FragmentVoiceRoomSettingBinding r0 = r5.viewBinding
            if (r0 != 0) goto L8
            return
        L8:
            androidx.fragment.app.FragmentActivity r0 = r5.getActivity()
            if (r0 != 0) goto Lf
            return
        Lf:
            r0 = 1
            r1 = 0
            if (r6 == 0) goto L1c
            int r2 = r6.length()
            if (r2 != 0) goto L1a
            goto L1c
        L1a:
            r2 = 0
            goto L1d
        L1c:
            r2 = 1
        L1d:
            if (r2 == 0) goto L20
            return
        L20:
            if (r6 == 0) goto L2d
            r2 = 2
            r3 = 0
            java.lang.String r4 = "http"
            boolean r2 = kotlin.text.StringsKt.startsWith$default(r6, r4, r1, r2, r3)
            if (r2 != r0) goto L2d
            goto L2e
        L2d:
            r0 = 0
        L2e:
            if (r0 == 0) goto L32
            r5.currentCoverImage = r6
        L32:
            com.guochao.component.liveroom.databinding.FragmentVoiceRoomSettingBinding r0 = r5.getViewBinding()
            android.widget.ImageView r1 = r0.cover
            com.bumptech.glide.h r1 = com.bumptech.glide.c.v(r1)
            com.bumptech.glide.g r6 = r1.r(r6)
            jc.e r1 = new jc.e
            android.content.Context r2 = r5.requireContext()
            r3 = 10
            r1.<init>(r2, r3)
            com.bumptech.glide.request.a r6 = r6.q0(r1)
            com.bumptech.glide.g r6 = (com.bumptech.glide.g) r6
            android.widget.ImageView r0 = r0.cover
            r6.Q0(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.fragment.VoiceRoomSettingFragment.notifyNetworkImage(java.lang.String):void");
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
    }

    public final void setViewBinding(@NotNull FragmentVoiceRoomSettingBinding fragmentVoiceRoomSettingBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoiceRoomSettingBinding, "<set-?>");
        this.viewBinding = fragmentVoiceRoomSettingBinding;
    }
}
