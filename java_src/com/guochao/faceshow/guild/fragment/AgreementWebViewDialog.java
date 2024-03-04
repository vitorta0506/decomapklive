package com.guochao.faceshow.guild.fragment;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.faceshow.guild.fragment.AgreementWebViewDialog;
import com.guochao.faceshow.guild.view.BaseDialogFragment;
import com.guochao.faceshow.utils.ScreenTools;
import f7.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001f"}, d2 = {"Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;", "Lcom/guochao/faceshow/guild/view/BaseDialogFragment;", "()V", "close", "Landroid/widget/ImageView;", "getClose", "()Landroid/widget/ImageView;", "setClose", "(Landroid/widget/ImageView;)V", "flContent", "Landroid/widget/FrameLayout;", "getFlContent", "()Landroid/widget/FrameLayout;", "setFlContent", "(Landroid/widget/FrameLayout;)V", "webView", "Landroid/webkit/WebView;", "getWebView", "()Landroid/webkit/WebView;", "setWebView", "(Landroid/webkit/WebView;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AgreementWebViewDialog extends BaseDialogFragment {
    public ImageView close;
    public FrameLayout flContent;
    public WebView webView;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateView$lambda-0  reason: not valid java name */
    public static final void m727onCreateView$lambda0(AgreementWebViewDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    @NotNull
    public final ImageView getClose() {
        ImageView imageView = this.close;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("close");
        return null;
    }

    @NotNull
    public final FrameLayout getFlContent() {
        FrameLayout frameLayout = this.flContent;
        if (frameLayout != null) {
            return frameLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("flContent");
        return null;
    }

    @NotNull
    public final WebView getWebView() {
        WebView webView = this.webView;
        if (webView != null) {
            return webView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("webView");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(R$layout.dialog_agreement, viewGroup, false);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.requestWindowFeature(1);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        View findViewById = inflate.findViewById(R$id.fl_content);
        Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.fl_content)");
        setFlContent((FrameLayout) findViewById);
        View findViewById2 = inflate.findViewById(R$id.webView);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "view.findViewById(R.id.webView)");
        setWebView((WebView) findViewById2);
        View findViewById3 = inflate.findViewById(R$id.close);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "view.findViewById(R.id.close)");
        setClose((ImageView) findViewById3);
        getFlContent().getLayoutParams().height = (int) (ScreenTools.getScreenHeight() * 0.65d);
        getWebView().loadUrl(a.f39641f0);
        getClose().setOnClickListener(new View.OnClickListener() { // from class: ua.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AgreementWebViewDialog.m727onCreateView$lambda0(AgreementWebViewDialog.this, view);
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        WindowManager windowManager;
        Display defaultDisplay;
        super.onStart();
        setCancelable(false);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        FragmentActivity activity = getActivity();
        if (activity != null && (windowManager = activity.getWindowManager()) != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public final void setClose(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.close = imageView;
    }

    public final void setFlContent(@NotNull FrameLayout frameLayout) {
        Intrinsics.checkNotNullParameter(frameLayout, "<set-?>");
        this.flContent = frameLayout;
    }

    public final void setWebView(@NotNull WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "<set-?>");
        this.webView = webView;
    }
}
