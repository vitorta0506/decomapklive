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
/* loaded from: classes2.dex */
public final class ListItemSystemNotificationBinding implements ViewBinding {
    @NonNull
    public final TextView date;
    @NonNull
    public final ImageView icon;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout subArea;
    @NonNull
    public final TextView subTitle;
    @NonNull
    public final TextView title;
    @NonNull
    public final TextView unreadNum;

    private ListItemSystemNotificationBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.date = textView;
        this.icon = imageView;
        this.subArea = linearLayout;
        this.subTitle = textView2;
        this.title = textView3;
        this.unreadNum = textView4;
    }

    @NonNull
    public static ListItemSystemNotificationBinding bind(@NonNull View view) {
        int i9 = R.id.date;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.date);
        if (textView != null) {
            i9 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
            if (imageView != null) {
                i9 = R.id.sub_area;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.sub_area);
                if (linearLayout != null) {
                    i9 = R.id.sub_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sub_title);
                    if (textView2 != null) {
                        i9 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView3 != null) {
                            i9 = R.id.unread_num;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.unread_num);
                            if (textView4 != null) {
                                return new ListItemSystemNotificationBinding((FrameLayout) view, textView, imageView, linearLayout, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemSystemNotificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemSystemNotificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_system_notification, viewGroup, false);
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
