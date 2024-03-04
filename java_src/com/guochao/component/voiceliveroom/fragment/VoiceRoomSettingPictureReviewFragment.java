package com.guochao.component.voiceliveroom.fragment;

import android.app.Dialog;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.databinding.FragmentVoiceRoomSettingPicturePreviewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0012\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;", "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;", "()V", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomSettingPicturePreviewBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomSettingPictureReviewFragment extends BaseGCLiveRoomFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public FragmentVoiceRoomSettingPicturePreviewBinding viewBinding;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingPictureReviewFragment;", "url", "Landroid/net/Uri;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final VoiceRoomSettingPictureReviewFragment newInstance(@Nullable Uri uri) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("url", uri);
            VoiceRoomSettingPictureReviewFragment voiceRoomSettingPictureReviewFragment = new VoiceRoomSettingPictureReviewFragment();
            voiceRoomSettingPictureReviewFragment.setArguments(bundle);
            return voiceRoomSettingPictureReviewFragment;
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m319initView$lambda0(VoiceRoomSettingPictureReviewFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    @NotNull
    public final FragmentVoiceRoomSettingPicturePreviewBinding getViewBinding() {
        FragmentVoiceRoomSettingPicturePreviewBinding fragmentVoiceRoomSettingPicturePreviewBinding = this.viewBinding;
        if (fragmentVoiceRoomSettingPicturePreviewBinding != null) {
            return fragmentVoiceRoomSettingPicturePreviewBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        Bundle arguments = getArguments();
        Uri uri = null;
        Uri uri2 = arguments != null ? (Uri) arguments.getParcelable("url") : null;
        if (uri2 == null) {
            Intrinsics.checkNotNull(null, "null cannot be cast to non-null type android.net.Uri");
        } else {
            uri = uri2;
        }
        com.bumptech.glide.c.w(this).n(uri).Q0(getViewBinding().bgIV);
        ImageView imageView = getViewBinding().bgIV;
        Intrinsics.checkNotNullExpressionValue(imageView, "viewBinding.bgIV");
        ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomSettingPictureReviewFragment.m319initView$lambda0(VoiceRoomSettingPictureReviewFragment.this, view);
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
        return createCenterDialog();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        makeDialogLikeActivity();
    }

    public final void setViewBinding(@NotNull FragmentVoiceRoomSettingPicturePreviewBinding fragmentVoiceRoomSettingPicturePreviewBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoiceRoomSettingPicturePreviewBinding, "<set-?>");
        this.viewBinding = fragmentVoiceRoomSettingPicturePreviewBinding;
    }
}
