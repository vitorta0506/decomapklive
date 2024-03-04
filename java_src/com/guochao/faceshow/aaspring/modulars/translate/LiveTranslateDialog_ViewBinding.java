package com.guochao.faceshow.aaspring.modulars.translate;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class LiveTranslateDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveTranslateDialog f21832b;

    /* renamed from: c  reason: collision with root package name */
    private View f21833c;

    /* renamed from: d  reason: collision with root package name */
    private View f21834d;

    /* renamed from: e  reason: collision with root package name */
    private View f21835e;

    /* renamed from: f  reason: collision with root package name */
    private View f21836f;

    /* renamed from: g  reason: collision with root package name */
    private View f21837g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveTranslateDialog f21838a;

        a(LiveTranslateDialog liveTranslateDialog) {
            this.f21838a = liveTranslateDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21838a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveTranslateDialog f21840a;

        b(LiveTranslateDialog liveTranslateDialog) {
            this.f21840a = liveTranslateDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21840a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveTranslateDialog f21842a;

        c(LiveTranslateDialog liveTranslateDialog) {
            this.f21842a = liveTranslateDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21842a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveTranslateDialog f21844a;

        d(LiveTranslateDialog liveTranslateDialog) {
            this.f21844a = liveTranslateDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21844a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveTranslateDialog f21846a;

        e(LiveTranslateDialog liveTranslateDialog) {
            this.f21846a = liveTranslateDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21846a.onViewClicked(view);
        }
    }

    @UiThread
    public LiveTranslateDialog_ViewBinding(LiveTranslateDialog liveTranslateDialog, View view) {
        this.f21832b = liveTranslateDialog;
        liveTranslateDialog.tvNickName = (TextView) butterknife.internal.c.d(view, R.id.tv_nick_name, "field 'tvNickName'", TextView.class);
        liveTranslateDialog.tvContent = (TextView) butterknife.internal.c.d(view, R.id.tv_content, "field 'tvContent'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.translate_btn, "field 'translateBtn' and method 'onViewClicked'");
        liveTranslateDialog.translateBtn = (ImageView) butterknife.internal.c.a(c10, R.id.translate_btn, "field 'translateBtn'", ImageView.class);
        this.f21833c = c10;
        c10.setOnClickListener(new a(liveTranslateDialog));
        liveTranslateDialog.translateLoading = (ImageView) butterknife.internal.c.d(view, R.id.translate_loading, "field 'translateLoading'", ImageView.class);
        View c11 = butterknife.internal.c.c(view, R.id.at_person, "field 'atPerson' and method 'onViewClicked'");
        liveTranslateDialog.atPerson = (ImageView) butterknife.internal.c.a(c11, R.id.at_person, "field 'atPerson'", ImageView.class);
        this.f21834d = c11;
        c11.setOnClickListener(new b(liveTranslateDialog));
        View c12 = butterknife.internal.c.c(view, R.id.btn_confirm, "field 'btnConfirm' and method 'onViewClicked'");
        liveTranslateDialog.btnConfirm = (TextView) butterknife.internal.c.a(c12, R.id.btn_confirm, "field 'btnConfirm'", TextView.class);
        this.f21835e = c12;
        c12.setOnClickListener(new c(liveTranslateDialog));
        liveTranslateDialog.someOneLay = butterknife.internal.c.c(view, R.id.someone_translate_lay, "field 'someOneLay'");
        liveTranslateDialog.llTip = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_tip, "field 'llTip'", LinearLayout.class);
        View c13 = butterknife.internal.c.c(view, R.id.ll_guide, "field 'llGuide' and method 'onViewClicked'");
        liveTranslateDialog.llGuide = (LinearLayout) butterknife.internal.c.a(c13, R.id.ll_guide, "field 'llGuide'", LinearLayout.class);
        this.f21836f = c13;
        c13.setOnClickListener(new d(liveTranslateDialog));
        liveTranslateDialog.svgaImageView = (SVGAImageView) butterknife.internal.c.d(view, R.id.svg, "field 'svgaImageView'", SVGAImageView.class);
        View c14 = butterknife.internal.c.c(view, R.id.iv_close, "method 'onViewClicked'");
        this.f21837g = c14;
        c14.setOnClickListener(new e(liveTranslateDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveTranslateDialog liveTranslateDialog = this.f21832b;
        if (liveTranslateDialog != null) {
            this.f21832b = null;
            liveTranslateDialog.tvNickName = null;
            liveTranslateDialog.tvContent = null;
            liveTranslateDialog.translateBtn = null;
            liveTranslateDialog.translateLoading = null;
            liveTranslateDialog.atPerson = null;
            liveTranslateDialog.btnConfirm = null;
            liveTranslateDialog.someOneLay = null;
            liveTranslateDialog.llTip = null;
            liveTranslateDialog.llGuide = null;
            liveTranslateDialog.svgaImageView = null;
            this.f21833c.setOnClickListener(null);
            this.f21833c = null;
            this.f21834d.setOnClickListener(null);
            this.f21834d = null;
            this.f21835e.setOnClickListener(null);
            this.f21835e = null;
            this.f21836f.setOnClickListener(null);
            this.f21836f = null;
            this.f21837g.setOnClickListener(null);
            this.f21837g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
