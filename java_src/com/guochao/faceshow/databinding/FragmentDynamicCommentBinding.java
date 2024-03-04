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
import com.guochao.faceshow.aaspring.views.AtFriendEditText;
/* loaded from: classes2.dex */
public final class FragmentDynamicCommentBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bottom;
    @NonNull
    public final TextView btnAtPeople;
    @NonNull
    public final ImageView btnSend;
    @NonNull
    public final ImageView cancel;
    @NonNull
    public final TextView commentCount;
    @NonNull
    public final AtFriendEditText input;
    @NonNull
    public final LinearLayout mainLayout;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final View space;
    @NonNull
    public final LinearLayout title;

    private FragmentDynamicCommentBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull AtFriendEditText atFriendEditText, @NonNull LinearLayout linearLayout3, @NonNull View view, @NonNull LinearLayout linearLayout4) {
        this.rootView = linearLayout;
        this.bottom = linearLayout2;
        this.btnAtPeople = textView;
        this.btnSend = imageView;
        this.cancel = imageView2;
        this.commentCount = textView2;
        this.input = atFriendEditText;
        this.mainLayout = linearLayout3;
        this.space = view;
        this.title = linearLayout4;
    }

    @NonNull
    public static FragmentDynamicCommentBinding bind(@NonNull View view) {
        int i9 = R.id.bottom;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom);
        if (linearLayout != null) {
            i9 = R.id.btn_at_people;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_at_people);
            if (textView != null) {
                i9 = R.id.btn_send;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_send);
                if (imageView != null) {
                    i9 = R.id.cancel;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
                    if (imageView2 != null) {
                        i9 = R.id.comment_count;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.comment_count);
                        if (textView2 != null) {
                            i9 = R.id.input;
                            AtFriendEditText atFriendEditText = (AtFriendEditText) ViewBindings.findChildViewById(view, R.id.input);
                            if (atFriendEditText != null) {
                                LinearLayout linearLayout2 = (LinearLayout) view;
                                i9 = R.id.space;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.space);
                                if (findChildViewById != null) {
                                    i9 = R.id.title;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.title);
                                    if (linearLayout3 != null) {
                                        return new FragmentDynamicCommentBinding(linearLayout2, linearLayout, textView, imageView, imageView2, textView2, atFriendEditText, linearLayout2, findChildViewById, linearLayout3);
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
    public static FragmentDynamicCommentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentDynamicCommentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_dynamic_comment, viewGroup, false);
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
