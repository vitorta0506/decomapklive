package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.guochao.component.liveroom.R$layout;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class ListItemVoiceMemberListTitleBinding implements ViewBinding {
    @NonNull
    private final TextView rootView;
    @NonNull
    public final TextView title;

    private ListItemVoiceMemberListTitleBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = textView;
        this.title = textView2;
    }

    @NonNull
    public static ListItemVoiceMemberListTitleBinding bind(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        TextView textView = (TextView) view;
        return new ListItemVoiceMemberListTitleBinding(textView, textView);
    }

    @NonNull
    public static ListItemVoiceMemberListTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemVoiceMemberListTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.list_item_voice_member_list_title, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TextView getRoot() {
        return this.rootView;
    }
}
