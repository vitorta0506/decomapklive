package com.tencent.liteav.sdkcommon;

import android.content.Context;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class g {

    /* renamed from: b  reason: collision with root package name */
    final Context f31275b;

    /* renamed from: c  reason: collision with root package name */
    WindowManager f31276c;

    /* renamed from: d  reason: collision with root package name */
    WindowManager.LayoutParams f31277d;

    /* renamed from: e  reason: collision with root package name */
    WindowManager.LayoutParams f31278e;

    /* renamed from: f  reason: collision with root package name */
    View f31279f;

    /* renamed from: g  reason: collision with root package name */
    View f31280g;

    /* renamed from: h  reason: collision with root package name */
    TextView f31281h;

    /* renamed from: i  reason: collision with root package name */
    TextView f31282i;

    /* renamed from: j  reason: collision with root package name */
    Spinner f31283j;

    /* renamed from: k  reason: collision with root package name */
    final ArrayAdapter<String> f31284k;

    /* renamed from: l  reason: collision with root package name */
    ScrollView f31285l;

    /* renamed from: n  reason: collision with root package name */
    String f31287n;

    /* renamed from: p  reason: collision with root package name */
    final a f31289p;

    /* renamed from: a  reason: collision with root package name */
    final DisplayMetrics f31274a = new DisplayMetrics();

    /* renamed from: m  reason: collision with root package name */
    boolean f31286m = false;

    /* renamed from: q  reason: collision with root package name */
    private final int f31290q = 100;

    /* renamed from: o  reason: collision with root package name */
    final Rect f31288o = new Rect(0, 0, 0, 0);

    /* renamed from: r  reason: collision with root package name */
    private final int f31291r = SupportMenu.CATEGORY_MASK;

    /* loaded from: classes4.dex */
    public interface a {
        void a(int i9);
    }

    /* loaded from: classes4.dex */
    class b implements View.OnTouchListener {

        /* renamed from: b  reason: collision with root package name */
        private int f31293b;

        /* renamed from: c  reason: collision with root package name */
        private int f31294c;

        private b() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f31293b = (int) motionEvent.getRawX();
                this.f31294c = (int) motionEvent.getRawY();
            } else if (action == 2) {
                int rawX = (int) motionEvent.getRawX();
                int rawY = (int) motionEvent.getRawY();
                g gVar = g.this;
                WindowManager.LayoutParams layoutParams = gVar.f31277d;
                int i9 = layoutParams.x + (rawX - this.f31293b);
                layoutParams.x = i9;
                int i10 = layoutParams.y + (rawY - this.f31294c);
                layoutParams.y = i10;
                this.f31293b = rawX;
                this.f31294c = rawY;
                if (i9 < 0) {
                    layoutParams.x = 0;
                }
                if (i10 < 0) {
                    layoutParams.y = 0;
                }
                int i11 = layoutParams.x;
                int i12 = gVar.f31288o.right;
                int i13 = i11 + i12;
                DisplayMetrics displayMetrics = gVar.f31274a;
                int i14 = displayMetrics.widthPixels;
                if (i13 > i14) {
                    layoutParams.width = i14 - i11;
                } else {
                    layoutParams.width = i12;
                }
                int i15 = layoutParams.y;
                int i16 = i15 + 100;
                int i17 = displayMetrics.heightPixels;
                if (i16 > i17) {
                    layoutParams.height = i17 - i15;
                } else {
                    layoutParams.height = 100;
                }
                gVar.f31276c.updateViewLayout(view, layoutParams);
                g gVar2 = g.this;
                WindowManager.LayoutParams layoutParams2 = gVar2.f31278e;
                WindowManager.LayoutParams layoutParams3 = gVar2.f31277d;
                int i18 = layoutParams3.x;
                layoutParams2.x = i18;
                int i19 = layoutParams3.y + layoutParams3.height;
                layoutParams2.y = i19;
                Rect rect = gVar2.f31288o;
                int i20 = rect.right;
                int i21 = i18 + i20;
                DisplayMetrics displayMetrics2 = gVar2.f31274a;
                int i22 = displayMetrics2.widthPixels;
                if (i21 > i22) {
                    layoutParams2.width = i22 - i18;
                } else {
                    layoutParams2.width = i20;
                }
                int i23 = rect.bottom;
                int i24 = i19 + i23;
                int i25 = displayMetrics2.heightPixels;
                if (i24 > i25) {
                    layoutParams2.height = i25 - i19;
                } else {
                    layoutParams2.height = i23;
                }
                gVar2.f31276c.updateViewLayout(gVar2.f31280g, layoutParams2);
            }
            view.performClick();
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ b(g gVar, byte b10) {
            this();
        }
    }

    /* loaded from: classes4.dex */
    class c implements AdapterView.OnItemSelectedListener {
        private c() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i9, long j10) {
            if (view == null) {
                return;
            }
            ((TextView) view).setTextColor(SupportMenu.CATEGORY_MASK);
            g gVar = g.this;
            gVar.f31287n = gVar.f31284k.getItem(i9);
            g.this.f31289p.a(i9);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ c(g gVar, byte b10) {
            this();
        }
    }

    public g(Context context, a aVar) {
        this.f31275b = context;
        this.f31289p = aVar;
        this.f31284k = new ArrayAdapter<>(context, 17367048);
    }

    public final void a(String str) {
        TextView textView = this.f31282i;
        if (textView != null) {
            textView.setText(str);
        }
        ScrollView scrollView = this.f31285l;
        if (scrollView != null) {
            scrollView.fullScroll(130);
        }
    }

    public final void b(String str) {
        TextView textView = this.f31281h;
        if (textView != null) {
            textView.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        TextView textView;
        Spinner spinner = this.f31283j;
        if (spinner == null || (textView = (TextView) spinner.getChildAt(spinner.getSelectedItemPosition())) == null) {
            return;
        }
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
    }

    public final int a(int i9) {
        return (int) ((i9 * this.f31275b.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
