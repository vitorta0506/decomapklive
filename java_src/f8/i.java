package f8;

import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class i extends a {

    /* renamed from: d  reason: collision with root package name */
    private ImageView f39687d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f39688e;

    public i(ViewStub viewStub) {
        super(viewStub);
    }

    @Override // f8.a
    protected void a(View view) {
        this.f39688e = (TextView) view.findViewById(R.id.third_name);
        this.f39687d = (ImageView) view.findViewById(R.id.third_icon);
    }

    public void d(@DrawableRes int i9, String str) {
        super.c();
        if (this.f39647b == null) {
            return;
        }
        this.f39687d.setImageResource(i9);
        this.f39688e.setText(this.f39647b.getContext().getString(R.string.third_cancel_account, str));
    }
}
