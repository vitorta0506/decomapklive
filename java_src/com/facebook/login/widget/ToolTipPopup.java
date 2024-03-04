package com.facebook.login.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.R$drawable;
import com.facebook.login.R$id;
import com.facebook.login.R$layout;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class ToolTipPopup {

    /* renamed from: a  reason: collision with root package name */
    private final String f5069a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<View> f5070b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f5071c;

    /* renamed from: d  reason: collision with root package name */
    private d f5072d;

    /* renamed from: e  reason: collision with root package name */
    private PopupWindow f5073e;

    /* renamed from: f  reason: collision with root package name */
    private Style f5074f = Style.BLUE;

    /* renamed from: g  reason: collision with root package name */
    private long f5075g = 6000;

    /* renamed from: h  reason: collision with root package name */
    private final ViewTreeObserver.OnScrollChangedListener f5076h = new a();

    /* loaded from: classes.dex */
    public enum Style {
        BLUE,
        BLACK
    }

    /* loaded from: classes.dex */
    class a implements ViewTreeObserver.OnScrollChangedListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            if (ToolTipPopup.a(ToolTipPopup.this).get() == null || ToolTipPopup.b(ToolTipPopup.this) == null || !ToolTipPopup.b(ToolTipPopup.this).isShowing()) {
                return;
            }
            if (ToolTipPopup.b(ToolTipPopup.this).isAboveAnchor()) {
                ToolTipPopup.c(ToolTipPopup.this).f();
            } else {
                ToolTipPopup.c(ToolTipPopup.this).g();
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                ToolTipPopup.this.d();
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    /* loaded from: classes.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                ToolTipPopup.this.d();
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        private ImageView f5080a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f5081b;

        /* renamed from: c  reason: collision with root package name */
        private View f5082c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f5083d;

        public d(Context context) {
            super(context);
            e();
        }

        private void e() {
            LayoutInflater.from(getContext()).inflate(R$layout.com_facebook_tooltip_bubble, this);
            this.f5080a = (ImageView) findViewById(R$id.com_facebook_tooltip_bubble_view_top_pointer);
            this.f5081b = (ImageView) findViewById(R$id.com_facebook_tooltip_bubble_view_bottom_pointer);
            this.f5082c = findViewById(R$id.com_facebook_body_frame);
            this.f5083d = (ImageView) findViewById(R$id.com_facebook_button_xout);
        }

        public void f() {
            this.f5080a.setVisibility(4);
            this.f5081b.setVisibility(0);
        }

        public void g() {
            this.f5080a.setVisibility(0);
            this.f5081b.setVisibility(4);
        }
    }

    public ToolTipPopup(String str, View view) {
        this.f5069a = str;
        this.f5070b = new WeakReference<>(view);
        this.f5071c = view.getContext();
    }

    static /* synthetic */ WeakReference a(ToolTipPopup toolTipPopup) {
        if (CrashShieldHandler.isObjectCrashing(ToolTipPopup.class)) {
            return null;
        }
        try {
            return toolTipPopup.f5070b;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ToolTipPopup.class);
            return null;
        }
    }

    static /* synthetic */ PopupWindow b(ToolTipPopup toolTipPopup) {
        if (CrashShieldHandler.isObjectCrashing(ToolTipPopup.class)) {
            return null;
        }
        try {
            return toolTipPopup.f5073e;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ToolTipPopup.class);
            return null;
        }
    }

    static /* synthetic */ d c(ToolTipPopup toolTipPopup) {
        if (CrashShieldHandler.isObjectCrashing(ToolTipPopup.class)) {
            return null;
        }
        try {
            return toolTipPopup.f5072d;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ToolTipPopup.class);
            return null;
        }
    }

    private void e() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            i();
            if (this.f5070b.get() != null) {
                this.f5070b.get().getViewTreeObserver().addOnScrollChangedListener(this.f5076h);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private void i() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.f5070b.get() != null) {
                this.f5070b.get().getViewTreeObserver().removeOnScrollChangedListener(this.f5076h);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private void j() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            PopupWindow popupWindow = this.f5073e;
            if (popupWindow == null || !popupWindow.isShowing()) {
                return;
            }
            if (this.f5073e.isAboveAnchor()) {
                this.f5072d.f();
            } else {
                this.f5072d.g();
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public void d() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            i();
            PopupWindow popupWindow = this.f5073e;
            if (popupWindow != null) {
                popupWindow.dismiss();
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public void f(long j10) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.f5075g = j10;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public void g(Style style) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.f5074f = style;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    public void h() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.f5070b.get() != null) {
                d dVar = new d(this.f5071c);
                this.f5072d = dVar;
                ((TextView) dVar.findViewById(R$id.com_facebook_tooltip_bubble_view_text_body)).setText(this.f5069a);
                if (this.f5074f == Style.BLUE) {
                    this.f5072d.f5082c.setBackgroundResource(R$drawable.com_facebook_tooltip_blue_background);
                    this.f5072d.f5081b.setImageResource(R$drawable.com_facebook_tooltip_blue_bottomnub);
                    this.f5072d.f5080a.setImageResource(R$drawable.com_facebook_tooltip_blue_topnub);
                    this.f5072d.f5083d.setImageResource(R$drawable.com_facebook_tooltip_blue_xout);
                } else {
                    this.f5072d.f5082c.setBackgroundResource(R$drawable.com_facebook_tooltip_black_background);
                    this.f5072d.f5081b.setImageResource(R$drawable.com_facebook_tooltip_black_bottomnub);
                    this.f5072d.f5080a.setImageResource(R$drawable.com_facebook_tooltip_black_topnub);
                    this.f5072d.f5083d.setImageResource(R$drawable.com_facebook_tooltip_black_xout);
                }
                View decorView = ((Activity) this.f5071c).getWindow().getDecorView();
                int width = decorView.getWidth();
                int height = decorView.getHeight();
                e();
                this.f5072d.measure(View.MeasureSpec.makeMeasureSpec(width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE));
                d dVar2 = this.f5072d;
                PopupWindow popupWindow = new PopupWindow(dVar2, dVar2.getMeasuredWidth(), this.f5072d.getMeasuredHeight());
                this.f5073e = popupWindow;
                popupWindow.showAsDropDown(this.f5070b.get());
                j();
                if (this.f5075g > 0) {
                    this.f5072d.postDelayed(new b(), this.f5075g);
                }
                this.f5073e.setTouchable(true);
                this.f5072d.setOnClickListener(new c());
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }
}
