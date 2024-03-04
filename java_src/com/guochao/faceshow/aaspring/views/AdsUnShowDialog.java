package com.guochao.faceshow.aaspring.views;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001fB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\u0012\u0010\u0018\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00172\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u000e\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u001a\u0010\u0011\u001a\u00020\tX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;", "Landroid/app/Dialog;", "Landroid/view/View$OnClickListener;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "adsClickListener", "Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;", "adsGoneDay", "Landroid/widget/TextView;", "getAdsGoneDay", "()Landroid/widget/TextView;", "setAdsGoneDay", "(Landroid/widget/TextView;)V", "close", "getClose", "setClose", "hidePermanently", "getHidePermanently", "setHidePermanently", "windowParams", "Landroid/view/WindowManager$LayoutParams;", "initView", "", "onClick", NotifyType.VIBRATE, "Landroid/view/View;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "setOnAdsClickListener", "OnAdsClickListener", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AdsUnShowDialog extends Dialog implements View.OnClickListener {
    @Nullable
    private OnAdsClickListener adsClickListener;
    public TextView adsGoneDay;
    public TextView close;
    public TextView hidePermanently;
    @Nullable
    private WindowManager.LayoutParams windowParams;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;", "", "adsGoneDayClick", "", "dialog", "Landroid/app/Dialog;", "adsHidePermanentlyClick", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnAdsClickListener {
        void adsGoneDayClick(@NotNull Dialog dialog);

        void adsHidePermanentlyClick(@NotNull Dialog dialog);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdsUnShowDialog(@NotNull Context context) {
        super(context, R.style.commonDialog);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void initView() {
        View findViewById = findViewById(R.id.close);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.close)");
        setClose((TextView) findViewById);
        View findViewById2 = findViewById(R.id.ads_gone_day);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.ads_gone_day)");
        setAdsGoneDay((TextView) findViewById2);
        View findViewById3 = findViewById(R.id.hide_permanently);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.hide_permanently)");
        setHidePermanently((TextView) findViewById3);
        getClose().setOnClickListener(this);
        getAdsGoneDay().setOnClickListener(this);
        getHidePermanently().setOnClickListener(this);
    }

    @NotNull
    public final TextView getAdsGoneDay() {
        TextView textView = this.adsGoneDay;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adsGoneDay");
        return null;
    }

    @NotNull
    public final TextView getClose() {
        TextView textView = this.close;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("close");
        return null;
    }

    @NotNull
    public final TextView getHidePermanently() {
        TextView textView = this.hidePermanently;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("hidePermanently");
        return null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        OnAdsClickListener onAdsClickListener;
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.close) {
            dismiss();
        } else if (valueOf != null && valueOf.intValue() == R.id.ads_gone_day) {
            OnAdsClickListener onAdsClickListener2 = this.adsClickListener;
            if (onAdsClickListener2 != null) {
                onAdsClickListener2.adsGoneDayClick(this);
            }
        } else if (valueOf == null || valueOf.intValue() != R.id.hide_permanently || (onAdsClickListener = this.adsClickListener) == null) {
        } else {
            onAdsClickListener.adsHidePermanentlyClick(this);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_ads_un_show);
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            this.windowParams = attributes;
            if (attributes != null) {
                attributes.width = -1;
            }
            if (attributes != null) {
                attributes.height = -2;
            }
            window.setAttributes(attributes);
        }
        setCanceledOnTouchOutside(false);
        initView();
    }

    public final void setAdsGoneDay(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.adsGoneDay = textView;
    }

    public final void setClose(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.close = textView;
    }

    public final void setHidePermanently(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.hidePermanently = textView;
    }

    public final void setOnAdsClickListener(@NotNull OnAdsClickListener adsClickListener) {
        Intrinsics.checkNotNullParameter(adsClickListener, "adsClickListener");
        this.adsClickListener = adsClickListener;
    }
}
