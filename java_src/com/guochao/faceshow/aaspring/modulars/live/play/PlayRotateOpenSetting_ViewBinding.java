package com.guochao.faceshow.aaspring.modulars.live.play;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class PlayRotateOpenSetting_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PlayRotateOpenSetting f19808b;

    /* renamed from: c  reason: collision with root package name */
    private View f19809c;

    /* renamed from: d  reason: collision with root package name */
    private View f19810d;

    /* renamed from: e  reason: collision with root package name */
    private View f19811e;

    /* renamed from: f  reason: collision with root package name */
    private View f19812f;

    /* renamed from: g  reason: collision with root package name */
    private View f19813g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlayRotateOpenSetting f19814a;

        a(PlayRotateOpenSetting playRotateOpenSetting) {
            this.f19814a = playRotateOpenSetting;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19814a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlayRotateOpenSetting f19816a;

        b(PlayRotateOpenSetting playRotateOpenSetting) {
            this.f19816a = playRotateOpenSetting;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19816a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlayRotateOpenSetting f19818a;

        c(PlayRotateOpenSetting playRotateOpenSetting) {
            this.f19818a = playRotateOpenSetting;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19818a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlayRotateOpenSetting f19820a;

        d(PlayRotateOpenSetting playRotateOpenSetting) {
            this.f19820a = playRotateOpenSetting;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19820a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlayRotateOpenSetting f19822a;

        e(PlayRotateOpenSetting playRotateOpenSetting) {
            this.f19822a = playRotateOpenSetting;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19822a.onClick(view);
        }
    }

    @UiThread
    public PlayRotateOpenSetting_ViewBinding(PlayRotateOpenSetting playRotateOpenSetting, View view) {
        this.f19808b = playRotateOpenSetting;
        View c10 = butterknife.internal.c.c(view, R.id.start_game, "method 'onClick'");
        this.f19809c = c10;
        c10.setOnClickListener(new a(playRotateOpenSetting));
        View c11 = butterknife.internal.c.c(view, R.id.participants_number_lay, "method 'onClick'");
        this.f19810d = c11;
        c11.setOnClickListener(new b(playRotateOpenSetting));
        View c12 = butterknife.internal.c.c(view, R.id.participants_price_lay, "method 'onClick'");
        this.f19811e = c12;
        c12.setOnClickListener(new c(playRotateOpenSetting));
        View c13 = butterknife.internal.c.c(view, R.id.iv_close, "method 'onClick'");
        this.f19812f = c13;
        c13.setOnClickListener(new d(playRotateOpenSetting));
        View c14 = butterknife.internal.c.c(view, R.id.lay_select_state, "method 'onClick'");
        this.f19813g = c14;
        c14.setOnClickListener(new e(playRotateOpenSetting));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f19808b != null) {
            this.f19808b = null;
            this.f19809c.setOnClickListener(null);
            this.f19809c = null;
            this.f19810d.setOnClickListener(null);
            this.f19810d = null;
            this.f19811e.setOnClickListener(null);
            this.f19811e = null;
            this.f19812f.setOnClickListener(null);
            this.f19812f = null;
            this.f19813g.setOnClickListener(null);
            this.f19813g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
