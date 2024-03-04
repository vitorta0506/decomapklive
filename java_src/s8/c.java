package s8;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
/* loaded from: classes3.dex */
public class c extends Dialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup f57702a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f57703b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f57704c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f57705d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f57706e;

    /* renamed from: f  reason: collision with root package name */
    private View f57707f;

    /* renamed from: g  reason: collision with root package name */
    private Context f57708g;

    /* renamed from: h  reason: collision with root package name */
    private CharSequence f57709h;

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f57710i;

    /* renamed from: j  reason: collision with root package name */
    private InterfaceC0637c f57711j;

    /* renamed from: k  reason: collision with root package name */
    private SpannableStringBuilder f57712k;

    /* renamed from: l  reason: collision with root package name */
    private CharSequence f57713l;

    /* renamed from: m  reason: collision with root package name */
    private int f57714m;

    /* renamed from: n  reason: collision with root package name */
    private int f57715n;

    /* renamed from: o  reason: collision with root package name */
    private WindowManager.LayoutParams f57716o;

    /* renamed from: p  reason: collision with root package name */
    private Window f57717p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f57718q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f57719r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c.this.f57704c.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f57721a;

        b(ImageView imageView) {
            this.f57721a = imageView;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (charSequence.toString().isEmpty()) {
                this.f57721a.setVisibility(8);
            } else {
                this.f57721a.setVisibility(0);
            }
        }
    }

    /* renamed from: s8.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0637c {
        void onClick(Dialog dialog, boolean z10);

        void onConfirm(Dialog dialog, String str);

        void onCreate(c cVar);
    }

    public c(Context context, InterfaceC0637c interfaceC0637c) {
        this(context, R.style.commonDialog, interfaceC0637c);
    }

    private void c() {
        this.f57702a = (ViewGroup) findViewById(R.id.common_dialog_root);
        this.f57703b = (TextView) findViewById(R.id.common_dialog_title);
        this.f57704c = (EditText) findViewById(R.id.common_dialog_content);
        this.f57705d = (TextView) findViewById(R.id.common_dialog_submit);
        this.f57706e = (TextView) findViewById(R.id.common_dialog_cancel);
        this.f57707f = findViewById(R.id.common_dialog_vertical_line);
        ImageView imageView = (ImageView) findViewById(R.id.clear_content);
        imageView.setOnClickListener(new a());
        this.f57704c.addTextChangedListener(new b(imageView));
        this.f57705d.setOnClickListener(this);
        this.f57706e.setOnClickListener(this);
        int i9 = this.f57714m;
        if (i9 != 0) {
            this.f57706e.setTextColor(i9);
        }
        int i10 = this.f57715n;
        if (i10 != 0) {
            this.f57705d.setTextColor(i10);
        }
        if (!TextUtils.isEmpty(this.f57709h)) {
            this.f57703b.setVisibility(0);
            this.f57703b.setText(this.f57709h);
        } else {
            this.f57703b.setVisibility(8);
        }
        if (!TextUtils.isEmpty(this.f57710i)) {
            this.f57704c.setText(this.f57710i);
            this.f57704c.setSelection(this.f57710i.length());
        }
        if (!TextUtils.isEmpty(this.f57712k)) {
            this.f57705d.setText(this.f57712k);
        }
        if (!TextUtils.isEmpty(this.f57713l)) {
            this.f57706e.setText(this.f57713l);
        }
        if (this.f57719r) {
            this.f57706e.setVisibility(8);
            this.f57707f.setVisibility(8);
        }
    }

    public EditText b() {
        return this.f57704c;
    }

    public c d(CharSequence charSequence) {
        this.f57709h = charSequence;
        return this;
    }

    public c e(CharSequence charSequence) {
        this.f57710i = charSequence;
        return this;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 != R.id.common_dialog_cancel) {
            if (id2 == R.id.common_dialog_submit && DisableDoubleClickUtils.canClick(view)) {
                InterfaceC0637c interfaceC0637c = this.f57711j;
                if (interfaceC0637c != null) {
                    interfaceC0637c.onConfirm(this, this.f57704c.getText().toString());
                    return;
                } else {
                    dismiss();
                    return;
                }
            }
            return;
        }
        InterfaceC0637c interfaceC0637c2 = this.f57711j;
        if (interfaceC0637c2 != null) {
            interfaceC0637c2.onClick(this, false);
        }
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_rename_friend_group);
        Window window = this.f57717p;
        if (window != null && window.getAttributes() != null) {
            WindowManager.LayoutParams attributes = this.f57717p.getAttributes();
            this.f57716o = attributes;
            attributes.width = -1;
            attributes.height = -2;
            this.f57717p.setAttributes(attributes);
        }
        setCanceledOnTouchOutside(this.f57718q);
        c();
        InterfaceC0637c interfaceC0637c = this.f57711j;
        if (interfaceC0637c != null) {
            interfaceC0637c.onCreate(this);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (this.f57708g == null || isShowing()) {
            return;
        }
        Context context = this.f57708g;
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

    public c(Context context, int i9, InterfaceC0637c interfaceC0637c) {
        super(context, i9);
        this.f57714m = 0;
        this.f57715n = 0;
        this.f57708g = context;
        this.f57711j = interfaceC0637c;
        this.f57717p = getWindow();
    }
}
