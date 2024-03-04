package f8;

import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.ViewStub;
import android.widget.EditText;
import android.widget.ImageView;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class e extends f8.a {

    /* renamed from: d  reason: collision with root package name */
    private EditText f39661d;

    /* renamed from: e  reason: collision with root package name */
    private b f39662e;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (e.this.f39662e != null) {
                e.this.f39662e.a(e.this.f39661d.getText().toString());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(String str);
    }

    public e(ViewStub viewStub) {
        super(viewStub);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        view.setSelected(!view.isSelected());
        int selectionStart = this.f39661d.getSelectionStart();
        if (view.isSelected()) {
            this.f39661d.setTransformationMethod(PasswordTransformationMethod.getInstance());
            ((ImageView) view).setImageResource(R.mipmap.password_hiding);
        } else {
            this.f39661d.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
            ((ImageView) view).setImageResource(R.mipmap.password_visible);
        }
        this.f39661d.setSelection(selectionStart);
    }

    @Override // f8.a
    protected void a(View view) {
        EditText editText = (EditText) view.findViewById(R.id.et_pwd);
        this.f39661d = editText;
        editText.addTextChangedListener(new a());
        view.findViewById(R.id.iv_pwd).setOnClickListener(new View.OnClickListener() { // from class: f8.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                e.this.h(view2);
            }
        });
    }

    public String g() {
        EditText editText = this.f39661d;
        return editText == null ? "" : editText.getText().toString();
    }

    public void setOnTextChangeListener(b bVar) {
        this.f39662e = bVar;
    }
}
