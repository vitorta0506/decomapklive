package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import cn.carbs.android.expandabletextview.library.ExpandableTextView;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
/* loaded from: classes4.dex */
public final class ProcessListItemMiddleBinding implements ViewBinding {
    @NonNull
    public final TextView compaintTv;
    @NonNull
    public final TextView compaintTv2;
    @NonNull
    public final TextView creater;
    @NonNull
    public final TextView date;
    @NonNull
    public final AppCompatImageView endNodeIcon;
    @NonNull
    public final TextView endStatus;
    @NonNull
    public final RecyclerView imageRecyclerview;
    @NonNull
    public final LinearLayout linearLayout2;
    @NonNull
    public final AppCompatImageView nodeIcon;
    @NonNull
    public final View processLine;
    @NonNull
    public final ExpandableTextView reason;
    @NonNull
    public final LinearLayout reasonLayout;
    @NonNull
    private final ConstraintLayout rootView;
    @NonNull
    public final TextView stateTv;

    private ProcessListItemMiddleBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull AppCompatImageView appCompatImageView, @NonNull TextView textView5, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout, @NonNull AppCompatImageView appCompatImageView2, @NonNull View view, @NonNull ExpandableTextView expandableTextView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView6) {
        this.rootView = constraintLayout;
        this.compaintTv = textView;
        this.compaintTv2 = textView2;
        this.creater = textView3;
        this.date = textView4;
        this.endNodeIcon = appCompatImageView;
        this.endStatus = textView5;
        this.imageRecyclerview = recyclerView;
        this.linearLayout2 = linearLayout;
        this.nodeIcon = appCompatImageView2;
        this.processLine = view;
        this.reason = expandableTextView;
        this.reasonLayout = linearLayout2;
        this.stateTv = textView6;
    }

    @NonNull
    public static ProcessListItemMiddleBinding bind(@NonNull View view) {
        View findChildViewById;
        int i9 = R$id.compaint_tv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.compaint_tv2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView2 != null) {
                i9 = R$id.creater;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView3 != null) {
                    i9 = R$id.date;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView4 != null) {
                        i9 = R$id.end_node_icon;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i9);
                        if (appCompatImageView != null) {
                            i9 = R$id.end_status;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                            if (textView5 != null) {
                                i9 = R$id.image_recyclerview;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                                if (recyclerView != null) {
                                    i9 = R$id.linearLayout2;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                    if (linearLayout != null) {
                                        i9 = R$id.node_icon;
                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i9);
                                        if (appCompatImageView2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i9 = R$id.process_line))) != null) {
                                            i9 = R$id.reason;
                                            ExpandableTextView expandableTextView = (ExpandableTextView) ViewBindings.findChildViewById(view, i9);
                                            if (expandableTextView != null) {
                                                i9 = R$id.reason_layout;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                                if (linearLayout2 != null) {
                                                    i9 = R$id.state_tv;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                    if (textView6 != null) {
                                                        return new ProcessListItemMiddleBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, appCompatImageView, textView5, recyclerView, linearLayout, appCompatImageView2, findChildViewById, expandableTextView, linearLayout2, textView6);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ProcessListItemMiddleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ProcessListItemMiddleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.process_list_item_middle, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
