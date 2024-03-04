package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class SharePopLyBinding implements ViewBinding {
    @NonNull
    public final LinearLayout addBlack;
    @NonNull
    public final LinearLayout copyLink;
    @NonNull
    public final LinearLayout deleteVideo;
    @NonNull
    public final LinearLayout facebook;
    @NonNull
    public final LinearLayout inTune;
    @NonNull
    public final LinearLayout loginBottomLayout;
    @NonNull
    public final LinearLayout loginTopLayout;
    @NonNull
    public final LinearLayout more;
    @NonNull
    public final LinearLayout report;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout saveBtn;
    @NonNull
    public final LinearLayout shareInstagram;
    @NonNull
    public final LinearLayout shareTitter;
    @NonNull
    public final LinearLayout shareYoutube;
    @NonNull
    public final LinearLayout sina;
    @NonNull
    public final LinearLayout uploadVideo;
    @NonNull
    public final LinearLayout wechat;
    @NonNull
    public final LinearLayout wechatMoment;
    @NonNull
    public final LinearLayout whithTheBox;

    private SharePopLyBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull LinearLayout linearLayout9, @NonNull LinearLayout linearLayout10, @NonNull LinearLayout linearLayout11, @NonNull LinearLayout linearLayout12, @NonNull LinearLayout linearLayout13, @NonNull LinearLayout linearLayout14, @NonNull LinearLayout linearLayout15, @NonNull LinearLayout linearLayout16, @NonNull LinearLayout linearLayout17, @NonNull LinearLayout linearLayout18, @NonNull LinearLayout linearLayout19) {
        this.rootView = linearLayout;
        this.addBlack = linearLayout2;
        this.copyLink = linearLayout3;
        this.deleteVideo = linearLayout4;
        this.facebook = linearLayout5;
        this.inTune = linearLayout6;
        this.loginBottomLayout = linearLayout7;
        this.loginTopLayout = linearLayout8;
        this.more = linearLayout9;
        this.report = linearLayout10;
        this.saveBtn = linearLayout11;
        this.shareInstagram = linearLayout12;
        this.shareTitter = linearLayout13;
        this.shareYoutube = linearLayout14;
        this.sina = linearLayout15;
        this.uploadVideo = linearLayout16;
        this.wechat = linearLayout17;
        this.wechatMoment = linearLayout18;
        this.whithTheBox = linearLayout19;
    }

    @NonNull
    public static SharePopLyBinding bind(@NonNull View view) {
        int i9 = R.id.add_black;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.add_black);
        if (linearLayout != null) {
            i9 = R.id.copy_link;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.copy_link);
            if (linearLayout2 != null) {
                i9 = R.id.delete_video;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.delete_video);
                if (linearLayout3 != null) {
                    i9 = R.id.facebook;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.facebook);
                    if (linearLayout4 != null) {
                        i9 = R.id.in_tune;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.in_tune);
                        if (linearLayout5 != null) {
                            i9 = R.id.login_bottom_layout;
                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.login_bottom_layout);
                            if (linearLayout6 != null) {
                                i9 = R.id.login_top_layout;
                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.login_top_layout);
                                if (linearLayout7 != null) {
                                    i9 = R.id.more;
                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.more);
                                    if (linearLayout8 != null) {
                                        i9 = R.id.report;
                                        LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.report);
                                        if (linearLayout9 != null) {
                                            i9 = R.id.save_btn;
                                            LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.save_btn);
                                            if (linearLayout10 != null) {
                                                i9 = R.id.share_instagram;
                                                LinearLayout linearLayout11 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.share_instagram);
                                                if (linearLayout11 != null) {
                                                    i9 = R.id.share_titter;
                                                    LinearLayout linearLayout12 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.share_titter);
                                                    if (linearLayout12 != null) {
                                                        i9 = R.id.share_youtube;
                                                        LinearLayout linearLayout13 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.share_youtube);
                                                        if (linearLayout13 != null) {
                                                            i9 = R.id.sina;
                                                            LinearLayout linearLayout14 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.sina);
                                                            if (linearLayout14 != null) {
                                                                i9 = R.id.upload_video;
                                                                LinearLayout linearLayout15 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.upload_video);
                                                                if (linearLayout15 != null) {
                                                                    i9 = R.id.wechat;
                                                                    LinearLayout linearLayout16 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.wechat);
                                                                    if (linearLayout16 != null) {
                                                                        i9 = R.id.wechat_moment;
                                                                        LinearLayout linearLayout17 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.wechat_moment);
                                                                        if (linearLayout17 != null) {
                                                                            i9 = R.id.whith_the_box;
                                                                            LinearLayout linearLayout18 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.whith_the_box);
                                                                            if (linearLayout18 != null) {
                                                                                return new SharePopLyBinding((LinearLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, linearLayout11, linearLayout12, linearLayout13, linearLayout14, linearLayout15, linearLayout16, linearLayout17, linearLayout18);
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
    public static SharePopLyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static SharePopLyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.share_pop_ly, viewGroup, false);
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
