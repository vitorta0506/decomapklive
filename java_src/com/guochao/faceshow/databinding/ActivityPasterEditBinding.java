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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.TCLayerViewGroup;
import com.guochao.faceshow.views.TimeSeekBar;
/* loaded from: classes2.dex */
public final class ActivityPasterEditBinding implements ViewBinding {
    @NonNull
    public final ImageView backLl;
    @NonNull
    public final ImageView btnPlay;
    @NonNull
    public final TimeSeekBar myTimeSeekBar;
    @NonNull
    public final ImageView pasterBtnAdd;
    @NonNull
    public final TCLayerViewGroup pasterContainer;
    @NonNull
    public final FrameLayout pasterFlPlayer;
    @NonNull
    public final FrameLayout pasterFlVideoView;
    @NonNull
    public final RecyclerView psterRecyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvDone;
    @NonNull
    public final TextView tvTitle;
    @NonNull
    public final LinearLayout wordLlContainer;

    private ActivityPasterEditBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TimeSeekBar timeSeekBar, @NonNull ImageView imageView3, @NonNull TCLayerViewGroup tCLayerViewGroup, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull RecyclerView recyclerView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.backLl = imageView;
        this.btnPlay = imageView2;
        this.myTimeSeekBar = timeSeekBar;
        this.pasterBtnAdd = imageView3;
        this.pasterContainer = tCLayerViewGroup;
        this.pasterFlPlayer = frameLayout;
        this.pasterFlVideoView = frameLayout2;
        this.psterRecyclerView = recyclerView;
        this.tvDone = textView;
        this.tvTitle = textView2;
        this.wordLlContainer = linearLayout2;
    }

    @NonNull
    public static ActivityPasterEditBinding bind(@NonNull View view) {
        int i9 = R.id.back_ll;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_ll);
        if (imageView != null) {
            i9 = R.id.btn_play;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_play);
            if (imageView2 != null) {
                i9 = R.id.myTimeSeekBar;
                TimeSeekBar timeSeekBar = (TimeSeekBar) ViewBindings.findChildViewById(view, R.id.myTimeSeekBar);
                if (timeSeekBar != null) {
                    i9 = R.id.paster_btn_add;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.paster_btn_add);
                    if (imageView3 != null) {
                        i9 = R.id.paster_container;
                        TCLayerViewGroup tCLayerViewGroup = (TCLayerViewGroup) ViewBindings.findChildViewById(view, R.id.paster_container);
                        if (tCLayerViewGroup != null) {
                            i9 = R.id.paster_fl_player;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.paster_fl_player);
                            if (frameLayout != null) {
                                i9 = R.id.paster_fl_video_view;
                                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.paster_fl_video_view);
                                if (frameLayout2 != null) {
                                    i9 = R.id.pster_recyclerView;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.pster_recyclerView);
                                    if (recyclerView != null) {
                                        i9 = R.id.tv_done;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_done);
                                        if (textView != null) {
                                            i9 = R.id.tv_title;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                            if (textView2 != null) {
                                                i9 = R.id.word_ll_container;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.word_ll_container);
                                                if (linearLayout != null) {
                                                    return new ActivityPasterEditBinding((LinearLayout) view, imageView, imageView2, timeSeekBar, imageView3, tCLayerViewGroup, frameLayout, frameLayout2, recyclerView, textView, textView2, linearLayout);
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
    public static ActivityPasterEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPasterEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_paster_edit, viewGroup, false);
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
