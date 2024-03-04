package com.guochao.faceshow.aaspring.modulars.live.hello;

import android.os.Bundle;
import android.view.View;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.databinding.FragmentHelloStarH5rulesBinding;
import com.guochao.faceshow.utils.WebViewUrlTools;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "h5RulesSelectListener", "Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;", "getH5RulesSelectListener", "()Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;", "setH5RulesSelectListener", "(Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;)V", "mWebViewFragment", "Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;", "getMWebViewFragment", "()Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;", "setMWebViewFragment", "(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)V", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentHelloStarH5rulesBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "setOnH5RulesSelectListener", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HelloStarH5RulesFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private H5RulesSelectListener h5RulesSelectListener;
    @Nullable
    private WebViewFragment mWebViewFragment;
    public FragmentHelloStarH5rulesBinding viewBinding;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloStarH5RulesFragment;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final HelloStarH5RulesFragment getInstance() {
            return new HelloStarH5RulesFragment();
        }
    }

    @JvmStatic
    @NotNull
    public static final HelloStarH5RulesFragment getInstance() {
        return Companion.getInstance();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1$lambda-0  reason: not valid java name */
    public static final void m486initView$lambda1$lambda0(HelloStarH5RulesFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        H5RulesSelectListener h5RulesSelectListener = this$0.h5RulesSelectListener;
        if (h5RulesSelectListener != null) {
            h5RulesSelectListener.onH5BlackSummonListener();
        }
    }

    @Nullable
    public final H5RulesSelectListener getH5RulesSelectListener() {
        return this.h5RulesSelectListener;
    }

    @Nullable
    public final WebViewFragment getMWebViewFragment() {
        return this.mWebViewFragment;
    }

    @NotNull
    public final FragmentHelloStarH5rulesBinding getViewBinding() {
        FragmentHelloStarH5rulesBinding fragmentHelloStarH5rulesBinding = this.viewBinding;
        if (fragmentHelloStarH5rulesBinding != null) {
            return fragmentHelloStarH5rulesBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FragmentHelloStarH5rulesBinding viewBinding = getViewBinding();
        this.mWebViewFragment = WebViewFragment.getInstance(R.id.fragment_container, getChildFragmentManager(), WebViewUrlTools.getLocalWebUrl(20), "");
        viewBinding.ivBlack.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HelloStarH5RulesFragment.m486initView$lambda1$lambda0(HelloStarH5RulesFragment.this, view);
            }
        });
    }

    public final void setH5RulesSelectListener(@Nullable H5RulesSelectListener h5RulesSelectListener) {
        this.h5RulesSelectListener = h5RulesSelectListener;
    }

    public final void setMWebViewFragment(@Nullable WebViewFragment webViewFragment) {
        this.mWebViewFragment = webViewFragment;
    }

    public final void setOnH5RulesSelectListener(@NotNull H5RulesSelectListener h5RulesSelectListener) {
        Intrinsics.checkNotNullParameter(h5RulesSelectListener, "h5RulesSelectListener");
        this.h5RulesSelectListener = h5RulesSelectListener;
    }

    public final void setViewBinding(@NotNull FragmentHelloStarH5rulesBinding fragmentHelloStarH5rulesBinding) {
        Intrinsics.checkNotNullParameter(fragmentHelloStarH5rulesBinding, "<set-?>");
        this.viewBinding = fragmentHelloStarH5rulesBinding;
    }
}
