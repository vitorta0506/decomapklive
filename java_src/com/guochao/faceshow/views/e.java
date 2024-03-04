package com.guochao.faceshow.views;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
@Deprecated
/* loaded from: classes4.dex */
public class e extends Dialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup f26933a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f26934b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f26935c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f26936d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f26937e;

    /* renamed from: f  reason: collision with root package name */
    private View f26938f;

    /* renamed from: g  reason: collision with root package name */
    private Context f26939g;

    /* renamed from: h  reason: collision with root package name */
    private CharSequence f26940h;

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f26941i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f26942j;

    /* renamed from: k  reason: collision with root package name */
    private a f26943k;

    /* renamed from: l  reason: collision with root package name */
    private SpannableStringBuilder f26944l;

    /* renamed from: m  reason: collision with root package name */
    private CharSequence f26945m;

    /* renamed from: n  reason: collision with root package name */
    private int f26946n;

    /* renamed from: o  reason: collision with root package name */
    private int f26947o;

    /* renamed from: p  reason: collision with root package name */
    private WindowManager.LayoutParams f26948p;

    /* renamed from: q  reason: collision with root package name */
    private Window f26949q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f26950r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f26951s;

    /* loaded from: classes4.dex */
    public interface a {
        void onClick(Dialog dialog, boolean z10);

        void onCreate(e eVar);
    }

    public e(Context context) {
        this(context, null);
    }

    private void a() {
        this.f26933a = (ViewGroup) findViewById(R.id.common_dialog_root);
        this.f26934b = (TextView) findViewById(R.id.common_dialog_title);
        this.f26935c = (TextView) findViewById(R.id.common_dialog_content);
        this.f26936d = (TextView) findViewById(R.id.common_dialog_submit);
        this.f26937e = (TextView) findViewById(R.id.common_dialog_cancel);
        this.f26938f = findViewById(R.id.common_dialog_vertical_line);
        this.f26936d.setOnClickListener(this);
        this.f26937e.setOnClickListener(this);
        int i9 = this.f26946n;
        if (i9 != 0) {
            this.f26937e.setTextColor(i9);
        }
        int i10 = this.f26947o;
        if (i10 != 0) {
            this.f26936d.setTextColor(i10);
        }
        if (!TextUtils.isEmpty(this.f26940h)) {
            this.f26934b.setVisibility(0);
            this.f26934b.setText(this.f26940h);
        } else {
            this.f26934b.setVisibility(8);
        }
        if (!TextUtils.isEmpty(this.f26941i)) {
            this.f26935c.setVisibility(0);
            this.f26935c.setText(this.f26941i);
        } else {
            this.f26935c.setVisibility(8);
        }
        if (this.f26934b.getVisibility() == 8 && this.f26935c.getVisibility() == 8) {
            this.f26935c.setVisibility(0);
        }
        if (!TextUtils.isEmpty(this.f26944l)) {
            this.f26936d.setText(this.f26944l);
        }
        if (!TextUtils.isEmpty(this.f26945m)) {
            this.f26937e.setText(this.f26945m);
        }
        if (this.f26951s) {
            this.f26937e.setVisibility(8);
            this.f26938f.setVisibility(8);
        }
    }

    public e b(CharSequence charSequence) {
        this.f26940h = charSequence;
        return this;
    }

    public void c(String str) {
        TextView textView = this.f26937e;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void d(int i9) {
        this.f26946n = i9;
        TextView textView = this.f26937e;
        if (textView != null) {
            textView.setTextColor(i9);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (this.f26942j) {
            p9.a.g().f56755e.remove(this.f26939g.getClass().getName());
        }
    }

    public void e(String str) {
        TextView textView = this.f26936d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public e f(CharSequence charSequence) {
        this.f26941i = charSequence;
        return this;
    }

    public void g() {
    }

    public void h(int i9) {
        Window window = this.f26949q;
        if (window != null) {
            window.setGravity(i9);
        }
    }

    public e i(CharSequence charSequence) {
        this.f26945m = charSequence;
        TextView textView = this.f26937e;
        if (textView != null) {
            textView.setText(charSequence);
        }
        return this;
    }

    public void j() {
        this.f26951s = true;
    }

    public e k(CharSequence charSequence) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        this.f26944l = spannableStringBuilder;
        spannableStringBuilder.append(charSequence);
        TextView textView = this.f26936d;
        if (textView != null) {
            textView.setText(charSequence);
        }
        return this;
    }

    public e l() {
        this.f26942j = true;
        return this;
    }

    public void m(int i9) {
        this.f26947o = i9;
        TextView textView = this.f26936d;
        if (textView != null) {
            textView.setTextColor(i9);
        }
    }

    public void n(boolean z10) {
        TextView textView = this.f26934b;
        if (textView != null) {
            if (z10) {
                textView.setMaxLines(Integer.MAX_VALUE);
            } else {
                textView.setMaxLines(2);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 != R.id.common_dialog_cancel) {
            if (id2 == R.id.common_dialog_submit && DisableDoubleClickUtils.canClick(view)) {
                a aVar = this.f26943k;
                if (aVar != null) {
                    aVar.onClick(this, true);
                    return;
                } else {
                    dismiss();
                    return;
                }
            }
            return;
        }
        a aVar2 = this.f26943k;
        if (aVar2 != null) {
            aVar2.onClick(this, false);
        }
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_commom);
        Window window = this.f26949q;
        if (window != null && window.getAttributes() != null) {
            WindowManager.LayoutParams attributes = this.f26949q.getAttributes();
            this.f26948p = attributes;
            attributes.width = -1;
            attributes.height = -2;
            this.f26949q.setAttributes(attributes);
        }
        setCanceledOnTouchOutside(this.f26950r);
        a();
        a aVar = this.f26943k;
        if (aVar != null) {
            aVar.onCreate(this);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (this.f26939g == null || isShowing()) {
            return;
        }
        Context context = this.f26939g;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
        }
        if (this.f26942j) {
            if (p9.a.g().n(this.f26939g)) {
                return;
            }
            p9.a.g().f56755e.put(this.f26939g.getClass().getName(), Boolean.TRUE);
        }
        try {
            super.show();
            getWindow().setBackgroundDrawableResource(17170445);
        } catch (Exception unused) {
        }
    }

    public e(Context context, a aVar) {
        this(context, (int) R.style.commonDialog, aVar);
    }

    public e(Context context, int i9, a aVar) {
        super(context, i9);
        this.f26946n = 0;
        this.f26947o = 0;
        this.f26939g = context;
        this.f26943k = aVar;
        this.f26949q = getWindow();
    }

    public e(Context context, boolean z10, a aVar) {
        super(context, R.style.commonDialog);
        this.f26946n = 0;
        this.f26947o = 0;
        this.f26939g = context;
        this.f26943k = aVar;
        this.f26950r = z10;
        this.f26949q = getWindow();
    }

    @Deprecated
    public e(Context context, int i9, String str, a aVar) {
        super(context, i9);
        this.f26946n = 0;
        this.f26947o = 0;
        this.f26939g = context;
        this.f26941i = str;
        this.f26943k = aVar;
        this.f26949q = getWindow();
    }
}
