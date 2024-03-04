package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HollowTextView;
import com.guochao.faceshow.views.Love;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.opensource.svgaplayer.SVGAImageView;
import com.tencent.rtmp.ui.TXCloudVideoView;
/* loaded from: classes2.dex */
public final class VideoListItemBinding implements ViewBinding {
    @NonNull
    public final FrameLayout animViewLay;
    @NonNull
    public final LinearLayout btnLl;
    @NonNull
    public final ImageView comments;
    @NonNull
    public final TextView commentsNum;
    @NonNull
    public final FrameLayout danmuArea;
    @NonNull
    public final ImageView gift;
    @NonNull
    public final CardView isFeature;
    @NonNull
    public final RelativeLayout itemLayout;
    @NonNull
    public final ImageView more;
    @NonNull
    public final FrameLayout musicArea;
    @NonNull
    public final ImageView musicBg;
    @NonNull
    public final NormalCircleImageView musicRl;
    @NonNull
    public final Love periscopeLayout;
    @NonNull
    public final ImageButton playBt;
    @NonNull
    public final TextView praiseNum;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final SVGAImageView sVGAImageView;
    @NonNull
    public final LinearLayout saySomething;
    @NonNull
    public final TextView shareNum;
    @NonNull
    public final LinearLayout tips;
    @NonNull
    public final HollowTextView tvFeature;
    @NonNull
    public final LinearLayout tvLl;
    @NonNull
    public final TXCloudVideoView txCloudVideoView;
    @NonNull
    public final ImageView videoCover;
    @NonNull
    public final ProgressBar videoProgress;
    @NonNull
    public final LinearLayout zanArea;

    private VideoListItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView2, @NonNull CardView cardView, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView4, @NonNull NormalCircleImageView normalCircleImageView, @NonNull Love love, @NonNull ImageButton imageButton, @NonNull TextView textView2, @NonNull SVGAImageView sVGAImageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3, @NonNull HollowTextView hollowTextView, @NonNull LinearLayout linearLayout4, @NonNull TXCloudVideoView tXCloudVideoView, @NonNull ImageView imageView5, @NonNull ProgressBar progressBar, @NonNull LinearLayout linearLayout5) {
        this.rootView = relativeLayout;
        this.animViewLay = frameLayout;
        this.btnLl = linearLayout;
        this.comments = imageView;
        this.commentsNum = textView;
        this.danmuArea = frameLayout2;
        this.gift = imageView2;
        this.isFeature = cardView;
        this.itemLayout = relativeLayout2;
        this.more = imageView3;
        this.musicArea = frameLayout3;
        this.musicBg = imageView4;
        this.musicRl = normalCircleImageView;
        this.periscopeLayout = love;
        this.playBt = imageButton;
        this.praiseNum = textView2;
        this.sVGAImageView = sVGAImageView;
        this.saySomething = linearLayout2;
        this.shareNum = textView3;
        this.tips = linearLayout3;
        this.tvFeature = hollowTextView;
        this.tvLl = linearLayout4;
        this.txCloudVideoView = tXCloudVideoView;
        this.videoCover = imageView5;
        this.videoProgress = progressBar;
        this.zanArea = linearLayout5;
    }

    @NonNull
    public static VideoListItemBinding bind(@NonNull View view) {
        int i9 = R.id.anim_view_lay;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.anim_view_lay);
        if (frameLayout != null) {
            i9 = R.id.btn_ll;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btn_ll);
            if (linearLayout != null) {
                i9 = R.id.comments;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.comments);
                if (imageView != null) {
                    i9 = R.id.comments_num;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comments_num);
                    if (textView != null) {
                        i9 = R.id.danmu_area;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.danmu_area);
                        if (frameLayout2 != null) {
                            i9 = R.id.gift;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.gift);
                            if (imageView2 != null) {
                                i9 = R.id.is_feature;
                                CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.is_feature);
                                if (cardView != null) {
                                    RelativeLayout relativeLayout = (RelativeLayout) view;
                                    i9 = R.id.more;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.more);
                                    if (imageView3 != null) {
                                        i9 = R.id.music_area;
                                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.music_area);
                                        if (frameLayout3 != null) {
                                            i9 = R.id.music_bg;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.music_bg);
                                            if (imageView4 != null) {
                                                i9 = R.id.music_rl;
                                                NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.music_rl);
                                                if (normalCircleImageView != null) {
                                                    i9 = R.id.periscopeLayout;
                                                    Love love = (Love) ViewBindings.findChildViewById(view, R.id.periscopeLayout);
                                                    if (love != null) {
                                                        i9 = R.id.play_bt;
                                                        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.play_bt);
                                                        if (imageButton != null) {
                                                            i9 = R.id.praise_num;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.praise_num);
                                                            if (textView2 != null) {
                                                                i9 = R.id.sVGAImageView;
                                                                SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.sVGAImageView);
                                                                if (sVGAImageView != null) {
                                                                    i9 = R.id.say_something;
                                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.say_something);
                                                                    if (linearLayout2 != null) {
                                                                        i9 = R.id.share_num;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.share_num);
                                                                        if (textView3 != null) {
                                                                            i9 = R.id.tips;
                                                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tips);
                                                                            if (linearLayout3 != null) {
                                                                                i9 = R.id.tv_feature;
                                                                                HollowTextView hollowTextView = (HollowTextView) ViewBindings.findChildViewById(view, R.id.tv_feature);
                                                                                if (hollowTextView != null) {
                                                                                    i9 = R.id.tv_ll;
                                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tv_ll);
                                                                                    if (linearLayout4 != null) {
                                                                                        i9 = R.id.txCloudVideoView;
                                                                                        TXCloudVideoView tXCloudVideoView = (TXCloudVideoView) ViewBindings.findChildViewById(view, R.id.txCloudVideoView);
                                                                                        if (tXCloudVideoView != null) {
                                                                                            i9 = R.id.video_cover;
                                                                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.video_cover);
                                                                                            if (imageView5 != null) {
                                                                                                i9 = R.id.video_progress;
                                                                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.video_progress);
                                                                                                if (progressBar != null) {
                                                                                                    i9 = R.id.zan_area;
                                                                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.zan_area);
                                                                                                    if (linearLayout5 != null) {
                                                                                                        return new VideoListItemBinding(relativeLayout, frameLayout, linearLayout, imageView, textView, frameLayout2, imageView2, cardView, relativeLayout, imageView3, frameLayout3, imageView4, normalCircleImageView, love, imageButton, textView2, sVGAImageView, linearLayout2, textView3, linearLayout3, hollowTextView, linearLayout4, tXCloudVideoView, imageView5, progressBar, linearLayout5);
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
    public static VideoListItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static VideoListItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.video_list_item, viewGroup, false);
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
