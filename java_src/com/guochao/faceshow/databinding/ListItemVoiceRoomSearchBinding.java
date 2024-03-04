package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ListItemVoiceRoomSearchBinding implements ViewBinding {
    @NonNull
    public final ImageView countryLogo;
    @NonNull
    public final ImageView cover;
    @NonNull
    public final TextView memberCount;
    @NonNull
    public final TextView roomId;
    @NonNull
    public final TextView roomTitle;
    @NonNull
    private final FrameLayout rootView;

    private ListItemVoiceRoomSearchBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.countryLogo = imageView;
        this.cover = imageView2;
        this.memberCount = textView;
        this.roomId = textView2;
        this.roomTitle = textView3;
    }

    @NonNull
    public static ListItemVoiceRoomSearchBinding bind(@NonNull View view) {
        int i9 = R.id.country_logo;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.country_logo);
        if (imageView != null) {
            i9 = R.id.cover;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.cover);
            if (imageView2 != null) {
                i9 = R.id.member_count;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.member_count);
                if (textView != null) {
                    i9 = R.id.room_id;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.room_id);
                    if (textView2 != null) {
                        i9 = R.id.room_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.room_title);
                        if (textView3 != null) {
                            return new ListItemVoiceRoomSearchBinding((FrameLayout) view, imageView, imageView2, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemVoiceRoomSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemVoiceRoomSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_voice_room_search, viewGroup, false);
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
