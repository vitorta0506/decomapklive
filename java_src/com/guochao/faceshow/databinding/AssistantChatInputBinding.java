package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class AssistantChatInputBinding implements ViewBinding {
    @NonNull
    public final TextView assistantBtnSend;
    @NonNull
    public final RelativeLayout assistantChangeBtnLy;
    @NonNull
    public final ImageView assistantIconModelChange;
    @NonNull
    public final EditText assistantInputEditText;
    @NonNull
    public final ImageView assistantPhotoIm;
    @NonNull
    public final ImageView assistantTypeFaqIcon;
    @NonNull
    public final RelativeLayout assistantTypeFaqLy;
    @NonNull
    public final TextView assistantTypeFaqShowText;
    @NonNull
    public final LinearLayout assistantTypeInputLy;
    @NonNull
    private final RelativeLayout rootView;

    private AssistantChatInputBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView2, @NonNull LinearLayout linearLayout) {
        this.rootView = relativeLayout;
        this.assistantBtnSend = textView;
        this.assistantChangeBtnLy = relativeLayout2;
        this.assistantIconModelChange = imageView;
        this.assistantInputEditText = editText;
        this.assistantPhotoIm = imageView2;
        this.assistantTypeFaqIcon = imageView3;
        this.assistantTypeFaqLy = relativeLayout3;
        this.assistantTypeFaqShowText = textView2;
        this.assistantTypeInputLy = linearLayout;
    }

    @NonNull
    public static AssistantChatInputBinding bind(@NonNull View view) {
        int i9 = R.id.assistant_btn_send;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.assistant_btn_send);
        if (textView != null) {
            i9 = R.id.assistant_change_btn_ly;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.assistant_change_btn_ly);
            if (relativeLayout != null) {
                i9 = R.id.assistant_icon_model_change;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.assistant_icon_model_change);
                if (imageView != null) {
                    i9 = R.id.assistant_input_edit_text;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.assistant_input_edit_text);
                    if (editText != null) {
                        i9 = R.id.assistant_photo_im;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.assistant_photo_im);
                        if (imageView2 != null) {
                            i9 = R.id.assistant_type_faq_icon;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.assistant_type_faq_icon);
                            if (imageView3 != null) {
                                i9 = R.id.assistant_type_faq_ly;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.assistant_type_faq_ly);
                                if (relativeLayout2 != null) {
                                    i9 = R.id.assistant_type_faq_show_text;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.assistant_type_faq_show_text);
                                    if (textView2 != null) {
                                        i9 = R.id.assistant_type_input_ly;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.assistant_type_input_ly);
                                        if (linearLayout != null) {
                                            return new AssistantChatInputBinding((RelativeLayout) view, textView, relativeLayout, imageView, editText, imageView2, imageView3, relativeLayout2, textView2, linearLayout);
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
    public static AssistantChatInputBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AssistantChatInputBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.assistant_chat_input, viewGroup, false);
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
