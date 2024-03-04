package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public final class TrtcTextMessageHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private TrtcTextMessageHolder f17337b;

    /* renamed from: c  reason: collision with root package name */
    private View f17338c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TrtcTextMessageHolder f17339a;

        a(TrtcTextMessageHolder trtcTextMessageHolder) {
            this.f17339a = trtcTextMessageHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17339a.translate(view);
        }
    }

    @UiThread
    public TrtcTextMessageHolder_ViewBinding(TrtcTextMessageHolder trtcTextMessageHolder, View view) {
        this.f17337b = trtcTextMessageHolder;
        trtcTextMessageHolder.contentTextView = (TextView) c.d(view, R.id.content, "field 'contentTextView'", TextView.class);
        trtcTextMessageHolder.translateContentView = (TextView) c.d(view, R.id.tv_translation, "field 'translateContentView'", TextView.class);
        View c10 = c.c(view, R.id.show_translate, "field 'translateButton' and method 'translate'");
        trtcTextMessageHolder.translateButton = (TextView) c.a(c10, R.id.show_translate, "field 'translateButton'", TextView.class);
        this.f17338c = c10;
        c10.setOnClickListener(new a(trtcTextMessageHolder));
        trtcTextMessageHolder.translateLoadingView = c.c(view, R.id.fl_translate, "field 'translateLoadingView'");
        trtcTextMessageHolder.backgroundView = c.c(view, R.id.background, "field 'backgroundView'");
        trtcTextMessageHolder.loadingView = (ImageView) c.d(view, R.id.loading_anim, "field 'loadingView'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TrtcTextMessageHolder trtcTextMessageHolder = this.f17337b;
        if (trtcTextMessageHolder != null) {
            this.f17337b = null;
            trtcTextMessageHolder.contentTextView = null;
            trtcTextMessageHolder.translateContentView = null;
            trtcTextMessageHolder.translateButton = null;
            trtcTextMessageHolder.translateLoadingView = null;
            trtcTextMessageHolder.backgroundView = null;
            trtcTextMessageHolder.loadingView = null;
            this.f17338c.setOnClickListener(null);
            this.f17338c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
