package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.TCLayerViewGroup;
import com.guochao.faceshow.views.VideoProgressView;
import com.guochao.faceshow.views.ZZRangeSlider;
/* loaded from: classes2.dex */
public final class ActivityVideoEditBinding implements ViewBinding {
    @NonNull
    public final TextView appTitleText;
    @NonNull
    public final ZZRangeSlider bgmRangeSlider;
    @NonNull
    public final ImageView btnBeauty;
    @NonNull
    public final ImageView btnConfirm;
    @NonNull
    public final ImageView btnDeleteLastPart;
    @NonNull
    public final ImageView btnMusicPannel;
    @NonNull
    public final ImageView btnPlay;
    @NonNull
    public final ImageView btnSwitchCamera;
    @NonNull
    public final ImageView btnTorch;
    @NonNull
    public final TextView cutSure;
    @NonNull
    public final LinearLayout editLayout;
    @NonNull
    public final FrameLayout editerFlContainer;
    @NonNull
    public final FrameLayout editerFlVideo;
    @NonNull
    public final ImageButton editerIbPlay;
    @NonNull
    public final VideoProgressView editerVideoProgressView;
    @NonNull
    public final RecyclerView horizontalListView;
    @NonNull
    public final TCLayerViewGroup pasterContainer;
    @NonNull
    public final FrameLayout pasterFlPlayer;
    @NonNull
    public final TextView questionTitle;
    @NonNull
    public final HorizontalScrollView recyclerView;
    @NonNull
    public final RelativeLayout rlPlayRoot;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final LinearLayout scLl;
    @NonNull
    public final LinearLayout tcpLine;
    @NonNull
    public final TextView tcpOk;
    @NonNull
    public final LinearLayout timeLine;
    @NonNull
    public final ConstraintLayout titleLay;
    @NonNull
    public final ImageView tvLeftBack;
    @NonNull
    public final VideoProgressView videoProgressView;
    @NonNull
    public final ImageView voiceSet;
    @NonNull
    public final TextView yesSure;

    private ActivityVideoEditBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ZZRangeSlider zZRangeSlider, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ImageView imageView7, @NonNull TextView textView2, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageButton imageButton, @NonNull VideoProgressView videoProgressView, @NonNull RecyclerView recyclerView, @NonNull TCLayerViewGroup tCLayerViewGroup, @NonNull FrameLayout frameLayout3, @NonNull TextView textView3, @NonNull HorizontalScrollView horizontalScrollView, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout4, @NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView8, @NonNull VideoProgressView videoProgressView2, @NonNull ImageView imageView9, @NonNull TextView textView5) {
        this.rootView = relativeLayout;
        this.appTitleText = textView;
        this.bgmRangeSlider = zZRangeSlider;
        this.btnBeauty = imageView;
        this.btnConfirm = imageView2;
        this.btnDeleteLastPart = imageView3;
        this.btnMusicPannel = imageView4;
        this.btnPlay = imageView5;
        this.btnSwitchCamera = imageView6;
        this.btnTorch = imageView7;
        this.cutSure = textView2;
        this.editLayout = linearLayout;
        this.editerFlContainer = frameLayout;
        this.editerFlVideo = frameLayout2;
        this.editerIbPlay = imageButton;
        this.editerVideoProgressView = videoProgressView;
        this.horizontalListView = recyclerView;
        this.pasterContainer = tCLayerViewGroup;
        this.pasterFlPlayer = frameLayout3;
        this.questionTitle = textView3;
        this.recyclerView = horizontalScrollView;
        this.rlPlayRoot = relativeLayout2;
        this.scLl = linearLayout2;
        this.tcpLine = linearLayout3;
        this.tcpOk = textView4;
        this.timeLine = linearLayout4;
        this.titleLay = constraintLayout;
        this.tvLeftBack = imageView8;
        this.videoProgressView = videoProgressView2;
        this.voiceSet = imageView9;
        this.yesSure = textView5;
    }

    @NonNull
    public static ActivityVideoEditBinding bind(@NonNull View view) {
        int i9 = R.id.app_title_text;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.app_title_text);
        if (textView != null) {
            i9 = R.id.bgm_range_slider;
            ZZRangeSlider zZRangeSlider = (ZZRangeSlider) ViewBindings.findChildViewById(view, R.id.bgm_range_slider);
            if (zZRangeSlider != null) {
                i9 = R.id.btn_beauty;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_beauty);
                if (imageView != null) {
                    i9 = R.id.btn_confirm;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_confirm);
                    if (imageView2 != null) {
                        i9 = R.id.btn_delete_last_part;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_delete_last_part);
                        if (imageView3 != null) {
                            i9 = R.id.btn_music_pannel;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_music_pannel);
                            if (imageView4 != null) {
                                i9 = R.id.btn_play;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_play);
                                if (imageView5 != null) {
                                    i9 = R.id.btn_switch_camera;
                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_switch_camera);
                                    if (imageView6 != null) {
                                        i9 = R.id.btn_torch;
                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_torch);
                                        if (imageView7 != null) {
                                            i9 = R.id.cut_sure;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.cut_sure);
                                            if (textView2 != null) {
                                                i9 = R.id.edit_layout;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.edit_layout);
                                                if (linearLayout != null) {
                                                    i9 = R.id.editer_fl_container;
                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.editer_fl_container);
                                                    if (frameLayout != null) {
                                                        i9 = R.id.editer_fl_video;
                                                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.editer_fl_video);
                                                        if (frameLayout2 != null) {
                                                            i9 = R.id.editer_ib_play;
                                                            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.editer_ib_play);
                                                            if (imageButton != null) {
                                                                i9 = R.id.editer_video_progress_view;
                                                                VideoProgressView videoProgressView = (VideoProgressView) ViewBindings.findChildViewById(view, R.id.editer_video_progress_view);
                                                                if (videoProgressView != null) {
                                                                    i9 = R.id.horizontalListView;
                                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.horizontalListView);
                                                                    if (recyclerView != null) {
                                                                        i9 = R.id.paster_container;
                                                                        TCLayerViewGroup tCLayerViewGroup = (TCLayerViewGroup) ViewBindings.findChildViewById(view, R.id.paster_container);
                                                                        if (tCLayerViewGroup != null) {
                                                                            i9 = R.id.paster_fl_player;
                                                                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.paster_fl_player);
                                                                            if (frameLayout3 != null) {
                                                                                i9 = R.id.question_title;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.question_title);
                                                                                if (textView3 != null) {
                                                                                    i9 = R.id.recyclerView;
                                                                                    HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                                                                                    if (horizontalScrollView != null) {
                                                                                        RelativeLayout relativeLayout = (RelativeLayout) view;
                                                                                        i9 = R.id.sc_ll;
                                                                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.sc_ll);
                                                                                        if (linearLayout2 != null) {
                                                                                            i9 = R.id.tcp_line;
                                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tcp_line);
                                                                                            if (linearLayout3 != null) {
                                                                                                i9 = R.id.tcp_ok;
                                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tcp_ok);
                                                                                                if (textView4 != null) {
                                                                                                    i9 = R.id.time_line;
                                                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.time_line);
                                                                                                    if (linearLayout4 != null) {
                                                                                                        i9 = R.id.title_lay;
                                                                                                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.title_lay);
                                                                                                        if (constraintLayout != null) {
                                                                                                            i9 = R.id.tv_left_back;
                                                                                                            ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.tv_left_back);
                                                                                                            if (imageView8 != null) {
                                                                                                                i9 = R.id.video_progress_view;
                                                                                                                VideoProgressView videoProgressView2 = (VideoProgressView) ViewBindings.findChildViewById(view, R.id.video_progress_view);
                                                                                                                if (videoProgressView2 != null) {
                                                                                                                    i9 = R.id.voice_set;
                                                                                                                    ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, R.id.voice_set);
                                                                                                                    if (imageView9 != null) {
                                                                                                                        i9 = R.id.yes_sure;
                                                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.yes_sure);
                                                                                                                        if (textView5 != null) {
                                                                                                                            return new ActivityVideoEditBinding(relativeLayout, textView, zZRangeSlider, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, textView2, linearLayout, frameLayout, frameLayout2, imageButton, videoProgressView, recyclerView, tCLayerViewGroup, frameLayout3, textView3, horizontalScrollView, relativeLayout, linearLayout2, linearLayout3, textView4, linearLayout4, constraintLayout, imageView8, videoProgressView2, imageView9, textView5);
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
    public static ActivityVideoEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityVideoEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_video_edit, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
