package com.guochao.faceshow.aaspring.modulars.translate;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.ExpandableImageTextView;
/* loaded from: classes3.dex */
public class VideoTranslateHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private VideoTranslateHolder f21858b;

    /* renamed from: c  reason: collision with root package name */
    private View f21859c;

    /* renamed from: d  reason: collision with root package name */
    private View f21860d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoTranslateHolder f21861a;

        a(VideoTranslateHolder videoTranslateHolder) {
            this.f21861a = videoTranslateHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21861a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoTranslateHolder f21863a;

        b(VideoTranslateHolder videoTranslateHolder) {
            this.f21863a = videoTranslateHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21863a.onViewClicked(view);
        }
    }

    @UiThread
    public VideoTranslateHolder_ViewBinding(VideoTranslateHolder videoTranslateHolder, View view) {
        this.f21858b = videoTranslateHolder;
        videoTranslateHolder.tvExpandable = (ExpandableImageTextView) c.d(view, R.id.tv_expandable, "field 'tvExpandable'", ExpandableImageTextView.class);
        View c10 = c.c(view, R.id.iv_expandable, "field 'ivExpandable' and method 'onViewClicked'");
        videoTranslateHolder.ivExpandable = (ImageView) c.a(c10, R.id.iv_expandable, "field 'ivExpandable'", ImageView.class);
        this.f21859c = c10;
        c10.setOnClickListener(new a(videoTranslateHolder));
        View c11 = c.c(view, R.id.translate_btn, "field 'translateBtn' and method 'onViewClicked'");
        videoTranslateHolder.translateBtn = (TextView) c.a(c11, R.id.translate_btn, "field 'translateBtn'", TextView.class);
        this.f21860d = c11;
        c11.setOnClickListener(new b(videoTranslateHolder));
        videoTranslateHolder.translateLoading = (ImageView) c.d(view, R.id.translate_loading, "field 'translateLoading'", ImageView.class);
        videoTranslateHolder.translateContentLay = c.c(view, R.id.translate_lay, "field 'translateContentLay'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VideoTranslateHolder videoTranslateHolder = this.f21858b;
        if (videoTranslateHolder != null) {
            this.f21858b = null;
            videoTranslateHolder.tvExpandable = null;
            videoTranslateHolder.ivExpandable = null;
            videoTranslateHolder.translateBtn = null;
            videoTranslateHolder.translateLoading = null;
            videoTranslateHolder.translateContentLay = null;
            this.f21859c.setOnClickListener(null);
            this.f21859c = null;
            this.f21860d.setOnClickListener(null);
            this.f21860d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
