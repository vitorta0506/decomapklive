package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.chat.models.TrtcTextMessage;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TranslateUtils;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B#\b\u0016\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u000e\u0010+\u001a\u00020,2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u0003H\u0007R\u001e\u0010\f\u001a\u00020\u00038\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0004R\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001e\u0010\"\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0013\"\u0004\b$\u0010\u0015R\u001e\u0010%\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0013\"\u0004\b'\u0010\u0015R\u001e\u0010(\u001a\u00020\u00038\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u000e\"\u0004\b*\u0010\u0004¨\u0006/"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "context", "Landroid/content/Context;", "layoutId", "", "parent", "Landroid/view/ViewGroup;", "(Landroid/content/Context;ILandroid/view/ViewGroup;)V", "backgroundView", "getBackgroundView", "()Landroid/view/View;", "setBackgroundView", "contentTextView", "Landroid/widget/TextView;", "getContentTextView", "()Landroid/widget/TextView;", "setContentTextView", "(Landroid/widget/TextView;)V", "loadingView", "Landroid/widget/ImageView;", "getLoadingView", "()Landroid/widget/ImageView;", "setLoadingView", "(Landroid/widget/ImageView;)V", "message", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;", "getMessage", "()Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;", "setMessage", "(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V", "translateButton", "getTranslateButton", "setTranslateButton", "translateContentView", "getTranslateContentView", "setTranslateContentView", "translateLoadingView", "getTranslateLoadingView", "setTranslateLoadingView", "setMessageData", "", "translate", ViewHierarchyConstants.VIEW_KEY, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TrtcTextMessageHolder extends BaseViewHolder {
    @BindView
    public View backgroundView;
    @BindView
    public TextView contentTextView;
    @BindView
    public ImageView loadingView;
    @Nullable
    private TrtcTextMessage message;
    @BindView
    public TextView translateButton;
    @BindView
    public TextView translateContentView;
    @BindView
    public View translateLoadingView;

    public TrtcTextMessageHolder(@Nullable View view) {
        super(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: translate$lambda-0  reason: not valid java name */
    public static final void m360translate$lambda0(TrtcTextMessageHolder this$0, String str, TrtcTextMessage trtcTextMessage) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getTranslateContentView().setText(str);
        this$0.getLoadingView().setVisibility(8);
    }

    @NotNull
    public final View getBackgroundView() {
        View view = this.backgroundView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("backgroundView");
        return null;
    }

    @NotNull
    public final TextView getContentTextView() {
        TextView textView = this.contentTextView;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("contentTextView");
        return null;
    }

    @NotNull
    public final ImageView getLoadingView() {
        ImageView imageView = this.loadingView;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loadingView");
        return null;
    }

    @Nullable
    public final TrtcTextMessage getMessage() {
        return this.message;
    }

    @NotNull
    public final TextView getTranslateButton() {
        TextView textView = this.translateButton;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("translateButton");
        return null;
    }

    @NotNull
    public final TextView getTranslateContentView() {
        TextView textView = this.translateContentView;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("translateContentView");
        return null;
    }

    @NotNull
    public final View getTranslateLoadingView() {
        View view = this.translateLoadingView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("translateLoadingView");
        return null;
    }

    public final void setBackgroundView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.backgroundView = view;
    }

    public final void setContentTextView(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.contentTextView = textView;
    }

    public final void setLoadingView(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.loadingView = imageView;
    }

    public final void setMessage(@Nullable TrtcTextMessage trtcTextMessage) {
        this.message = trtcTextMessage;
    }

    public final void setMessageData(@NotNull TrtcTextMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.message = message;
        getContentTextView().setText(message.getContent());
        boolean z10 = !Objects.equals(message.getOtherLanguage(), TranslateUtils.getPhoneLanguage());
        String translatedContent = message.getTranslatedContent();
        if (z10 && !BaseConfig.isChinese()) {
            if (TextUtils.isEmpty(translatedContent)) {
                getTranslateLoadingView().setVisibility(8);
                getTranslateButton().setVisibility(0);
            } else {
                getTranslateLoadingView().setVisibility(0);
                getTranslateButton().setVisibility(8);
            }
            getTranslateContentView().setText(translatedContent);
        } else {
            getTranslateLoadingView().setVisibility(8);
            getTranslateContentView().setVisibility(8);
            getTranslateButton().setVisibility(8);
        }
        if (message.isSelf()) {
            getContentTextView().setTextColor(-1);
            getTranslateButton().setTextColor(Color.parseColor("#80C4FF"));
            getBackgroundView().setBackgroundResource(R.drawable.chat_bg_right_blue_trtc);
            getTranslateLoadingView().setBackgroundResource(R.drawable.bg_im_right_translate);
            return;
        }
        getContentTextView().setTextColor(ViewCompat.MEASURED_STATE_MASK);
        getTranslateButton().setTextColor(Color.parseColor("#888888"));
        getBackgroundView().setBackgroundResource(R.drawable.chat_bg_left_gray_trtc);
        getTranslateLoadingView().setBackgroundResource(R.drawable.bg_im_lift_translate);
    }

    public final void setTranslateButton(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.translateButton = textView;
    }

    public final void setTranslateContentView(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.translateContentView = textView;
    }

    public final void setTranslateLoadingView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.translateLoadingView = view;
    }

    @OnClick
    public final void translate(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (this.message == null) {
            return;
        }
        getTranslateButton().setVisibility(8);
        getTranslateLoadingView().setVisibility(0);
        getLoadingView().setVisibility(0);
        Drawable drawable = getLoadingView().getDrawable();
        Intrinsics.checkNotNull(drawable, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        ((AnimationDrawable) drawable).start();
        TrtcTextMessage trtcTextMessage = this.message;
        if (trtcTextMessage != null) {
            trtcTextMessage.translate(new TrtcTextMessage.b() { // from class: com.guochao.faceshow.aaspring.modulars.chat.viewholder.b
                @Override // com.guochao.faceshow.aaspring.modulars.chat.models.TrtcTextMessage.b
                public final void a(String str, TrtcTextMessage trtcTextMessage2) {
                    TrtcTextMessageHolder.m360translate$lambda0(TrtcTextMessageHolder.this, str, trtcTextMessage2);
                }
            });
        }
    }

    public TrtcTextMessageHolder(@Nullable Context context, int i9, @Nullable ViewGroup viewGroup) {
        super(context, i9, viewGroup);
    }
}
