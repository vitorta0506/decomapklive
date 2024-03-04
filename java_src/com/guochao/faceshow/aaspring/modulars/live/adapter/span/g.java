package com.guochao.faceshow.aaspring.modulars.live.adapter.span;

import android.content.Context;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.translate.a;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class g extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    LiveMessageModel<?> f18279a;

    /* renamed from: b  reason: collision with root package name */
    WeakReference<Context> f18280b;

    /* renamed from: c  reason: collision with root package name */
    WeakReference<LiveChatFragment> f18281c;

    /* renamed from: d  reason: collision with root package name */
    b f18282d;

    /* loaded from: classes3.dex */
    class a implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveChatFragment f18283a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BaseLiveMessage f18284b;

        a(LiveChatFragment liveChatFragment, BaseLiveMessage baseLiveMessage) {
            this.f18283a = liveChatFragment;
            this.f18284b = baseLiveMessage;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.translate.a.c
        public void onResponse(@Nullable List<String> list) {
            if (!this.f18283a.isAdded() || g.this.f18282d == null || this.f18284b == null) {
                return;
            }
            if (list != null && list.size() > 0) {
                this.f18284b.setTranslateContent(list.get(0));
                this.f18284b.setTranslateing(false);
                this.f18284b.setShowtranslateContent(true);
            } else {
                ToastUtils.showToast((int) R.string.translate_error);
                this.f18284b.setTranslateContent(null);
                this.f18284b.setTranslateing(false);
                this.f18284b.setShowtranslateContent(false);
            }
            g.this.f18282d.a();
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a();
    }

    public g(LiveMessageModel<?> liveMessageModel, Context context, LiveChatFragment liveChatFragment, b bVar) {
        this.f18279a = liveMessageModel;
        this.f18280b = new WeakReference<>(context);
        this.f18281c = new WeakReference<>(liveChatFragment);
        this.f18282d = bVar;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r5v5, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        WeakReference<Context> weakReference = this.f18280b;
        if (weakReference == null || this.f18281c == null) {
            return;
        }
        Context context = weakReference.get();
        LiveChatFragment liveChatFragment = this.f18281c.get();
        if (context == null || liveChatFragment == null) {
            return;
        }
        ?? data = this.f18279a.getData();
        if (TextUtils.isEmpty(data.getTranslateContent())) {
            data.setTranslateing(true);
            this.f18282d.a();
            com.guochao.faceshow.aaspring.modulars.translate.a.a().f(Collections.singletonList(this.f18279a.getData().getContent()), new a(liveChatFragment, data));
        } else if (data.isShowtranslateContent()) {
            data.setShowtranslateContent(false);
            this.f18282d.a();
        } else {
            data.setShowtranslateContent(true);
            this.f18282d.a();
        }
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(@NonNull TextPaint textPaint) {
        textPaint.setUnderlineText(false);
    }
}
