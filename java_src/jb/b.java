package jb;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f53187a;

    /* renamed from: b  reason: collision with root package name */
    private Window f53188b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f53189c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f53190d;

    public void a(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.user_update_dialog, (ViewGroup) null);
        Dialog dialog = new Dialog(context, R.style.loading_dialog);
        this.f53187a = dialog;
        dialog.setContentView(inflate);
        this.f53187a.setCancelable(false);
        this.f53187a.setCanceledOnTouchOutside(false);
        this.f53188b = this.f53187a.getWindow();
        this.f53189c = (TextView) inflate.findViewById(R.id.user_dialog_update_tips);
        this.f53190d = (TextView) inflate.findViewById(R.id.user_dialog_update_level);
        this.f53189c.setText(BaseApplication.getInstance().getText(R.string.user_update_tips));
    }

    public void b() {
        Dialog dialog = this.f53187a;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    public boolean c() {
        Dialog dialog = this.f53187a;
        return dialog != null && dialog.isShowing();
    }

    public void d(boolean z10) {
        Dialog dialog = this.f53187a;
        if (dialog != null) {
            dialog.setCancelable(z10);
        }
    }

    public void e(boolean z10) {
        Dialog dialog = this.f53187a;
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(z10);
        }
    }

    public void f(String str) {
        TextView textView = this.f53190d;
        if (textView == null) {
            return;
        }
        textView.setText("LV." + str);
    }

    public void g() {
        Dialog dialog = this.f53187a;
        if (dialog != null) {
            dialog.show();
        }
        Window window = this.f53188b;
        if (window == null || window.getAttributes() == null) {
            return;
        }
        WindowManager.LayoutParams attributes = this.f53188b.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        this.f53188b.setAttributes(attributes);
        this.f53188b.setGravity(17);
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        Dialog dialog = this.f53187a;
        if (dialog != null) {
            dialog.setOnDismissListener(onDismissListener);
        }
    }
}
