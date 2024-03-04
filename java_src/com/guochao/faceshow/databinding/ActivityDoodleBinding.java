package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.VerticalRangeSeekBar;
/* loaded from: classes2.dex */
public final class ActivityDoodleBinding implements ViewBinding {
    @NonNull
    public final TextView complete;
    @NonNull
    public final FrameLayout doodleContainer;
    @NonNull
    public final FrameLayout doodleEditText;
    @NonNull
    public final FrameLayout doodlePanel;
    @NonNull
    public final FrameLayout flBottom;
    @NonNull
    public final FrameLayout flSeek;
    @NonNull
    public final ImageView ivCompile;
    @NonNull
    public final ImageView ivCut;
    @NonNull
    public final ImageView ivPainSize;
    @NonNull
    public final ImageView ivRecall;
    @NonNull
    public final ImageView ivText;
    @NonNull
    public final ImageView ivTextRecall;
    @NonNull
    public final RelativeLayout llMulti;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final VerticalRangeSeekBar seekBar;
    @NonNull
    public final View viewLine;

    private ActivityDoodleBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull FrameLayout frameLayout5, @NonNull FrameLayout frameLayout6, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull RelativeLayout relativeLayout, @NonNull RecyclerView recyclerView, @NonNull VerticalRangeSeekBar verticalRangeSeekBar, @NonNull View view) {
        this.rootView = frameLayout;
        this.complete = textView;
        this.doodleContainer = frameLayout2;
        this.doodleEditText = frameLayout3;
        this.doodlePanel = frameLayout4;
        this.flBottom = frameLayout5;
        this.flSeek = frameLayout6;
        this.ivCompile = imageView;
        this.ivCut = imageView2;
        this.ivPainSize = imageView3;
        this.ivRecall = imageView4;
        this.ivText = imageView5;
        this.ivTextRecall = imageView6;
        this.llMulti = relativeLayout;
        this.recyclerView = recyclerView;
        this.seekBar = verticalRangeSeekBar;
        this.viewLine = view;
    }

    @NonNull
    public static ActivityDoodleBinding bind(@NonNull View view) {
        int i9 = R.id.complete;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.complete);
        if (textView != null) {
            i9 = R.id.doodle_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.doodle_container);
            if (frameLayout != null) {
                i9 = R.id.doodle_edit_text;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.doodle_edit_text);
                if (frameLayout2 != null) {
                    i9 = R.id.doodle_panel;
                    FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.doodle_panel);
                    if (frameLayout3 != null) {
                        i9 = R.id.fl_bottom;
                        FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_bottom);
                        if (frameLayout4 != null) {
                            i9 = R.id.fl_seek;
                            FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_seek);
                            if (frameLayout5 != null) {
                                i9 = R.id.iv_compile;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_compile);
                                if (imageView != null) {
                                    i9 = R.id.iv_cut;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_cut);
                                    if (imageView2 != null) {
                                        i9 = R.id.iv_pain_size;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_pain_size);
                                        if (imageView3 != null) {
                                            i9 = R.id.iv_recall;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_recall);
                                            if (imageView4 != null) {
                                                i9 = R.id.iv_text;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_text);
                                                if (imageView5 != null) {
                                                    i9 = R.id.iv_text_recall;
                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_text_recall);
                                                    if (imageView6 != null) {
                                                        i9 = R.id.ll_multi;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.ll_multi);
                                                        if (relativeLayout != null) {
                                                            i9 = R.id.recycler_view;
                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                                                            if (recyclerView != null) {
                                                                i9 = R.id.seek_bar;
                                                                VerticalRangeSeekBar verticalRangeSeekBar = (VerticalRangeSeekBar) ViewBindings.findChildViewById(view, R.id.seek_bar);
                                                                if (verticalRangeSeekBar != null) {
                                                                    i9 = R.id.view_line;
                                                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_line);
                                                                    if (findChildViewById != null) {
                                                                        return new ActivityDoodleBinding((FrameLayout) view, textView, frameLayout, frameLayout2, frameLayout3, frameLayout4, frameLayout5, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, relativeLayout, recyclerView, verticalRangeSeekBar, findChildViewById);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityDoodleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityDoodleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_doodle, viewGroup, false);
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
