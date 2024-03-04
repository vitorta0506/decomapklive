package f8;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewStub;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import e8.b;
/* loaded from: classes3.dex */
public class c extends f8.a {

    /* renamed from: d  reason: collision with root package name */
    private View f39651d;

    /* renamed from: e  reason: collision with root package name */
    private View f39652e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f39653f;

    /* renamed from: g  reason: collision with root package name */
    private EditText f39654g;

    /* renamed from: h  reason: collision with root package name */
    private d f39655h;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            int length = c.this.f39654g.getText().toString().trim().length();
            if (c.this.f39655h != null) {
                c.this.f39655h.a(length >= 4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f39657a;

        b(View view) {
            this.f39657a = view;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ToastUtils.showToast(this.f39657a.getContext(), this.f39657a.getContext().getString(R.string.Validation_email_sent));
        }
    }

    /* renamed from: f8.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0422c implements b.InterfaceC0386b {
        C0422c() {
        }

        @Override // e8.b.InterfaceC0386b
        public void a(long j10) {
            c.this.f39651d.setVisibility(8);
            c.this.f39652e.setVisibility(0);
            c.this.f39653f.setText(String.format("%s s", Long.valueOf(j10 / 1000)));
        }

        @Override // e8.b.InterfaceC0386b
        public void onFinish() {
            c.this.f39651d.setVisibility(0);
            c.this.f39652e.setVisibility(8);
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(boolean z10);
    }

    public c(ViewStub viewStub) {
        super(viewStub);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(View view, View view2) {
        l();
        new PostRequest("tokens/userout/sendLogoutCodeByEmail").M(new b(view));
    }

    private void l() {
        e8.a.c().g();
        this.f39651d.setVisibility(8);
        this.f39652e.setVisibility(0);
    }

    @Override // f8.a
    protected void a(final View view) {
        ((TextView) view.findViewById(R.id.et_phone)).setText(StringUtils.setEncryptionEmail(b8.e.g().c().email));
        EditText editText = (EditText) view.findViewById(R.id.et_code);
        this.f39654g = editText;
        editText.addTextChangedListener(new a());
        this.f39651d = view.findViewById(R.id.rl_send);
        this.f39652e = view.findViewById(R.id.rl_send_hide);
        this.f39653f = (TextView) view.findViewById(R.id.tv_code);
        if (e8.a.c().e()) {
            this.f39651d.setVisibility(8);
            this.f39652e.setVisibility(0);
        }
        this.f39651d.setOnClickListener(new View.OnClickListener() { // from class: f8.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                c.this.k(view, view2);
            }
        });
        e8.a.c().d();
        e8.a.c().setOnTimerChangeListener(new C0422c());
    }

    public String j() {
        EditText editText = this.f39654g;
        return editText == null ? "" : editText.getText().toString();
    }

    public void setOnNextEnableListener(d dVar) {
        this.f39655h = dVar;
    }
}
