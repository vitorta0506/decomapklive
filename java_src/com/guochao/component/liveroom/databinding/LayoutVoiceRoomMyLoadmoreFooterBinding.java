package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class LayoutVoiceRoomMyLoadmoreFooterBinding implements ViewBinding {
    @NonNull
    public final LinearLayout loadDone;
    @NonNull
    public final ImageView loading;
    @NonNull
    private final View rootView;
    @NonNull
    public final TextView textTV;

    private LayoutVoiceRoomMyLoadmoreFooterBinding(@NonNull View view, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = view;
        this.loadDone = linearLayout;
        this.loading = imageView;
        this.textTV = textView;
    }

    @NonNull
    public static LayoutVoiceRoomMyLoadmoreFooterBinding bind(@NonNull View view) {
        int i9 = R$id.load_done;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
        if (linearLayout != null) {
            i9 = R$id.loading;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.textTV;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    return new LayoutVoiceRoomMyLoadmoreFooterBinding(view, linearLayout, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutVoiceRoomMyLoadmoreFooterBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R$layout.layout_voice_room_my_loadmore_footer, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
