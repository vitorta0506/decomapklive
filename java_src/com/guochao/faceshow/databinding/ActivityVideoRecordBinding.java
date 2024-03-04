package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ComposeRecordBtn;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes2.dex */
public final class ActivityVideoRecordBinding implements ViewBinding {
    @NonNull
    public final ImageView backLl;
    @NonNull
    public final ImageView btnConfirm;
    @NonNull
    public final ImageView btnDeleteLastPart;
    @NonNull
    public final ImageView btnMusicPannel;
    @NonNull
    public final TextView btnOrientation;
    @NonNull
    public final ImageView btnSwitchCamera;
    @NonNull
    public final ImageView btnTorch;
    @NonNull
    public final ComposeRecordBtn composeRecordBtn;
    @NonNull
    public final ImageView cutMusic;
    @NonNull
    public final LinearLayout editLayout;
    @NonNull
    public final LinearLayout faceDongxiao;
    @NonNull
    public final LinearLayout layoutRecordBtns;
    @NonNull
    public final FrameLayout mask;
    @NonNull
    public final ImageView myVideo;
    @NonNull
    public final LinearLayout myVideoLl;
    @NonNull
    public final TextView progressTime;
    @NonNull
    public final TextView questionTitle;
    @NonNull
    public final RadioButton rbFast;
    @NonNull
    public final RadioButton rbFastest;
    @NonNull
    public final RadioButton rbNormal;
    @NonNull
    public final RadioButton rbSlow;
    @NonNull
    public final RadioButton rbSlowest;
    @NonNull
    public final LinearLayout recordLayout;
    @NonNull
    public final RadioGroup rgRecordSpeed;
    @NonNull
    public final RelativeLayout rlPlayRoot;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView snapshot;
    @NonNull
    public final ImageView timeClock;
    @NonNull
    public final TextView timeTv;
    @NonNull
    public final TXCloudVideoView videoView;

    private ActivityVideoRecordBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull TextView textView, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ComposeRecordBtn composeRecordBtn, @NonNull ImageView imageView7, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView8, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioButton radioButton3, @NonNull RadioButton radioButton4, @NonNull RadioButton radioButton5, @NonNull LinearLayout linearLayout5, @NonNull RadioGroup radioGroup, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView4, @NonNull ImageView imageView9, @NonNull TextView textView5, @NonNull TXCloudVideoView tXCloudVideoView) {
        this.rootView = relativeLayout;
        this.backLl = imageView;
        this.btnConfirm = imageView2;
        this.btnDeleteLastPart = imageView3;
        this.btnMusicPannel = imageView4;
        this.btnOrientation = textView;
        this.btnSwitchCamera = imageView5;
        this.btnTorch = imageView6;
        this.composeRecordBtn = composeRecordBtn;
        this.cutMusic = imageView7;
        this.editLayout = linearLayout;
        this.faceDongxiao = linearLayout2;
        this.layoutRecordBtns = linearLayout3;
        this.mask = frameLayout;
        this.myVideo = imageView8;
        this.myVideoLl = linearLayout4;
        this.progressTime = textView2;
        this.questionTitle = textView3;
        this.rbFast = radioButton;
        this.rbFastest = radioButton2;
        this.rbNormal = radioButton3;
        this.rbSlow = radioButton4;
        this.rbSlowest = radioButton5;
        this.recordLayout = linearLayout5;
        this.rgRecordSpeed = radioGroup;
        this.rlPlayRoot = relativeLayout2;
        this.snapshot = textView4;
        this.timeClock = imageView9;
        this.timeTv = textView5;
        this.videoView = tXCloudVideoView;
    }

    @NonNull
    public static ActivityVideoRecordBinding bind(@NonNull View view) {
        int i9 = R.id.back_ll;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_ll);
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
                        i9 = R.id.btn_orientation;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_orientation);
                        if (textView != null) {
                            i9 = R.id.btn_switch_camera;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_switch_camera);
                            if (imageView5 != null) {
                                i9 = R.id.btn_torch;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_torch);
                                if (imageView6 != null) {
                                    i9 = R.id.compose_record_btn;
                                    ComposeRecordBtn composeRecordBtn = (ComposeRecordBtn) ViewBindings.findChildViewById(view, R.id.compose_record_btn);
                                    if (composeRecordBtn != null) {
                                        i9 = R.id.cut_music;
                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(view, R.id.cut_music);
                                        if (imageView7 != null) {
                                            i9 = R.id.edit_layout;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.edit_layout);
                                            if (linearLayout != null) {
                                                i9 = R.id.face_dongxiao;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.face_dongxiao);
                                                if (linearLayout2 != null) {
                                                    i9 = R.id.layout_record_btns;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_record_btns);
                                                    if (linearLayout3 != null) {
                                                        i9 = R.id.mask;
                                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mask);
                                                        if (frameLayout != null) {
                                                            i9 = R.id.my_video;
                                                            ImageView imageView8 = (ImageView) ViewBindings.findChildViewById(view, R.id.my_video);
                                                            if (imageView8 != null) {
                                                                i9 = R.id.my_video_ll;
                                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.my_video_ll);
                                                                if (linearLayout4 != null) {
                                                                    i9 = R.id.progress_time;
                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.progress_time);
                                                                    if (textView2 != null) {
                                                                        i9 = R.id.question_title;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.question_title);
                                                                        if (textView3 != null) {
                                                                            i9 = R.id.rb_fast;
                                                                            RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_fast);
                                                                            if (radioButton != null) {
                                                                                i9 = R.id.rb_fastest;
                                                                                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_fastest);
                                                                                if (radioButton2 != null) {
                                                                                    i9 = R.id.rb_normal;
                                                                                    RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_normal);
                                                                                    if (radioButton3 != null) {
                                                                                        i9 = R.id.rb_slow;
                                                                                        RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_slow);
                                                                                        if (radioButton4 != null) {
                                                                                            i9 = R.id.rb_slowest;
                                                                                            RadioButton radioButton5 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb_slowest);
                                                                                            if (radioButton5 != null) {
                                                                                                i9 = R.id.record_layout;
                                                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.record_layout);
                                                                                                if (linearLayout5 != null) {
                                                                                                    i9 = R.id.rg_record_speed;
                                                                                                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.rg_record_speed);
                                                                                                    if (radioGroup != null) {
                                                                                                        RelativeLayout relativeLayout = (RelativeLayout) view;
                                                                                                        i9 = R.id.snapshot;
                                                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.snapshot);
                                                                                                        if (textView4 != null) {
                                                                                                            i9 = R.id.time_clock;
                                                                                                            ImageView imageView9 = (ImageView) ViewBindings.findChildViewById(view, R.id.time_clock);
                                                                                                            if (imageView9 != null) {
                                                                                                                i9 = R.id.time_tv;
                                                                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.time_tv);
                                                                                                                if (textView5 != null) {
                                                                                                                    i9 = R.id.video_view;
                                                                                                                    TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, R.id.video_view);
                                                                                                                    if (tXCloudVideoView != null) {
                                                                                                                        return new ActivityVideoRecordBinding(relativeLayout, imageView, imageView2, imageView3, imageView4, textView, imageView5, imageView6, composeRecordBtn, imageView7, linearLayout, linearLayout2, linearLayout3, frameLayout, imageView8, linearLayout4, textView2, textView3, radioButton, radioButton2, radioButton3, radioButton4, radioButton5, linearLayout5, radioGroup, relativeLayout, textView4, imageView9, textView5, tXCloudVideoView);
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
    public static ActivityVideoRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityVideoRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_video_record, viewGroup, false);
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
