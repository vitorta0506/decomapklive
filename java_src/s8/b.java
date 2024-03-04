package s8;

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
import android.widget.EditText;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
/* loaded from: classes3.dex */
public class b extends Dialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup f57685a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f57686b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f57687c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f57688d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f57689e;

    /* renamed from: f  reason: collision with root package name */
    private View f57690f;

    /* renamed from: g  reason: collision with root package name */
    private Context f57691g;

    /* renamed from: h  reason: collision with root package name */
    private CharSequence f57692h;

    /* renamed from: i  reason: collision with root package name */
    private a f57693i;

    /* renamed from: j  reason: collision with root package name */
    private SpannableStringBuilder f57694j;

    /* renamed from: k  reason: collision with root package name */
    private CharSequence f57695k;

    /* renamed from: l  reason: collision with root package name */
    private int f57696l;

    /* renamed from: m  reason: collision with root package name */
    private int f57697m;

    /* renamed from: n  reason: collision with root package name */
    private WindowManager.LayoutParams f57698n;

    /* renamed from: o  reason: collision with root package name */
    private Window f57699o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f57700p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f57701q;

    /* loaded from: classes3.dex */
    public interface a {
        void onClick(Dialog dialog, boolean z10);

        void onConfirm(Dialog dialog, String str);

        void onCreate(b bVar);
    }

    public b(Context context, a aVar) {
        this(context, R.style.commonDialog, aVar);
    }

    private void a() {
        this.f57685a = (ViewGroup) findViewById(R.id.common_dialog_root);
        this.f57686b = (TextView) findViewById(R.id.common_dialog_title);
        this.f57687c = (EditText) findViewById(R.id.common_dialog_content);
        this.f57688d = (TextView) findViewById(R.id.common_dialog_submit);
        this.f57689e = (TextView) findViewById(R.id.common_dialog_cancel);
        this.f57690f = findViewById(R.id.common_dialog_vertical_line);
        this.f57688d.setOnClickListener(this);
        this.f57689e.setOnClickListener(this);
        int i9 = this.f57696l;
        if (i9 != 0) {
            this.f57689e.setTextColor(i9);
        }
        int i10 = this.f57697m;
        if (i10 != 0) {
            this.f57688d.setTextColor(i10);
        }
        if (!TextUtils.isEmpty(this.f57692h)) {
            this.f57686b.setVisibility(0);
            this.f57686b.setText(this.f57692h);
        } else {
            this.f57686b.setVisibility(8);
        }
        if (!TextUtils.isEmpty(this.f57694j)) {
            this.f57688d.setText(this.f57694j);
        }
        if (!TextUtils.isEmpty(this.f57695k)) {
            this.f57689e.setText(this.f57695k);
        }
        if (this.f57701q) {
            this.f57689e.setVisibility(8);
            this.f57690f.setVisibility(8);
        }
    }

    public b b(CharSequence charSequence) {
        this.f57692h = charSequence;
        return this;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 != R.id.common_dialog_cancel) {
            if (id2 == R.id.common_dialog_submit && DisableDoubleClickUtils.canClick(view)) {
                a aVar = this.f57693i;
                if (aVar != null) {
                    aVar.onConfirm(this, this.f57687c.getText().toString());
                    return;
                } else {
                    dismiss();
                    return;
                }
            }
            return;
        }
        a aVar2 = this.f57693i;
        if (aVar2 != null) {
            aVar2.onClick(this, false);
        }
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_add_friend_group);
        Window window = this.f57699o;
        if (window != null && window.getAttributes() != null) {
            WindowManager.LayoutParams attributes = this.f57699o.getAttributes();
            this.f57698n = attributes;
            attributes.width = -1;
            attributes.height = -2;
            this.f57699o.setAttributes(attributes);
        }
        setCanceledOnTouchOutside(this.f57700p);
        a();
        a aVar = this.f57693i;
        if (aVar != null) {
            aVar.onCreate(this);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (this.f57691g == null || isShowing()) {
            return;
        }
        Context context = this.f57691g;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
        }
        try {
            super.show();
            getWindow().setBackgroundDrawableResource(17170445);
        } catch (Exception unused) {
        }
    }

    public b(Context context, int i9, a aVar) {
        super(context, i9);
        this.f57696l = 0;
        this.f57697m = 0;
        this.f57691g = context;
        this.f57693i = aVar;
        this.f57699o = getWindow();
    }
}
