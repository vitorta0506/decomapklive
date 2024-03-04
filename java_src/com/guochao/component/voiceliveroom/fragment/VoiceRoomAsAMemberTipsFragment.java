package com.guochao.component.voiceliveroom.fragment;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import androidx.appcompat.app.AppCompatDialog;
import androidx.core.content.ContextCompat;
import com.guochao.component.liveroom.R$color;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.FragmentVoliceRoomAsAMemberTipsBinding;
import com.guochao.component.voiceliveroom.helper.a;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.lib_core.R$mipmap;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0012\u0010\u0012\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;", "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;", "()V", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomAsAMemberTipsBinding;)V", "createCenterDialog", "Landroidx/appcompat/app/AppCompatDialog;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomAsAMemberTipsFragment extends BaseGCLiveRoomFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public FragmentVoliceRoomAsAMemberTipsBinding viewBinding;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomAsAMemberTipsFragment;", InAppPurchaseMetaData.KEY_PRICE, "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ VoiceRoomAsAMemberTipsFragment newInstance$default(Companion companion, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i9 = 0;
            }
            return companion.newInstance(i9);
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomAsAMemberTipsFragment newInstance(int i9) {
            VoiceRoomAsAMemberTipsFragment voiceRoomAsAMemberTipsFragment = new VoiceRoomAsAMemberTipsFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(InAppPurchaseMetaData.KEY_PRICE, i9);
            voiceRoomAsAMemberTipsFragment.setArguments(bundle);
            return voiceRoomAsAMemberTipsFragment;
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomAsAMemberTipsFragment newInstance(int i9) {
        return Companion.newInstance(i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    @NotNull
    public AppCompatDialog createCenterDialog() {
        return createCenterDialog();
    }

    @NotNull
    public final FragmentVoliceRoomAsAMemberTipsBinding getViewBinding() {
        FragmentVoliceRoomAsAMemberTipsBinding fragmentVoliceRoomAsAMemberTipsBinding = this.viewBinding;
        if (fragmentVoliceRoomAsAMemberTipsBinding != null) {
            return fragmentVoliceRoomAsAMemberTipsBinding;
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
        if (arguments != null) {
            int i9 = arguments.getInt(InAppPurchaseMetaData.KEY_PRICE);
            if (i9 == 0) {
                getViewBinding().contentTV.setText(getString(R$string.member_content1_free));
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String string = getString(R$string.member_content1_fee);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.member_content1_fee)");
            String format = String.format(string, Arrays.copyOf(new Object[]{"{icon}" + i9}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
            Context context = getContext();
            Drawable drawable = context != null ? ContextCompat.getDrawable(context, R$mipmap.ic_earth) : null;
            if (drawable != null) {
                drawable.setBounds(0, 0, ScreenTools.dip2px(10.0f), ScreenTools.dip2px(10.0f));
                com.guochao.component.voiceliveroom.helper.a.c(R$color.orange_FF9900, spannableStringBuilder, String.valueOf(i9));
                com.guochao.component.voiceliveroom.helper.a.b(spannableStringBuilder, format, new a.C0145a(drawable));
            }
            getViewBinding().contentTV.setText(spannableStringBuilder.toString());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    public final void setViewBinding(@NotNull FragmentVoliceRoomAsAMemberTipsBinding fragmentVoliceRoomAsAMemberTipsBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoliceRoomAsAMemberTipsBinding, "<set-?>");
        this.viewBinding = fragmentVoliceRoomAsAMemberTipsBinding;
    }
}
