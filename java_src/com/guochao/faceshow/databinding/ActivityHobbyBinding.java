package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import me.gujun.android.taggroup.TagGroup;
/* loaded from: classes2.dex */
public final class ActivityHobbyBinding implements ViewBinding {
    @NonNull
    public final ImageView ivAddTag;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TagGroup tagHobby;
    @NonNull
    public final TagGroup tagSelectedLabel;

    private ActivityHobbyBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TagGroup tagGroup, @NonNull TagGroup tagGroup2) {
        this.rootView = linearLayout;
        this.ivAddTag = imageView;
        this.tagHobby = tagGroup;
        this.tagSelectedLabel = tagGroup2;
    }

    @NonNull
    public static ActivityHobbyBinding bind(@NonNull View view) {
        int i9 = R.id.ivAddTag;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivAddTag);
        if (imageView != null) {
            i9 = R.id.tagHobby;
            TagGroup tagGroup = (TagGroup) ViewBindings.findChildViewById(view, R.id.tagHobby);
            if (tagGroup != null) {
                i9 = R.id.tagSelectedLabel;
                TagGroup tagGroup2 = (TagGroup) ViewBindings.findChildViewById(view, R.id.tagSelectedLabel);
                if (tagGroup2 != null) {
                    return new ActivityHobbyBinding((LinearLayout) view, imageView, tagGroup, tagGroup2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityHobbyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityHobbyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_hobby, viewGroup, false);
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
