package ob;

import android.app.Application;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
/* loaded from: classes4.dex */
public class h extends Toast implements pb.b {

    /* renamed from: a  reason: collision with root package name */
    private TextView f55578a;

    public h(Application application) {
        super(application);
    }

    public /* synthetic */ TextView a(View view) {
        return pb.a.a(this, view);
    }

    @Override // android.widget.Toast, pb.b
    public void setText(CharSequence charSequence) {
        super.setText(charSequence);
        TextView textView = this.f55578a;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    @Override // android.widget.Toast, pb.b
    public void setView(View view) {
        super.setView(view);
        if (view == null) {
            this.f55578a = null;
        } else {
            this.f55578a = a(view);
        }
    }
}
