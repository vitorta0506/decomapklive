package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogPendantBinding implements ViewBinding {
    @NonNull
    public final View emptyView;
    @NonNull
    public final TextView firstTab;
    @NonNull
    public final FrameLayout fragmentContainer;
    @NonNull
    public final ImageView iconClose;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView secondTab;
    @NonNull
    public final FrameLayout tab1;
    @NonNull
    public final FrameLayout tab2;
    @NonNull
    public final FrameLayout tab3;
    @NonNull
    public final LinearLayout tabLay;
    @NonNull
    public final View tabLine;
    @NonNull
    public final TextView thirdTab;

    private DialogPendantBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull LinearLayout linearLayout2, @NonNull View view2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.emptyView = view;
        this.firstTab = textView;
        this.fragmentContainer = frameLayout;
        this.iconClose = imageView;
        this.secondTab = textView2;
        this.tab1 = frameLayout2;
        this.tab2 = frameLayout3;
        this.tab3 = frameLayout4;
        this.tabLay = linearLayout2;
        this.tabLine = view2;
        this.thirdTab = textView3;
    }

    @NonNull
    public static DialogPendantBinding bind(@NonNull View view) {
        int i9 = R.id.empty_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty_view);
        if (findChildViewById != null) {
            i9 = R.id.first_tab;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.first_tab);
            if (textView != null) {
                i9 = R.id.fragment_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_container);
                if (frameLayout != null) {
                    i9 = R.id.icon_close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_close);
                    if (imageView != null) {
                        i9 = R.id.second_tab;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.second_tab);
                        if (textView2 != null) {
                            i9 = R.id.tab1;
                            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.tab1);
                            if (frameLayout2 != null) {
                                i9 = R.id.tab2;
                                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.tab2);
                                if (frameLayout3 != null) {
                                    i9 = R.id.tab3;
                                    FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.tab3);
                                    if (frameLayout4 != null) {
                                        i9 = R.id.tab_lay;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tab_lay);
                                        if (linearLayout != null) {
                                            i9 = R.id.tab_line;
                                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.tab_line);
                                            if (findChildViewById2 != null) {
                                                i9 = R.id.third_tab;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.third_tab);
                                                if (textView3 != null) {
                                                    return new DialogPendantBinding((LinearLayout) view, findChildViewById, textView, frameLayout, imageView, textView2, frameLayout2, frameLayout3, frameLayout4, linearLayout, findChildViewById2, textView3);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogPendantBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogPendantBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_pendant, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
