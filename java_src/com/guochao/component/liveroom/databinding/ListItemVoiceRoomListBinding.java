package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes3.dex */
public final class ListItemVoiceRoomListBinding implements ViewBinding {
    @NonNull
    public final ImageView badge;
    @NonNull
    public final ImageView countryLogo;
    @NonNull
    public final ImageView cover;
    @NonNull
    public final RelativeLayout lockRL;
    @NonNull
    public final TextView memberCount;
    @NonNull
    public final LinearLayout micCountArea;
    @NonNull
    public final TextView mineTV;
    @NonNull
    public final TextView onlineTime;
    @NonNull
    public final TextView roomTitle;
    @NonNull
    private final CardView rootView;
    @NonNull
    public final LinearLayout seatArea;
    @NonNull
    public final SvgaImageViewV2 svga;
    @NonNull
    public final TextView tagsArea;

    private ListItemVoiceRoomListBinding(@NonNull CardView cardView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout2, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull TextView textView5) {
        this.rootView = cardView;
        this.badge = imageView;
        this.countryLogo = imageView2;
        this.cover = imageView3;
        this.lockRL = relativeLayout;
        this.memberCount = textView;
        this.micCountArea = linearLayout;
        this.mineTV = textView2;
        this.onlineTime = textView3;
        this.roomTitle = textView4;
        this.seatArea = linearLayout2;
        this.svga = svgaImageViewV2;
        this.tagsArea = textView5;
    }

    @NonNull
    public static ListItemVoiceRoomListBinding bind(@NonNull View view) {
        int i9 = R$id.badge;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.country_logo;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView2 != null) {
                i9 = R$id.cover;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView3 != null) {
                    i9 = R$id.lockRL;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i9);
                    if (relativeLayout != null) {
                        i9 = R$id.member_count;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView != null) {
                            i9 = R$id.mic_count_area;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                            if (linearLayout != null) {
                                i9 = R$id.mineTV;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                                if (textView2 != null) {
                                    i9 = R$id.online_time;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                    if (textView3 != null) {
                                        i9 = R$id.room_title;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i9);
                                        if (textView4 != null) {
                                            i9 = R$id.seat_area;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                            if (linearLayout2 != null) {
                                                i9 = R$id.svga;
                                                SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, i9);
                                                if (svgaImageViewV2 != null) {
                                                    i9 = R$id.tags_area;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                    if (textView5 != null) {
                                                        return new ListItemVoiceRoomListBinding((CardView) view, imageView, imageView2, imageView3, relativeLayout, textView, linearLayout, textView2, textView3, textView4, linearLayout2, svgaImageViewV2, textView5);
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
    public static ListItemVoiceRoomListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemVoiceRoomListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.list_item_voice_room_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CardView getRoot() {
        return this.rootView;
    }
}
