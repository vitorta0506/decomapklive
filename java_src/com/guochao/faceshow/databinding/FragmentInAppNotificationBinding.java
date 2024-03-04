package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentInAppNotificationBinding implements ViewBinding {
    @NonNull
    public final TextView content;
    @NonNull
    public final ImageView icon;
    @NonNull
    public final CardView notificationArea;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView title;

    private FragmentInAppNotificationBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull CardView cardView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.content = textView;
        this.icon = imageView;
        this.notificationArea = cardView;
        this.title = textView2;
    }

    @NonNull
    public static FragmentInAppNotificationBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i9 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
            if (imageView != null) {
                i9 = R.id.notification_area;
                CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.notification_area);
                if (cardView != null) {
                    i9 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        return new FragmentInAppNotificationBinding((FrameLayout) view, textView, imageView, cardView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentInAppNotificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentInAppNotificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_in_app_notification, viewGroup, false);
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
