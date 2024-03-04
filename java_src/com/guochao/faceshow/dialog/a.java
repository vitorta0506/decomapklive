package com.guochao.faceshow.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public class a extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private TextView f25227a;

    /* renamed from: b  reason: collision with root package name */
    private String f25228b;

    /* renamed from: c  reason: collision with root package name */
    Activity f25229c;

    /* renamed from: com.guochao.faceshow.dialog.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class View$OnClickListenerC0247a implements View.OnClickListener {
        View$OnClickListenerC0247a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.dismiss();
        }
    }

    public a(Activity activity, String str) {
        super(activity);
        this.f25229c = activity;
        this.f25228b = str;
        setCanceledOnTouchOutside(false);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = (int) (((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getWidth() * 0.7d);
        window.setAttributes(attributes);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawableResource(R.drawable.loc_background);
        setContentView(R.layout.ads_dialog);
        View findViewById = findViewById(R.id.got_it);
        TextView textView = (TextView) findViewById(R.id.dimands_txt);
        this.f25227a = textView;
        textView.setText("+" + this.f25228b);
        findViewById.setOnClickListener(new View$OnClickListenerC0247a());
    }
}
