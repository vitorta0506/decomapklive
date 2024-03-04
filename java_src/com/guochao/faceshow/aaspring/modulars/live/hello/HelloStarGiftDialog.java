package com.guochao.faceshow.aaspring.modulars.live.hello;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.databinding.DialogHelloStarGiftBinding;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u0012\u0010\u001c\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0017J\u0012\u0010\u001d\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "lockGiftNum", "", "getLockGiftNum", "()I", "setLockGiftNum", "(I)V", "type", "getType", "setType", "unLockGiftNum", "getUnLockGiftNum", "setUnLockGiftNum", "viewBinding", "Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/DialogHelloStarGiftBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityCreated", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HelloStarGiftDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private int lockGiftNum;
    private int type;
    private int unLockGiftNum;
    public DialogHelloStarGiftBinding viewBinding;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarGiftDialog;", "type", "", "lockGiftNum", "unLockGiftNum", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final HelloStarGiftDialog getInstance(int i9, int i10, int i11) {
            HelloStarGiftDialog helloStarGiftDialog = new HelloStarGiftDialog();
            Bundle bundle = new Bundle();
            bundle.putInt("type", i9);
            bundle.putInt("lockGiftNum", i10);
            bundle.putInt("unLockGiftNum", i11);
            helloStarGiftDialog.setArguments(bundle);
            return helloStarGiftDialog;
        }
    }

    @JvmStatic
    @NotNull
    public static final HelloStarGiftDialog getInstance(int i9, int i10, int i11) {
        return Companion.getInstance(i9, i10, i11);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-3  reason: not valid java name */
    public static final void m485initView$lambda4$lambda3(HelloStarGiftDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    public final int getLockGiftNum() {
        return this.lockGiftNum;
    }

    public final int getType() {
        return this.type;
    }

    public final int getUnLockGiftNum() {
        return this.unLockGiftNum;
    }

    @NotNull
    public final DialogHelloStarGiftBinding getViewBinding() {
        DialogHelloStarGiftBinding dialogHelloStarGiftBinding = this.viewBinding;
        if (dialogHelloStarGiftBinding != null) {
            return dialogHelloStarGiftBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        int indexOf$default;
        int indexOf$default2;
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.type = arguments.getInt("type");
            this.lockGiftNum = arguments.getInt("lockGiftNum");
            this.unLockGiftNum = arguments.getInt("unLockGiftNum");
        }
        DialogHelloStarGiftBinding viewBinding = getViewBinding();
        if (this.type == 0) {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.HELLO_STAR_HELLO_GIFT);
            ja.a.b().e("KEY_HELLO_HOUR_SHOW");
            viewBinding.tvDayUnlock.setVisibility(0);
            viewBinding.tvTitle.setText(getString(R.string.hello_star_gift_tip, Integer.valueOf(this.lockGiftNum + this.unLockGiftNum)));
            String string = getString(R.string.hello_start_gift_number, Integer.valueOf(this.lockGiftNum));
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.hello…gift_number, lockGiftNum)");
            String string2 = getString(R.string.hello_start_gift_number, Integer.valueOf(this.unLockGiftNum));
            Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.hello…ft_number, unLockGiftNum)");
            String string3 = getString(R.string.hello_star_unlock_tip, string, string2);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(R.string.hello…ckNumbers, unlockNumbers)");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string3);
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string3, string, 0, false, 6, (Object) null);
            spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_app_tips)), indexOf$default, string.length() + indexOf$default, 33);
            if (this.lockGiftNum == this.unLockGiftNum) {
                indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) string3, string2, 1, false, 4, (Object) null);
            } else {
                indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) string3, string2, 0, false, 6, (Object) null);
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_app_tips)), indexOf$default2, string2.length() + indexOf$default2, 33);
            viewBinding.tvDayUnlock.setText(spannableStringBuilder);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                viewBinding.tvHelpTip.setTextColor(ContextCompat.getColor(activity, R.color.text_hello_color_tip));
            }
        } else {
            viewBinding.tvDayUnlock.setVisibility(8);
            viewBinding.tvTitle.setText(getString(R.string.hello_star_gift_unlock_tip));
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                viewBinding.tvHelpTip.setTextColor(ContextCompat.getColor(activity2, R.color.black_dark));
            }
        }
        viewBinding.tvIKnow.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HelloStarGiftDialog.m485initView$lambda4$lambda3(HelloStarGiftDialog.this, view);
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void onActivityCreated(@Nullable Bundle bundle) {
        Window window;
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        Intrinsics.checkNotNullExpressionValue(attributes, "it1.attributes");
        attributes.width = -1;
        attributes.height = -2;
        attributes.gravity = 80;
        window.setAttributes(attributes);
        window.setLayout(-1, -2);
        FragmentActivity activity = getActivity();
        if (activity == null || !(activity instanceof BaseActivity) || ((BaseActivity) activity).getSystemUiVisibility() == 0) {
            return;
        }
        window.getDecorView().setSystemUiVisibility(4098);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
        setStyle(0, R.style.BottomDialog);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            Dialog dialog = new Dialog(activity, R.style.BottomDialog);
            dialog.requestWindowFeature(1);
            dialog.setCanceledOnTouchOutside(true);
            Window window = dialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawable(new ColorDrawable(0));
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.gravity = 80;
                attributes.width = -1;
                window.setAttributes(attributes);
            }
            return dialog;
        }
        return createBottomDialog(getTheme());
    }

    public final void setLockGiftNum(int i9) {
        this.lockGiftNum = i9;
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    public final void setUnLockGiftNum(int i9) {
        this.unLockGiftNum = i9;
    }

    public final void setViewBinding(@NotNull DialogHelloStarGiftBinding dialogHelloStarGiftBinding) {
        Intrinsics.checkNotNullParameter(dialogHelloStarGiftBinding, "<set-?>");
        this.viewBinding = dialogHelloStarGiftBinding;
    }
}
