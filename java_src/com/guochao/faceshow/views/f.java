package com.guochao.faceshow.views;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.guochao.faceshow.R;
/* loaded from: classes4.dex */
public class f extends Dialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private TextView f26952a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f26953b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f26954c;

    /* renamed from: d  reason: collision with root package name */
    private Context f26955d;

    /* renamed from: e  reason: collision with root package name */
    private String f26956e;

    /* renamed from: f  reason: collision with root package name */
    private a f26957f;

    /* renamed from: g  reason: collision with root package name */
    private String f26958g;

    /* loaded from: classes4.dex */
    public interface a {
        void onClick(Dialog dialog, boolean z10);
    }

    public f(Context context, int i9, String str, a aVar) {
        super(context, i9);
        this.f26955d = context;
        this.f26956e = str;
        this.f26957f = aVar;
    }

    private void a() {
        this.f26952a = (TextView) findViewById(R.id.content);
        TextView textView = (TextView) findViewById(R.id.submit);
        this.f26953b = textView;
        textView.setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.ivclose);
        this.f26954c = imageView;
        imageView.setOnClickListener(this);
        if (!TextUtils.isEmpty(this.f26956e)) {
            this.f26952a.setText(this.f26956e);
        }
        if (TextUtils.isEmpty(this.f26958g)) {
            return;
        }
        this.f26953b.setText(this.f26958g);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar;
        int id2 = view.getId();
        if (id2 != R.id.ivclose) {
            if (id2 == R.id.submit && (aVar = this.f26957f) != null) {
                aVar.onClick(this, true);
                return;
            }
            return;
        }
        a aVar2 = this.f26957f;
        if (aVar2 != null) {
            aVar2.onClick(this, false);
        }
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_income_common);
        setCanceledOnTouchOutside(false);
        a();
    }
}
