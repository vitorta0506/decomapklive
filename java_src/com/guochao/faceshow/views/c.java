package com.guochao.faceshow.views;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.android.material.timepicker.TimeModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.wheelview.WheelView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes4.dex */
public class c extends PopupWindow implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f26908a;

    /* renamed from: b  reason: collision with root package name */
    private WheelView f26909b;

    /* renamed from: c  reason: collision with root package name */
    private WheelView f26910c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f26911d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f26912e;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<String> f26913f;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<String> f26914g;

    /* renamed from: h  reason: collision with root package name */
    private e f26915h;

    /* renamed from: i  reason: collision with root package name */
    private e f26916i;

    /* renamed from: j  reason: collision with root package name */
    private String f26917j;

    /* renamed from: k  reason: collision with root package name */
    private String f26918k;

    /* renamed from: l  reason: collision with root package name */
    private String f26919l;

    /* renamed from: m  reason: collision with root package name */
    private int f26920m;

    /* renamed from: n  reason: collision with root package name */
    private int f26921n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f26922o;

    /* renamed from: p  reason: collision with root package name */
    private String f26923p;

    /* renamed from: q  reason: collision with root package name */
    private String f26924q;

    /* renamed from: r  reason: collision with root package name */
    private f f26925r;

    /* loaded from: classes4.dex */
    class a implements lb.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f26926a;

        a(Context context) {
            this.f26926a = context;
        }

        @Override // lb.b
        public void a(WheelView wheelView, int i9, int i10) {
            String str = (String) c.this.f26915h.e(wheelView.getCurrentItem());
            c.this.f26923p = str;
            c cVar = c.this;
            cVar.t(str, cVar.f26915h);
            c.this.f26918k = str.substring(0, str.length() - 1).toString();
            Log.d("currentYear==", c.this.f26918k);
            c cVar2 = c.this;
            cVar2.u(cVar2.f26918k);
            c cVar3 = c.this;
            cVar3.p(Integer.parseInt(cVar3.f26917j));
            c cVar4 = c.this;
            c cVar5 = c.this;
            cVar4.f26916i = new e(this.f26926a, cVar5.f26914g, 0, c.this.f26920m, c.this.f26921n);
            c.this.f26910c.setVisibleItems(5);
            c.this.f26910c.setViewAdapter(c.this.f26916i);
            c.this.f26910c.setCurrentItem(0);
            c.this.f26924q = "1";
            c.this.s("1");
        }
    }

    /* loaded from: classes4.dex */
    class b implements lb.d {
        b() {
        }

        @Override // lb.d
        public void a(WheelView wheelView) {
            String str = (String) c.this.f26915h.e(wheelView.getCurrentItem());
            c cVar = c.this;
            cVar.t(str, cVar.f26915h);
            c.this.f26923p = str;
            c cVar2 = c.this;
            cVar2.u(cVar2.f26918k);
            c.this.f26924q = "1";
            c.this.s("1");
        }

        @Override // lb.d
        public void b(WheelView wheelView) {
        }
    }

    /* renamed from: com.guochao.faceshow.views.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0268c implements lb.b {
        C0268c() {
        }

        @Override // lb.b
        public void a(WheelView wheelView, int i9, int i10) {
            String str = (String) c.this.f26916i.e(wheelView.getCurrentItem());
            c.this.f26924q = str;
            c cVar = c.this;
            cVar.t(str, cVar.f26916i);
            c.this.s(str.substring(0, 1));
        }
    }

    /* loaded from: classes4.dex */
    class d implements lb.d {
        d() {
        }

        @Override // lb.d
        public void a(WheelView wheelView) {
            String str = (String) c.this.f26916i.e(wheelView.getCurrentItem());
            c cVar = c.this;
            cVar.t(str, cVar.f26916i);
            c.this.f26924q = str;
            c.this.s(str.substring(0, 1));
        }

        @Override // lb.d
        public void b(WheelView wheelView) {
        }
    }

    /* loaded from: classes4.dex */
    private class e extends mb.b {

        /* renamed from: m  reason: collision with root package name */
        ArrayList<String> f26931m;

        protected e(Context context, ArrayList<String> arrayList, int i9, int i10, int i11) {
            super(context, R.layout.item_birth_year, 0, i9, i10, i11);
            this.f26931m = arrayList;
            i(R.id.tempValue);
        }

        @Override // mb.b, mb.c
        public View a(int i9, View view, ViewGroup viewGroup) {
            return super.a(i9, view, viewGroup);
        }

        @Override // mb.c
        public int b() {
            return this.f26931m.size();
        }

        @Override // mb.b
        protected CharSequence e(int i9) {
            return this.f26931m.get(i9) + "";
        }
    }

    /* loaded from: classes4.dex */
    public interface f {
        void a(String str, String str2);
    }

    public c(Context context) {
        super(context);
        this.f26913f = new ArrayList<>();
        this.f26914g = new ArrayList<>();
        this.f26918k = n();
        this.f26919l = m();
        this.f26920m = 24;
        this.f26921n = 14;
        this.f26922o = false;
        this.f26908a = context;
        View inflate = View.inflate(context, R.layout.dialog_myinfo_changebirth_noday, null);
        this.f26909b = (WheelView) inflate.findViewById(R.id.wv_birth_year);
        this.f26910c = (WheelView) inflate.findViewById(R.id.wv_birth_month);
        this.f26911d = (TextView) inflate.findViewById(R.id.btn_myinfo_sure);
        this.f26912e = (TextView) inflate.findViewById(R.id.btn_myinfo_cancel);
        setContentView(inflate);
        setWidth(-1);
        setHeight(-1);
        setFocusable(true);
        setBackgroundDrawable(new ColorDrawable(-1342177280));
        this.f26911d.setOnClickListener(this);
        this.f26912e.setOnClickListener(this);
        if (!this.f26922o) {
            o();
        }
        q();
        this.f26915h = new e(context, this.f26913f, u(this.f26918k), this.f26920m, this.f26921n);
        this.f26909b.setVisibleItems(5);
        this.f26909b.setViewAdapter(this.f26915h);
        this.f26909b.setCurrentItem(u(this.f26918k));
        p(Integer.parseInt(this.f26917j));
        this.f26916i = new e(context, this.f26914g, s(this.f26919l), this.f26920m, this.f26921n);
        this.f26910c.setVisibleItems(5);
        this.f26910c.setViewAdapter(this.f26916i);
        this.f26910c.setCurrentItem(s(this.f26919l));
        this.f26909b.addChangingListener(new a(context));
        this.f26909b.addScrollingListener(new b());
        this.f26910c.addChangingListener(new C0268c());
        this.f26910c.addScrollingListener(new d());
    }

    public String m() {
        Calendar calendar = Calendar.getInstance();
        return (calendar.get(2) + 1) + "";
    }

    public String n() {
        Calendar calendar = Calendar.getInstance();
        return calendar.get(1) + "";
    }

    public void o() {
        r(n(), m());
        this.f26919l = "1";
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        TextView textView = this.f26911d;
        if (view == textView) {
            f fVar = this.f26925r;
            if (fVar != null) {
                fVar.a(this.f26923p, this.f26924q);
            }
        } else if (view != textView) {
            dismiss();
        }
        dismiss();
    }

    public void p(int i9) {
        this.f26914g.clear();
        for (int i10 = 1; i10 <= i9; i10++) {
            this.f26914g.add(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i10)));
        }
    }

    public void q() {
        for (int parseInt = Integer.parseInt(n()); parseInt > 1950; parseInt--) {
            this.f26913f.add(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(parseInt)));
        }
    }

    public void r(String str, String str2) {
        this.f26923p = str + "";
        this.f26924q = str2 + "";
        this.f26922o = true;
        this.f26918k = str;
        this.f26919l = str2;
        if (str == n()) {
            this.f26917j = m();
        } else {
            this.f26917j = "12";
        }
    }

    public int s(String str) {
        int i9 = 0;
        for (int i10 = 1; i10 < Integer.parseInt(this.f26917j) && Integer.parseInt(str) != i10; i10++) {
            i9++;
        }
        return i9;
    }

    public void setBirthdayListener(f fVar) {
        this.f26925r = fVar;
    }

    public void t(String str, e eVar) {
        ArrayList<View> f10 = eVar.f();
        int size = f10.size();
        for (int i9 = 0; i9 < size; i9++) {
            TextView textView = (TextView) f10.get(i9);
            if (str.equals(textView.getText().toString())) {
                textView.setTextSize(this.f26920m);
            } else {
                textView.setTextSize(this.f26921n);
            }
        }
    }

    public int u(String str) {
        if (!str.equals(n())) {
            this.f26917j = "12";
        } else {
            this.f26917j = m();
        }
        int i9 = 0;
        for (int parseInt = Integer.parseInt(n()); parseInt > 1950 && parseInt != Integer.parseInt(str); parseInt--) {
            i9++;
        }
        return i9;
    }
}
