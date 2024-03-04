package com.guochao.faceshow.views;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
/* loaded from: classes4.dex */
public class n extends Dialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private TextView f27029a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f27030b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f27031c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f27032d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f27033e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f27034f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f27035g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f27036h;

    /* renamed from: i  reason: collision with root package name */
    private EditText f27037i;

    /* renamed from: j  reason: collision with root package name */
    private Context f27038j;

    /* renamed from: k  reason: collision with root package name */
    private String f27039k;

    /* renamed from: l  reason: collision with root package name */
    private b f27040l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String trim = editable.toString().trim();
            if (n.this.f27037i.getId() == R.id.etPwdReal) {
                char[] charArray = trim.toCharArray();
                for (int i9 = 0; i9 < charArray.length; i9++) {
                    if (i9 == 0) {
                        n.this.f27031c.setText("•");
                    } else if (i9 == 1) {
                        n.this.f27032d.setText("•");
                    } else if (i9 == 2) {
                        n.this.f27033e.setText("•");
                    } else if (i9 == 3) {
                        n.this.f27034f.setText("•");
                    } else if (i9 == 4) {
                        n.this.f27035g.setText("•");
                    } else if (i9 == 5) {
                        n.this.f27036h.setText("•");
                    }
                }
                n nVar = n.this;
                nVar.k(charArray.length, nVar.f27031c, n.this.f27032d, n.this.f27033e, n.this.f27034f, n.this.f27035g, n.this.f27036h);
                if (charArray.length == 6) {
                    SoftKeyBoardUtils.closeSoftKeyBoard(n.this.f27038j, n.this.f27037i);
                    if (n.this.f27040l == null || n.this.f27037i.getText().toString().isEmpty() || n.this.f27037i.getText().toString().length() != 6) {
                        return;
                    }
                    b bVar = n.this.f27040l;
                    n nVar2 = n.this;
                    bVar.onConfirm(nVar2, true, nVar2.f27037i.getText().toString().trim());
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void onClose(Dialog dialog, boolean z10);

        void onConfirm(Dialog dialog, boolean z10, String str);
    }

    public n(Context context, int i9, String str, b bVar) {
        super(context, i9);
        this.f27038j = context;
        this.f27039k = str;
        this.f27040l = bVar;
    }

    private void l() {
        this.f27029a = (TextView) findViewById(R.id.content);
        this.f27030b = (TextView) findViewById(R.id.common_dialog_cancel);
        this.f27031c = (TextView) findViewById(R.id.etPwd1);
        this.f27032d = (TextView) findViewById(R.id.etPwd2);
        this.f27033e = (TextView) findViewById(R.id.etPwd3);
        this.f27034f = (TextView) findViewById(R.id.etPwd4);
        this.f27035g = (TextView) findViewById(R.id.etPwd5);
        this.f27036h = (TextView) findViewById(R.id.etPwd6);
        FontUtils.setFontForView(findViewById(R.id.password), 1);
        this.f27037i = (EditText) findViewById(R.id.etPwdReal);
        this.f27030b.setOnClickListener(this);
        SoftKeyBoardUtils.openSoftKeyBoard(this.f27037i);
        if (!TextUtils.isEmpty(this.f27039k)) {
            this.f27029a.setText(this.f27039k);
        }
        this.f27037i.addTextChangedListener(new a());
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        j();
        SoftKeyBoardUtils.closeSoftKeyBoard(this.f27038j, this.f27037i);
    }

    public void j() {
        this.f27031c.setText("");
        this.f27032d.setText("");
        this.f27033e.setText("");
        this.f27034f.setText("");
        this.f27035g.setText("");
        this.f27036h.setText("");
        this.f27037i.setText("");
    }

    void k(int i9, TextView... textViewArr) {
        for (int i10 = 0; i10 < 6; i10++) {
            if (i10 > i9 - 1) {
                textViewArr[i10].setText("");
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.getId();
        b bVar = this.f27040l;
        if (bVar != null) {
            bVar.onClose(this, false);
            SoftKeyBoardUtils.closeSoftKeyBoard(this.f27038j, this.f27037i);
        }
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_private_live_password);
        Window window = getWindow();
        if (window != null && window.getAttributes() != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
        }
        setCanceledOnTouchOutside(false);
        l();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        j();
        SoftKeyBoardUtils.openSoftKeyBoard(this.f27037i);
    }
}
