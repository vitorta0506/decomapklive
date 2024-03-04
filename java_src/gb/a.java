package gb;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LivePkInvite;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f39978a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f39979b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f39980c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f39981d;

    /* renamed from: e  reason: collision with root package name */
    private ProgressBar f39982e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f39983f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f39984g;

    /* renamed from: h  reason: collision with root package name */
    private Window f39985h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f39986i;

    /* renamed from: j  reason: collision with root package name */
    private c f39987j;

    /* renamed from: gb.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class View$OnClickListenerC0430a implements View.OnClickListener {
        View$OnClickListenerC0430a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f39987j != null) {
                a.this.f39987j.b(a.this.f39978a);
            }
        }
    }

    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f39987j != null) {
                a.this.f39987j.a(a.this.f39978a);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a(Dialog dialog);

        void b(Dialog dialog);
    }

    public void c(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.update_progress_dialog_ly, (ViewGroup) null);
        Dialog dialog = new Dialog(context, R.style.loading_dialog);
        this.f39978a = dialog;
        dialog.setCancelable(false);
        this.f39978a.setContentView(inflate);
        this.f39985h = this.f39978a.getWindow();
        this.f39979b = (TextView) inflate.findViewById(R.id.update_tips);
        this.f39980c = (LinearLayout) inflate.findViewById(R.id.update_progress_bar_ly);
        this.f39981d = (TextView) inflate.findViewById(R.id.update_progress_percent_text);
        this.f39982e = (ProgressBar) inflate.findViewById(R.id.update_progress_bar);
        this.f39983f = (TextView) inflate.findViewById(R.id.update_cancel);
        TextView textView = (TextView) inflate.findViewById(R.id.update_confirm);
        this.f39984g = textView;
        textView.setOnClickListener(new View$OnClickListenerC0430a());
        this.f39983f.setOnClickListener(new b());
    }

    public void d() {
        Dialog dialog = this.f39978a;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public boolean e() {
        Dialog dialog = this.f39978a;
        return dialog != null && dialog.isShowing();
    }

    public void f(String str) {
        TextView textView = this.f39983f;
        if (textView == null) {
            return;
        }
        textView.setText(str);
    }

    public void g(boolean z10) {
        Dialog dialog = this.f39978a;
        if (dialog != null) {
            dialog.setCancelable(z10);
        }
    }

    public void h(boolean z10) {
        Dialog dialog = this.f39978a;
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(z10);
        }
    }

    public void i(String str) {
        TextView textView = this.f39984g;
        if (textView == null) {
            return;
        }
        textView.setText(str);
    }

    public void j(boolean z10) {
        this.f39986i = z10;
        if (z10) {
            this.f39983f.setVisibility(8);
        }
    }

    public void k(c cVar) {
        this.f39987j = cVar;
    }

    public void l(int i9) {
        LinearLayout linearLayout = this.f39980c;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        TextView textView = this.f39981d;
        if (textView != null) {
            textView.setText(i9 + "%");
        }
        ProgressBar progressBar = this.f39982e;
        if (progressBar != null) {
            progressBar.setProgress(i9);
        }
    }

    public void m(String str) {
        TextView textView = this.f39979b;
        if (textView == null) {
            return;
        }
        if (textView.getVisibility() == 8) {
            this.f39979b.setVisibility(0);
        }
        this.f39979b.setText(str);
    }

    public void n() {
        Dialog dialog = this.f39978a;
        if (dialog != null) {
            dialog.create();
            com.guochao.faceshow.aaspring.modulars.live.pk.a.o().f19756c = this.f39978a;
            com.guochao.faceshow.aaspring.modulars.live.pk.a.o().g(new LivePkInvite(3));
        }
        Window window = this.f39985h;
        if (window == null || window.getAttributes() == null) {
            return;
        }
        this.f39985h.setGravity(17);
    }

    public void o() {
        if (this.f39986i) {
            this.f39984g.setVisibility(8);
        }
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        Dialog dialog = this.f39978a;
        if (dialog != null) {
            dialog.setOnDismissListener(onDismissListener);
        }
    }
}
