package com.guochao.component.mvp.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.mvp.databinding.ViewTitleBinding;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J!\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0010H\u0016J\u000e\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0010J\u000e\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0010R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/guochao/component/mvp/view/TitleView;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "viewBinding", "Lcom/guochao/component/mvp/databinding/ViewTitleBinding;", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/ViewTitleBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/ViewTitleBinding;)V", "addBackListener", "", "res", "", "listener", "Landroid/view/View$OnClickListener;", "(Ljava/lang/Integer;Landroid/view/View$OnClickListener;)V", "addMoreListener", "setBackgroundColor", "color", "setTitle", ViewHierarchyConstants.TEXT_KEY, "", "setTitleColor", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TitleView extends LinearLayout {
    @NotNull
    private ViewTitleBinding viewBinding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TitleView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ TitleView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    public static /* synthetic */ void addBackListener$default(TitleView titleView, Integer num, View.OnClickListener onClickListener, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            num = null;
        }
        titleView.addBackListener(num, onClickListener);
    }

    public final void addBackListener(@Nullable Integer num, @Nullable View.OnClickListener onClickListener) {
        if (num != null) {
            this.viewBinding.backIV.setImageResource(num.intValue());
        }
        this.viewBinding.backIV.setVisibility(0);
        this.viewBinding.backIV.setOnClickListener(onClickListener);
    }

    public final void addMoreListener(int i9, @Nullable View.OnClickListener onClickListener) {
        this.viewBinding.moreIV.setImageResource(i9);
        this.viewBinding.moreIV.setVisibility(0);
        this.viewBinding.moreIV.setOnClickListener(onClickListener);
    }

    @NotNull
    public final ViewTitleBinding getViewBinding() {
        return this.viewBinding;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i9) {
        this.viewBinding.allLL.setBackgroundColor(i9);
    }

    public final void setTitle(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.viewBinding.titleTV.setText(text);
    }

    public final void setTitleColor(int i9) {
        this.viewBinding.titleTV.setTextColor(i9);
    }

    public final void setViewBinding(@NotNull ViewTitleBinding viewTitleBinding) {
        Intrinsics.checkNotNullParameter(viewTitleBinding, "<set-?>");
        this.viewBinding = viewTitleBinding;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public TitleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        ViewTitleBinding inflate = ViewTitleBinding.inflate(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context), this, true)");
        this.viewBinding = inflate;
    }

    public final void setTitle(int i9) {
        this.viewBinding.titleTV.setText(i9);
    }
}
