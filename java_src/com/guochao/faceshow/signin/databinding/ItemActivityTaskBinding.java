package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
/* loaded from: classes4.dex */
public final class ItemActivityTaskBinding implements ViewBinding {
    @NonNull
    public final TextView activityNameTV;
    @NonNull
    public final TextView btnDoTask;
    @NonNull
    public final LinearLayout firstGift;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout secondGift;
    @NonNull
    public final TextView taskName;
    @NonNull
    public final LinearLayout thirdGift;

    private ItemActivityTaskBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3) {
        this.rootView = frameLayout;
        this.activityNameTV = textView;
        this.btnDoTask = textView2;
        this.firstGift = linearLayout;
        this.secondGift = linearLayout2;
        this.taskName = textView3;
        this.thirdGift = linearLayout3;
    }

    @NonNull
    public static ItemActivityTaskBinding bind(@NonNull View view) {
        int i9 = R$id.activityNameTV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.btn_do_task;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView2 != null) {
                i9 = R$id.first_gift;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                if (linearLayout != null) {
                    i9 = R$id.second_gift;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                    if (linearLayout2 != null) {
                        i9 = R$id.task_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView3 != null) {
                            i9 = R$id.third_gift;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                            if (linearLayout3 != null) {
                                return new ItemActivityTaskBinding((FrameLayout) view, textView, textView2, linearLayout, linearLayout2, textView3, linearLayout3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemActivityTaskBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemActivityTaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.item_activity_task, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
