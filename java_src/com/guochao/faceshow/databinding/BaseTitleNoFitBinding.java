package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
/* loaded from: classes2.dex */
public final class BaseTitleNoFitBinding implements ViewBinding {
    @NonNull
    public final TextView floatTitle;
    @NonNull
    public final TitleBackgroundView floatTitleBack;
    @NonNull
    private final TitleBackgroundView rootView;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;

    private BaseTitleNoFitBinding(@NonNull TitleBackgroundView titleBackgroundView, @NonNull TextView textView, @NonNull TitleBackgroundView titleBackgroundView2, @NonNull TextView textView2, @NonNull Toolbar toolbar) {
        this.rootView = titleBackgroundView;
        this.floatTitle = textView;
        this.floatTitleBack = titleBackgroundView2;
        this.title = textView2;
        this.toolbar = toolbar;
    }

    @NonNull
    public static BaseTitleNoFitBinding bind(@NonNull View view) {
        int i9 = R.id.float_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.float_title);
        if (textView != null) {
            TitleBackgroundView titleBackgroundView = (TitleBackgroundView) view;
            i9 = 16908310;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, 16908310);
            if (textView2 != null) {
                i9 = R.id.toolbar;
                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                if (toolbar != null) {
                    return new BaseTitleNoFitBinding(titleBackgroundView, textView, titleBackgroundView, textView2, toolbar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static BaseTitleNoFitBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static BaseTitleNoFitBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.base_title_no_fit, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TitleBackgroundView getRoot() {
        return this.rootView;
    }
}
