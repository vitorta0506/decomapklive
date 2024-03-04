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
import com.guochao.faceshow.aaspring.views.ExpandableTextView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TopicAndAtTextView;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class ListItemFriendCircleBinding implements ViewBinding {
    @NonNull
    public final TextView address;
    @NonNull
    public final LinearLayout addressArea;
    @NonNull
    public final ImageView addressIcon;
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final LinearLayout btnArea;
    @NonNull
    public final LinearLayout commentArea;
    @NonNull
    public final TextView commentCountTv;
    @NonNull
    public final LinearLayout contentLayout;
    @NonNull
    public final TextView expand;
    @NonNull
    public final ExpandableTextView expandContent;
    @NonNull
    public final SvgaImageViewV2 focusSVGA;
    @NonNull
    public final ImageView iconFocus;
    @NonNull
    public final ImageView iconPrivateLock;
    @NonNull
    public final ImageView iconPublishFail;
    @NonNull
    public final LinearLayout isFriend;
    @NonNull
    public final LinearLayout likeArea;
    @NonNull
    public final TextView likeCountTv;
    @NonNull
    public final SVGAImageView likeImageView;
    @NonNull
    public final ImageView likeImageViewBg;
    @NonNull
    public final TextView likeTips;
    @NonNull
    public final LinearLayout likeUserListArea;
    @NonNull
    public final FrameLayout mediaArea;
    @NonNull
    public final ImageView more;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TopicAndAtTextView textContent;
    @NonNull
    public final TextView time;
    @NonNull
    public final LinearLayout timeAddrArea;
    @NonNull
    public final TextView userName;

    private ListItemFriendCircleBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull HeadPortraitView headPortraitView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull ExpandableTextView expandableTextView, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull TextView textView4, @NonNull SVGAImageView sVGAImageView, @NonNull ImageView imageView5, @NonNull TextView textView5, @NonNull LinearLayout linearLayout7, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView6, @NonNull TopicAndAtTextView topicAndAtTextView, @NonNull TextView textView6, @NonNull LinearLayout linearLayout8, @NonNull TextView textView7) {
        this.rootView = frameLayout;
        this.address = textView;
        this.addressArea = linearLayout;
        this.addressIcon = imageView;
        this.avatarView = headPortraitView;
        this.btnArea = linearLayout2;
        this.commentArea = linearLayout3;
        this.commentCountTv = textView2;
        this.contentLayout = linearLayout4;
        this.expand = textView3;
        this.expandContent = expandableTextView;
        this.focusSVGA = svgaImageViewV2;
        this.iconFocus = imageView2;
        this.iconPrivateLock = imageView3;
        this.iconPublishFail = imageView4;
        this.isFriend = linearLayout5;
        this.likeArea = linearLayout6;
        this.likeCountTv = textView4;
        this.likeImageView = sVGAImageView;
        this.likeImageViewBg = imageView5;
        this.likeTips = textView5;
        this.likeUserListArea = linearLayout7;
        this.mediaArea = frameLayout2;
        this.more = imageView6;
        this.textContent = topicAndAtTextView;
        this.time = textView6;
        this.timeAddrArea = linearLayout8;
        this.userName = textView7;
    }

    @NonNull
    public static ListItemFriendCircleBinding bind(@NonNull View view) {
        int i9 = R.id.address;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.address);
        if (textView != null) {
            i9 = R.id.address_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.address_area);
            if (linearLayout != null) {
                i9 = R.id.address_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.address_icon);
                if (imageView != null) {
                    i9 = R.id.avatar_view;
                    HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
                    if (headPortraitView != null) {
                        i9 = R.id.btn_area;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.btn_area);
                        if (linearLayout2 != null) {
                            i9 = R.id.comment_area;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.comment_area);
                            if (linearLayout3 != null) {
                                i9 = R.id.comment_count_tv;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_count_tv);
                                if (textView2 != null) {
                                    i9 = R.id.content_layout;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_layout);
                                    if (linearLayout4 != null) {
                                        i9 = R.id.expand;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.expand);
                                        if (textView3 != null) {
                                            i9 = R.id.expand_content;
                                            ExpandableTextView expandableTextView = (ExpandableTextView) ViewBindings.findChildViewById(view, R.id.expand_content);
                                            if (expandableTextView != null) {
                                                i9 = R.id.focusSVGA;
                                                SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.focusSVGA);
                                                if (svgaImageViewV2 != null) {
                                                    i9 = R.id.icon_focus;
                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_focus);
                                                    if (imageView2 != null) {
                                                        i9 = R.id.icon_private_lock;
                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_private_lock);
                                                        if (imageView3 != null) {
                                                            i9 = R.id.icon_publish_fail;
                                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_publish_fail);
                                                            if (imageView4 != null) {
                                                                i9 = R.id.is_friend;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.is_friend);
                                                                if (linearLayout5 != null) {
                                                                    i9 = R.id.like_area;
                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.like_area);
                                                                    if (linearLayout6 != null) {
                                                                        i9 = R.id.like_count_tv;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.like_count_tv);
                                                                        if (textView4 != null) {
                                                                            i9 = R.id.like_image_view;
                                                                            SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.like_image_view);
                                                                            if (sVGAImageView != null) {
                                                                                i9 = R.id.like_image_view_bg;
                                                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.like_image_view_bg);
                                                                                if (imageView5 != null) {
                                                                                    i9 = R.id.like_tips;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.like_tips);
                                                                                    if (textView5 != null) {
                                                                                        i9 = R.id.like_user_list_area;
                                                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.like_user_list_area);
                                                                                        if (linearLayout7 != null) {
                                                                                            i9 = R.id.media_area;
                                                                                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.media_area);
                                                                                            if (frameLayout != null) {
                                                                                                i9 = R.id.more;
                                                                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.more);
                                                                                                if (imageView6 != null) {
                                                                                                    i9 = R.id.text_content;
                                                                                                    TopicAndAtTextView topicAndAtTextView = (TopicAndAtTextView) ViewBindings.findChildViewById(view, R.id.text_content);
                                                                                                    if (topicAndAtTextView != null) {
                                                                                                        i9 = R.id.time;
                                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                                                                                                        if (textView6 != null) {
                                                                                                            i9 = R.id.time_addr_area;
                                                                                                            LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.time_addr_area);
                                                                                                            if (linearLayout8 != null) {
                                                                                                                i9 = R.id.user_name;
                                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                                                                                                if (textView7 != null) {
                                                                                                                    return new ListItemFriendCircleBinding((FrameLayout) view, textView, linearLayout, imageView, headPortraitView, linearLayout2, linearLayout3, textView2, linearLayout4, textView3, expandableTextView, svgaImageViewV2, imageView2, imageView3, imageView4, linearLayout5, linearLayout6, textView4, sVGAImageView, imageView5, textView5, linearLayout7, frameLayout, imageView6, topicAndAtTextView, textView6, linearLayout8, textView7);
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
    public static ListItemFriendCircleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemFriendCircleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_friend_circle, viewGroup, false);
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
