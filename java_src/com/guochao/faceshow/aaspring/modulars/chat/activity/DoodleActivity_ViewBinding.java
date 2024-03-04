package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import com.guochao.faceshow.aaspring.views.VerticalRangeSeekBar;
/* loaded from: classes3.dex */
public class DoodleActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private DoodleActivity f16819c;

    /* renamed from: d  reason: collision with root package name */
    private View f16820d;

    /* renamed from: e  reason: collision with root package name */
    private View f16821e;

    /* renamed from: f  reason: collision with root package name */
    private View f16822f;

    /* renamed from: g  reason: collision with root package name */
    private View f16823g;

    /* renamed from: h  reason: collision with root package name */
    private View f16824h;

    /* renamed from: i  reason: collision with root package name */
    private View f16825i;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DoodleActivity f16826a;

        a(DoodleActivity doodleActivity) {
            this.f16826a = doodleActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16826a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DoodleActivity f16828a;

        b(DoodleActivity doodleActivity) {
            this.f16828a = doodleActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16828a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DoodleActivity f16830a;

        c(DoodleActivity doodleActivity) {
            this.f16830a = doodleActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16830a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DoodleActivity f16832a;

        d(DoodleActivity doodleActivity) {
            this.f16832a = doodleActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16832a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DoodleActivity f16834a;

        e(DoodleActivity doodleActivity) {
            this.f16834a = doodleActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16834a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DoodleActivity f16836a;

        f(DoodleActivity doodleActivity) {
            this.f16836a = doodleActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16836a.onViewClicked(view);
        }
    }

    @UiThread
    public DoodleActivity_ViewBinding(DoodleActivity doodleActivity, View view) {
        super(doodleActivity, view);
        this.f16819c = doodleActivity;
        doodleActivity.floatTitleBack = (TitleBackgroundView) butterknife.internal.c.d(view, R.id.float_title_back, "field 'floatTitleBack'", TitleBackgroundView.class);
        doodleActivity.mFrameLayout = (FrameLayout) butterknife.internal.c.d(view, R.id.doodle_container, "field 'mFrameLayout'", FrameLayout.class);
        doodleActivity.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        View c10 = butterknife.internal.c.c(view, R.id.iv_recall, "field 'ivRecall' and method 'onViewClicked'");
        doodleActivity.ivRecall = (ImageView) butterknife.internal.c.a(c10, R.id.iv_recall, "field 'ivRecall'", ImageView.class);
        this.f16820d = c10;
        c10.setOnClickListener(new a(doodleActivity));
        doodleActivity.mSettingsPanel = (FrameLayout) butterknife.internal.c.d(view, R.id.doodle_panel, "field 'mSettingsPanel'", FrameLayout.class);
        doodleActivity.flSeek = (FrameLayout) butterknife.internal.c.d(view, R.id.fl_seek, "field 'flSeek'", FrameLayout.class);
        doodleActivity.seekBar = (VerticalRangeSeekBar) butterknife.internal.c.d(view, R.id.seek_bar, "field 'seekBar'", VerticalRangeSeekBar.class);
        doodleActivity.ivPainSize = (ImageView) butterknife.internal.c.d(view, R.id.iv_pain_size, "field 'ivPainSize'", ImageView.class);
        View c11 = butterknife.internal.c.c(view, R.id.iv_compile, "field 'ivCompile' and method 'onViewClicked'");
        doodleActivity.ivCompile = (ImageView) butterknife.internal.c.a(c11, R.id.iv_compile, "field 'ivCompile'", ImageView.class);
        this.f16821e = c11;
        c11.setOnClickListener(new b(doodleActivity));
        View c12 = butterknife.internal.c.c(view, R.id.complete, "field 'complete' and method 'onViewClicked'");
        doodleActivity.complete = (TextView) butterknife.internal.c.a(c12, R.id.complete, "field 'complete'", TextView.class);
        this.f16822f = c12;
        c12.setOnClickListener(new c(doodleActivity));
        View c13 = butterknife.internal.c.c(view, R.id.iv_text, "field 'ivText' and method 'onViewClicked'");
        doodleActivity.ivText = (ImageView) butterknife.internal.c.a(c13, R.id.iv_text, "field 'ivText'", ImageView.class);
        this.f16823g = c13;
        c13.setOnClickListener(new d(doodleActivity));
        doodleActivity.llMulti = (RelativeLayout) butterknife.internal.c.d(view, R.id.ll_multi, "field 'llMulti'", RelativeLayout.class);
        View c14 = butterknife.internal.c.c(view, R.id.iv_cut, "field 'ivCut' and method 'onViewClicked'");
        doodleActivity.ivCut = (ImageView) butterknife.internal.c.a(c14, R.id.iv_cut, "field 'ivCut'", ImageView.class);
        this.f16824h = c14;
        c14.setOnClickListener(new e(doodleActivity));
        doodleActivity.doodleEditText = (FrameLayout) butterknife.internal.c.d(view, R.id.doodle_edit_text, "field 'doodleEditText'", FrameLayout.class);
        View c15 = butterknife.internal.c.c(view, R.id.iv_text_recall, "field 'ivTextRecall' and method 'onViewClicked'");
        doodleActivity.ivTextRecall = (ImageView) butterknife.internal.c.a(c15, R.id.iv_text_recall, "field 'ivTextRecall'", ImageView.class);
        this.f16825i = c15;
        c15.setOnClickListener(new f(doodleActivity));
        doodleActivity.viewLine = butterknife.internal.c.c(view, R.id.view_line, "field 'viewLine'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        DoodleActivity doodleActivity = this.f16819c;
        if (doodleActivity != null) {
            this.f16819c = null;
            doodleActivity.floatTitleBack = null;
            doodleActivity.mFrameLayout = null;
            doodleActivity.recyclerView = null;
            doodleActivity.ivRecall = null;
            doodleActivity.mSettingsPanel = null;
            doodleActivity.flSeek = null;
            doodleActivity.seekBar = null;
            doodleActivity.ivPainSize = null;
            doodleActivity.ivCompile = null;
            doodleActivity.complete = null;
            doodleActivity.ivText = null;
            doodleActivity.llMulti = null;
            doodleActivity.ivCut = null;
            doodleActivity.doodleEditText = null;
            doodleActivity.ivTextRecall = null;
            doodleActivity.viewLine = null;
            this.f16820d.setOnClickListener(null);
            this.f16820d = null;
            this.f16821e.setOnClickListener(null);
            this.f16821e = null;
            this.f16822f.setOnClickListener(null);
            this.f16822f = null;
            this.f16823g.setOnClickListener(null);
            this.f16823g = null;
            this.f16824h.setOnClickListener(null);
            this.f16824h = null;
            this.f16825i.setOnClickListener(null);
            this.f16825i = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
