package com.guochao.faceshow.views;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.DownloadDialogProgressView;
/* loaded from: classes4.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f27022a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f27023b;

    /* renamed from: c  reason: collision with root package name */
    private DownloadDialogProgressView f27024c;

    /* renamed from: d  reason: collision with root package name */
    private Window f27025d;

    /* renamed from: e  reason: collision with root package name */
    private Context f27026e;

    /* renamed from: f  reason: collision with root package name */
    private View.OnClickListener f27027f;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (m.this.f27027f != null) {
                m.this.f27027f.onClick(view);
            }
        }
    }

    public void b(Context context) {
        this.f27026e = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.loading_progress_ly, (ViewGroup) null);
        this.f27024c = (DownloadDialogProgressView) inflate.findViewById(R.id.progress_img);
        this.f27023b = (TextView) inflate.findViewById(R.id.progress_percent);
        Dialog dialog = new Dialog(context, R.style.loading_dialog);
        this.f27022a = dialog;
        dialog.setCancelable(false);
        this.f27022a.setContentView(inflate);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.cancel);
        if (imageView != null) {
            imageView.setOnClickListener(new a());
        }
        this.f27025d = this.f27022a.getWindow();
    }

    public void c() {
        DownloadDialogProgressView downloadDialogProgressView = this.f27024c;
        if (downloadDialogProgressView != null) {
            downloadDialogProgressView.clearAnimation();
        }
        Dialog dialog = this.f27022a;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public void d() {
        TextView textView = this.f27023b;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    public boolean e() {
        Dialog dialog = this.f27022a;
        return dialog != null && dialog.isShowing();
    }

    public void f(String str, View.OnClickListener onClickListener) {
        this.f27027f = onClickListener;
    }

    public void g(boolean z10) {
        Dialog dialog = this.f27022a;
        if (dialog != null) {
            dialog.setCancelable(z10);
        }
    }

    public void h(boolean z10) {
        Dialog dialog = this.f27022a;
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(z10);
        }
    }

    public void i(int i9) {
        TextView textView = this.f27023b;
        if (textView == null || this.f27024c == null) {
            return;
        }
        if (textView.getVisibility() == 8) {
            this.f27023b.setVisibility(0);
        }
        TextView textView2 = this.f27023b;
        textView2.setText(i9 + "%");
        this.f27024c.setProgress(i9);
    }

    public void j(String str) {
    }

    public void k(String str) {
    }

    public void l() {
        Dialog dialog = this.f27022a;
        if (dialog != null) {
            dialog.show();
        }
        Window window = this.f27025d;
        if (window != null && window.getAttributes() != null) {
            WindowManager.LayoutParams attributes = this.f27025d.getAttributes();
            attributes.width = -1;
            attributes.height = -1;
            this.f27025d.setAttributes(attributes);
            this.f27025d.setGravity(17);
        }
        TextView textView = this.f27023b;
        if (textView != null) {
            textView.setText("0%");
        }
        this.f27024c.setProgress(0);
    }
}
