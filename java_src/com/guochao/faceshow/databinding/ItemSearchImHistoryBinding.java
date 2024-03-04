package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class ItemSearchImHistoryBinding implements ViewBinding {
    @NonNull
    public final TextView chatRecord;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView timeHistory;
    @NonNull
    public final NormalCircleImageView userAvatar;
    @NonNull
    public final View userDivider;
    @NonNull
    public final NormalCircleImageView userFlag;
    @NonNull
    public final TextView userName;

    private ItemSearchImHistoryBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull NormalCircleImageView normalCircleImageView, @NonNull View view, @NonNull NormalCircleImageView normalCircleImageView2, @NonNull TextView textView3) {
        this.rootView = relativeLayout;
        this.chatRecord = textView;
        this.timeHistory = textView2;
        this.userAvatar = normalCircleImageView;
        this.userDivider = view;
        this.userFlag = normalCircleImageView2;
        this.userName = textView3;
    }

    @NonNull
    public static ItemSearchImHistoryBinding bind(@NonNull View view) {
        int i9 = R.id.chat_record;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.chat_record);
        if (textView != null) {
            i9 = R.id.time_history;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.time_history);
            if (textView2 != null) {
                i9 = R.id.user_avatar;
                NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_avatar);
                if (normalCircleImageView != null) {
                    i9 = R.id.user_divider;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.user_divider);
                    if (findChildViewById != null) {
                        i9 = R.id.user_flag;
                        NormalCircleImageView normalCircleImageView2 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.user_flag);
                        if (normalCircleImageView2 != null) {
                            i9 = R.id.user_name;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                            if (textView3 != null) {
                                return new ItemSearchImHistoryBinding((RelativeLayout) view, textView, textView2, normalCircleImageView, findChildViewById, normalCircleImageView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemSearchImHistoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchImHistoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_search_im_history, viewGroup, false);
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
