package com.guochao.faceshow.aaspring.modulars.live.hello;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.databinding.DialogHelloGiftNewUserBinding;
import java.util.HashMap;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 -2\u00020\u0001:\u0001-B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\u0012\u0010)\u001a\u00020$2\b\u0010'\u001a\u0004\u0018\u00010(H\u0017J\u0012\u0010*\u001a\u00020$2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u0012\u0010+\u001a\u00020,2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR&\u0010\t\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR6\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00130\u0012j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0013`\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\bR$\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u001e\u0010\u0002\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006."}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "liveId", "", "getLiveId", "()Ljava/lang/String;", "setLiveId", "(Ljava/lang/String;)V", "mClass", "", "Ljava/lang/Class;", "getMClass", "()[Ljava/lang/Class;", "setMClass", "([Ljava/lang/Class;)V", "[Ljava/lang/Class;", "mFragments", "Ljava/util/HashMap;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/HashMap;", "getMFragments", "()Ljava/util/HashMap;", "setMFragments", "(Ljava/util/HashMap;)V", "startTime", "getStartTime", "setStartTime", "viewBinding", "Lcom/guochao/faceshow/databinding/DialogHelloGiftNewUserBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/DialogHelloGiftNewUserBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/DialogHelloGiftNewUserBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityCreated", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HelloGiftNewUserDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public DialogHelloGiftNewUserBinding viewBinding;
    @NotNull
    private String liveId = "";
    @NotNull
    private String startTime = "";
    @NotNull
    private HashMap<String, Fragment> mFragments = new HashMap<>();
    @NotNull
    private Class<?>[] mClass = {HelloSummonFragment.class, HelloStarH5RulesFragment.class};

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloGiftNewUserDialog;", "liveId", "", "startTime", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final HelloGiftNewUserDialog getInstance(@NotNull String liveId, @NotNull String startTime) {
            Intrinsics.checkNotNullParameter(liveId, "liveId");
            Intrinsics.checkNotNullParameter(startTime, "startTime");
            HelloGiftNewUserDialog helloGiftNewUserDialog = new HelloGiftNewUserDialog();
            Bundle bundle = new Bundle();
            bundle.putString("liveId", liveId);
            bundle.putString("startTime", startTime);
            helloGiftNewUserDialog.setArguments(bundle);
            return helloGiftNewUserDialog;
        }
    }

    @JvmStatic
    @NotNull
    public static final HelloGiftNewUserDialog getInstance(@NotNull String str, @NotNull String str2) {
        return Companion.getInstance(str, str2);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @NotNull
    public final String getLiveId() {
        return this.liveId;
    }

    @NotNull
    public final Class<?>[] getMClass() {
        return this.mClass;
    }

    @NotNull
    public final HashMap<String, Fragment> getMFragments() {
        return this.mFragments;
    }

    @NotNull
    public final String getStartTime() {
        return this.startTime;
    }

    @NotNull
    public final DialogHelloGiftNewUserBinding getViewBinding() {
        DialogHelloGiftNewUserBinding dialogHelloGiftNewUserBinding = this.viewBinding;
        if (dialogHelloGiftNewUserBinding != null) {
            return dialogHelloGiftNewUserBinding;
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
            this.liveId = String.valueOf(arguments.getString("liveId"));
            this.startTime = String.valueOf(arguments.getString("startTime"));
        }
        getViewBinding();
        final HelloSummonFragment companion = HelloSummonFragment.Companion.getInstance(this.liveId, this.startTime);
        final HelloStarH5RulesFragment companion2 = HelloStarH5RulesFragment.Companion.getInstance();
        companion.setOnH5RulesSelectListener(new H5RulesSelectListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.HelloGiftNewUserDialog$initView$2$1
            @Override // com.guochao.faceshow.aaspring.modulars.live.hello.H5RulesSelectListener
            public void onH5BlackSummonListener() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.live.hello.H5RulesSelectListener
            public void onH5RulesClickListener() {
                if (HelloGiftNewUserDialog.this.getChildFragmentManager().findFragmentByTag(HelloGiftNewUserDialog.this.getMClass()[0].getName()) != null) {
                    HelloGiftNewUserDialog.this.getChildFragmentManager().beginTransaction().hide(companion).commitAllowingStateLoss();
                }
                if (HelloGiftNewUserDialog.this.getChildFragmentManager().findFragmentByTag(HelloGiftNewUserDialog.this.getMClass()[1].getName()) == null) {
                    HelloGiftNewUserDialog.this.getChildFragmentManager().beginTransaction().add(R.id.content_layout, companion2, HelloGiftNewUserDialog.this.getMClass()[1].getName()).commitAllowingStateLoss();
                }
                HelloGiftNewUserDialog.this.getChildFragmentManager().beginTransaction().show(companion2).commitAllowingStateLoss();
                if (HelloGiftNewUserDialog.this.getMFragments().containsKey(HelloGiftNewUserDialog.this.getMClass()[1].getName())) {
                    return;
                }
                HashMap<String, Fragment> mFragments = HelloGiftNewUserDialog.this.getMFragments();
                String name = HelloGiftNewUserDialog.this.getMClass()[1].getName();
                Intrinsics.checkNotNullExpressionValue(name, "mClass[1].name");
                mFragments.put(name, companion2);
            }
        });
        companion2.setOnH5RulesSelectListener(new H5RulesSelectListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.HelloGiftNewUserDialog$initView$2$2
            @Override // com.guochao.faceshow.aaspring.modulars.live.hello.H5RulesSelectListener
            public void onH5BlackSummonListener() {
                if (HelloGiftNewUserDialog.this.getChildFragmentManager().findFragmentByTag(HelloGiftNewUserDialog.this.getMClass()[1].getName()) != null) {
                    HelloGiftNewUserDialog.this.getChildFragmentManager().beginTransaction().hide(companion2).commitAllowingStateLoss();
                }
                if (HelloGiftNewUserDialog.this.getChildFragmentManager().findFragmentByTag(HelloGiftNewUserDialog.this.getMClass()[0].getName()) == null) {
                    HelloGiftNewUserDialog.this.getChildFragmentManager().beginTransaction().add(R.id.content_layout, companion, HelloGiftNewUserDialog.this.getMClass()[1].getName()).commitAllowingStateLoss();
                }
                HelloGiftNewUserDialog.this.getChildFragmentManager().beginTransaction().show(companion).commitAllowingStateLoss();
                if (companion.isAdded()) {
                    companion.h5RulesAutoRefresh();
                }
            }

            @Override // com.guochao.faceshow.aaspring.modulars.live.hello.H5RulesSelectListener
            public void onH5RulesClickListener() {
            }
        });
        getChildFragmentManager().beginTransaction().add(R.id.content_layout, companion, this.mClass[0].getName()).commitAllowingStateLoss();
        getChildFragmentManager().beginTransaction().show(companion).commitAllowingStateLoss();
        if (this.mFragments.containsKey(this.mClass[0].getName())) {
            return;
        }
        HashMap<String, Fragment> hashMap = this.mFragments;
        String name = this.mClass[0].getName();
        Intrinsics.checkNotNullExpressionValue(name, "mClass[0].name");
        hashMap.put(name, companion);
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
        int i9 = (int) (getResources().getDisplayMetrics().heightPixels / 1.77d);
        attributes.height = i9;
        attributes.gravity = 80;
        window.setAttributes(attributes);
        window.setLayout(-1, i9);
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

    public final void setLiveId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.liveId = str;
    }

    public final void setMClass(@NotNull Class<?>[] clsArr) {
        Intrinsics.checkNotNullParameter(clsArr, "<set-?>");
        this.mClass = clsArr;
    }

    public final void setMFragments(@NotNull HashMap<String, Fragment> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.mFragments = hashMap;
    }

    public final void setStartTime(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.startTime = str;
    }

    public final void setViewBinding(@NotNull DialogHelloGiftNewUserBinding dialogHelloGiftNewUserBinding) {
        Intrinsics.checkNotNullParameter(dialogHelloGiftNewUserBinding, "<set-?>");
        this.viewBinding = dialogHelloGiftNewUserBinding;
    }
}
