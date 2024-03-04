package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogPlayBottomBinding implements ViewBinding {
    @NonNull
    public final TextView firstTitle;
    @NonNull
    public final TextView gameName;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout secondContent;
    @NonNull
    public final TextView secondTitle;
    @NonNull
    public final LinearLayout signCenterLay;

    private DialogPlayBottomBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.firstTitle = textView;
        this.gameName = textView2;
        this.recyclerView = recyclerView;
        this.secondContent = linearLayout2;
        this.secondTitle = textView3;
        this.signCenterLay = linearLayout3;
    }

    @NonNull
    public static DialogPlayBottomBinding bind(@NonNull View view) {
        int i9 = R.id.first_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.first_title);
        if (textView != null) {
            i9 = R.id.game_name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.game_name);
            if (textView2 != null) {
                i9 = R.id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                if (recyclerView != null) {
                    i9 = R.id.second_content;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.second_content);
                    if (linearLayout != null) {
                        i9 = R.id.second_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.second_title);
                        if (textView3 != null) {
                            i9 = R.id.sign_center_lay;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.sign_center_lay);
                            if (linearLayout2 != null) {
                                return new DialogPlayBottomBinding((LinearLayout) view, textView, textView2, recyclerView, linearLayout, textView3, linearLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogPlayBottomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogPlayBottomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_play_bottom, viewGroup, false);
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
