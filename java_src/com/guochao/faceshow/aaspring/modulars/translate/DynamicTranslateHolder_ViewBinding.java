package com.guochao.faceshow.aaspring.modulars.translate;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TopicAndAtTextView;
/* loaded from: classes3.dex */
public class DynamicTranslateHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private DynamicTranslateHolder f21818b;

    /* renamed from: c  reason: collision with root package name */
    private View f21819c;

    /* renamed from: d  reason: collision with root package name */
    private View f21820d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DynamicTranslateHolder f21821a;

        a(DynamicTranslateHolder dynamicTranslateHolder) {
            this.f21821a = dynamicTranslateHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21821a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DynamicTranslateHolder f21823a;

        b(DynamicTranslateHolder dynamicTranslateHolder) {
            this.f21823a = dynamicTranslateHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21823a.onViewClicked(view);
        }
    }

    @UiThread
    public DynamicTranslateHolder_ViewBinding(DynamicTranslateHolder dynamicTranslateHolder, View view) {
        this.f21818b = dynamicTranslateHolder;
        View c10 = c.c(view, R.id.translate_btn, "field 'translateBtn' and method 'onViewClicked'");
        dynamicTranslateHolder.translateBtn = (TextView) c.a(c10, R.id.translate_btn, "field 'translateBtn'", TextView.class);
        this.f21819c = c10;
        c10.setOnClickListener(new a(dynamicTranslateHolder));
        View c11 = c.c(view, R.id.hide_translate_btn, "field 'hideTranslateBtn' and method 'onViewClicked'");
        dynamicTranslateHolder.hideTranslateBtn = (TextView) c.a(c11, R.id.hide_translate_btn, "field 'hideTranslateBtn'", TextView.class);
        this.f21820d = c11;
        c11.setOnClickListener(new b(dynamicTranslateHolder));
        dynamicTranslateHolder.translateContent = (TopicAndAtTextView) c.d(view, R.id.translate_content, "field 'translateContent'", TopicAndAtTextView.class);
        dynamicTranslateHolder.translateLoading = (ImageView) c.d(view, R.id.translate_loading, "field 'translateLoading'", ImageView.class);
        dynamicTranslateHolder.translateContentLay = c.c(view, R.id.translate_content_lay, "field 'translateContentLay'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DynamicTranslateHolder dynamicTranslateHolder = this.f21818b;
        if (dynamicTranslateHolder != null) {
            this.f21818b = null;
            dynamicTranslateHolder.translateBtn = null;
            dynamicTranslateHolder.hideTranslateBtn = null;
            dynamicTranslateHolder.translateContent = null;
            dynamicTranslateHolder.translateLoading = null;
            dynamicTranslateHolder.translateContentLay = null;
            this.f21819c.setOnClickListener(null);
            this.f21819c = null;
            this.f21820d.setOnClickListener(null);
            this.f21820d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
