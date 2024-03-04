package com.guochao.faceshow.component.f2fmatch.holder;

import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.ImageView;
import com.airbnb.lottie.e;
import com.airbnb.lottie.f;
import com.airbnb.lottie.h;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fChatMessageFragment;
import com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fSpeechToTextResultModel;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0019B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;", "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;", "f2FChatMessageModel", "", "tips", "", "convert", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "gcUser", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;", "f2fChatMessageFragment", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;", "Lcom/airbnb/lottie/f;", "drawable", "Lcom/airbnb/lottie/f;", "getDrawable", "()Lcom/airbnb/lottie/f;", "setDrawable", "(Lcom/airbnb/lottie/f;)V", "Landroid/view/View;", "itemView", "<init>", "(Landroid/view/View;Lcom/guochao/faceshow/aaspring/base/model/GCUser;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V", "VoiceSpan", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class F2fSpeechTextHolder extends F2fBaseHolder {
    @NotNull
    private f drawable;
    @NotNull
    private final F2fChatMessageFragment f2fChatMessageFragment;
    @NotNull
    private final GCUser gcUser;

    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder$VoiceSpan;", "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;", "Lcom/airbnb/lottie/f;", "drawable", "<init>", "(Lcom/airbnb/lottie/f;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes2.dex */
    public static final class VoiceSpan extends com.guochao.faceshow.aaspring.modulars.live.adapter.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public VoiceSpan(@NotNull f drawable) {
            super(drawable);
            Intrinsics.checkNotNullParameter(drawable, "drawable");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fSpeechTextHolder(@NotNull View itemView, @NotNull GCUser gcUser, @NotNull F2fChatMessageFragment f2fChatMessageFragment) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        Intrinsics.checkNotNullParameter(f2fChatMessageFragment, "f2fChatMessageFragment");
        this.gcUser = gcUser;
        this.f2fChatMessageFragment = f2fChatMessageFragment;
        itemView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.guochao.faceshow.component.f2fmatch.holder.F2fSpeechTextHolder.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                F2fSpeechTextHolder.this.getDrawable().L();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
            }
        });
        final f fVar = new f();
        fVar.setBounds(0, 0, DensityUtil.dp2px(20.0f), DensityUtil.dp2px(20.0f));
        fVar.g0(-1);
        e.d(itemView.getContext(), "f2f.json").f(new h() { // from class: com.guochao.faceshow.component.f2fmatch.holder.d
            @Override // com.airbnb.lottie.h
            public final void onResult(Object obj) {
                F2fSpeechTextHolder.m638drawable$lambda1$lambda0(f.this, (com.airbnb.lottie.d) obj);
            }
        });
        this.drawable = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-5$lambda-4  reason: not valid java name */
    public static final void m637convert$lambda5$lambda4(F2fSpeechTextHolder this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f2fChatMessageFragment.cancelRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawable$lambda-1$lambda-0  reason: not valid java name */
    public static final void m638drawable$lambda1$lambda0(f this_apply, com.airbnb.lottie.d dVar) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.P(dVar);
        this_apply.setBounds(0, 0, this_apply.getIntrinsicWidth(), this_apply.getIntrinsicHeight());
        this_apply.L();
    }

    private final CharSequence tips(F2fChatMessageModel f2fChatMessageModel) {
        StringBuilder sb2 = new StringBuilder();
        F2fSpeechToTextResultModel f2fSpeechToTextResultModel = f2fChatMessageModel.getF2fSpeechToTextResultModel();
        sb2.append(f2fSpeechToTextResultModel != null ? f2fSpeechToTextResultModel.getResult() : null);
        sb2.append("   ");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(sb2.toString());
        this.drawable.setCallback(new Drawable.Callback() { // from class: com.guochao.faceshow.component.f2fmatch.holder.F2fSpeechTextHolder$tips$1
            @Override // android.graphics.drawable.Drawable.Callback
            public void invalidateDrawable(@NotNull Drawable who) {
                Intrinsics.checkNotNullParameter(who, "who");
                F2fSpeechTextHolder.this.getTextView().invalidate();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void scheduleDrawable(@NotNull Drawable who, @NotNull Runnable what, long j10) {
                Intrinsics.checkNotNullParameter(who, "who");
                Intrinsics.checkNotNullParameter(what, "what");
                F2fSpeechTextHolder.this.getTextView().invalidate();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public void unscheduleDrawable(@NotNull Drawable who, @NotNull Runnable what) {
                Intrinsics.checkNotNullParameter(who, "who");
                Intrinsics.checkNotNullParameter(what, "what");
                F2fSpeechTextHolder.this.getTextView().invalidate();
            }
        });
        spannableStringBuilder.setSpan(new VoiceSpan(this.drawable), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        this.drawable.L();
        return spannableStringBuilder;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.holder.F2fBaseHolder
    public void convert(@NotNull F2fChatMessageModel f2FChatMessageModel) {
        Intrinsics.checkNotNullParameter(f2FChatMessageModel, "f2FChatMessageModel");
        hc.a.d((ImageView) getView(R.id.avatar), b8.e.g().b());
        getView(R.id.content).setBackgroundResource(R.drawable.shape_bg_blue_msg);
        View view = getView(R.id.close);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.holder.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                F2fSpeechTextHolder.m637convert$lambda5$lambda4(F2fSpeechTextHolder.this, view2);
            }
        });
        view.setVisibility(0);
        F2fSpeechToTextResultModel f2fSpeechToTextResultModel = f2FChatMessageModel.getF2fSpeechToTextResultModel();
        if (f2fSpeechToTextResultModel != null) {
            f2fSpeechToTextResultModel.getFinalResult();
        }
        getTextView().setText(tips(f2FChatMessageModel));
    }

    @NotNull
    public final f getDrawable() {
        return this.drawable;
    }

    public final void setDrawable(@NotNull f fVar) {
        Intrinsics.checkNotNullParameter(fVar, "<set-?>");
        this.drawable = fVar;
    }
}
