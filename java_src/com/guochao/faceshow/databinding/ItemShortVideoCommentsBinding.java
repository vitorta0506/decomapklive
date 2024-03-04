package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes2.dex */
public final class ItemShortVideoCommentsBinding implements ViewBinding {
    @NonNull
    public final TextView author;
    @NonNull
    public final TextView authorName;
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final TextView content;
    @NonNull
    public final LinearLayout hotDivider;
    @NonNull
    public final ImageView iconLike;
    @NonNull
    public final LinearLayout item;
    @NonNull
    public final LinearLayout likeArea;
    @NonNull
    public final TextView likeCount;
    @NonNull
    public final TextView replyAuthor;
    @NonNull
    public final TextView replyAuthorName;
    @NonNull
    public final HeadPortraitView replyAvatar;
    @NonNull
    public final TextView replyContent;
    @NonNull
    public final LinearLayout replyItem;
    @NonNull
    public final TextView replySendTime;
    @NonNull
    public final VipIndicatorView replyVipIndicator;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView sendTime;
    @NonNull
    public final VipIndicatorView vipIndicator;

    private ItemShortVideoCommentsBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull HeadPortraitView headPortraitView2, @NonNull TextView textView7, @NonNull LinearLayout linearLayout5, @NonNull TextView textView8, @NonNull VipIndicatorView vipIndicatorView, @NonNull TextView textView9, @NonNull VipIndicatorView vipIndicatorView2) {
        this.rootView = linearLayout;
        this.author = textView;
        this.authorName = textView2;
        this.avatarView = headPortraitView;
        this.content = textView3;
        this.hotDivider = linearLayout2;
        this.iconLike = imageView;
        this.item = linearLayout3;
        this.likeArea = linearLayout4;
        this.likeCount = textView4;
        this.replyAuthor = textView5;
        this.replyAuthorName = textView6;
        this.replyAvatar = headPortraitView2;
        this.replyContent = textView7;
        this.replyItem = linearLayout5;
        this.replySendTime = textView8;
        this.replyVipIndicator = vipIndicatorView;
        this.sendTime = textView9;
        this.vipIndicator = vipIndicatorView2;
    }

    @NonNull
    public static ItemShortVideoCommentsBinding bind(@NonNull View view) {
        int i9 = R.id.author;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.author);
        if (textView != null) {
            i9 = R.id.author_name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.author_name);
            if (textView2 != null) {
                i9 = R.id.avatar_view;
                HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
                if (headPortraitView != null) {
                    i9 = R.id.content;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                    if (textView3 != null) {
                        i9 = R.id.hot_divider;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.hot_divider);
                        if (linearLayout != null) {
                            i9 = R.id.icon_like;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_like);
                            if (imageView != null) {
                                LinearLayout linearLayout2 = (LinearLayout) view;
                                i9 = R.id.like_area;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.like_area);
                                if (linearLayout3 != null) {
                                    i9 = R.id.like_count;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.like_count);
                                    if (textView4 != null) {
                                        i9 = R.id.reply_author;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.reply_author);
                                        if (textView5 != null) {
                                            i9 = R.id.reply_author_name;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.reply_author_name);
                                            if (textView6 != null) {
                                                i9 = R.id.reply_avatar;
                                                HeadPortraitView headPortraitView2 = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.reply_avatar);
                                                if (headPortraitView2 != null) {
                                                    i9 = R.id.reply_content;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.reply_content);
                                                    if (textView7 != null) {
                                                        i9 = R.id.reply_item;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.reply_item);
                                                        if (linearLayout4 != null) {
                                                            i9 = R.id.reply_send_time;
                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.reply_send_time);
                                                            if (textView8 != null) {
                                                                i9 = R.id.reply_vip_indicator;
                                                                VipIndicatorView vipIndicatorView = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.reply_vip_indicator);
                                                                if (vipIndicatorView != null) {
                                                                    i9 = R.id.send_time;
                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.send_time);
                                                                    if (textView9 != null) {
                                                                        i9 = R.id.vip_indicator;
                                                                        VipIndicatorView vipIndicatorView2 = (VipIndicatorView) ViewBindings.findChildViewById(view, R.id.vip_indicator);
                                                                        if (vipIndicatorView2 != null) {
                                                                            return new ItemShortVideoCommentsBinding(linearLayout2, textView, textView2, headPortraitView, textView3, linearLayout, imageView, linearLayout2, linearLayout3, textView4, textView5, textView6, headPortraitView2, textView7, linearLayout4, textView8, vipIndicatorView, textView9, vipIndicatorView2);
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
    public static ItemShortVideoCommentsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemShortVideoCommentsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_short_video_comments, viewGroup, false);
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
