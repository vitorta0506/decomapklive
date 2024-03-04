package com.guochao.faceshow.views;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
/* loaded from: classes4.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final View f27043a;

    /* renamed from: b  reason: collision with root package name */
    private final EditText f27044b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27045c;

    /* renamed from: d  reason: collision with root package name */
    private String f27046d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f27047e;

    /* renamed from: f  reason: collision with root package name */
    private final View f27048f;

    /* renamed from: g  reason: collision with root package name */
    private c f27049g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (TextUtils.isEmpty(charSequence)) {
                if (p.this.f27047e) {
                    p.this.f27048f.setVisibility(8);
                }
                if (p.this.f27049g != null) {
                    p.this.f27049g.a("");
                    return;
                }
                return;
            }
            if (p.this.f27047e) {
                p.this.f27048f.setVisibility(0);
            }
            p.this.o(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements TextView.OnEditorActionListener {
        b() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
            if (i9 == 3) {
                SoftKeyBoardUtils.closeSoftKeyBoardNow(textView.getContext(), p.this.f27044b);
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a(String str);

        void b();
    }

    public p(View view) {
        this.f27043a = view;
        this.f27044b = (EditText) view.findViewById(R.id.et_search);
        View findViewById = view.findViewById(R.id.delete_edit);
        this.f27048f = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.views.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                p.this.i(view2);
            }
        });
        h(view);
    }

    private void h(View view) {
        this.f27044b.addTextChangedListener(new a());
        this.f27044b.setOnEditorActionListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        this.f27044b.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(CharSequence charSequence) {
        if (this.f27045c) {
            return;
        }
        this.f27045c = true;
        if (TextUtils.isEmpty(charSequence)) {
            this.f27045c = false;
            if (!TextUtils.isEmpty(this.f27046d) && !this.f27044b.getText().toString().equals(this.f27046d.toString()) && !TextUtils.isEmpty(this.f27044b.getText().toString())) {
                o(this.f27044b.getText());
                return;
            }
            c cVar = this.f27049g;
            if (cVar != null) {
                cVar.b();
            }
        } else if (this.f27049g != null) {
            this.f27046d = charSequence.toString();
            this.f27049g.a(charSequence.toString());
        }
    }

    public CharSequence g() {
        EditText editText = this.f27044b;
        return editText != null ? editText.getText() : "";
    }

    public void j(boolean z10) {
        this.f27045c = false;
        if (!z10 || this.f27046d == null || this.f27044b.getText().toString().equals(this.f27046d.toString())) {
            return;
        }
        o(this.f27044b.getText());
    }

    public void k(c cVar) {
        this.f27049g = cVar;
    }

    public void l(boolean z10) {
        this.f27047e = z10;
    }

    public void m(boolean z10) {
        this.f27045c = z10;
    }

    public void n() {
        View view = this.f27043a;
        if (view != null) {
            view.setVisibility(0);
        }
    }
}
