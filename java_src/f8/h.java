package f8;

import android.content.res.Resources;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewStub;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.login.fragment.RecaptchaDialogFragment;
import com.guochao.faceshow.aaspring.utils.CountryUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Md5;
import com.guochao.faceshow.utils.SystemUtil;
import e8.b;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class h extends f8.a {

    /* renamed from: d  reason: collision with root package name */
    private View f39666d;

    /* renamed from: e  reason: collision with root package name */
    private View f39667e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f39668f;

    /* renamed from: g  reason: collision with root package name */
    private EditText f39669g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f39670h;

    /* renamed from: i  reason: collision with root package name */
    private ImageView f39671i;

    /* renamed from: j  reason: collision with root package name */
    private String f39672j;

    /* renamed from: k  reason: collision with root package name */
    private String f39673k;

    /* renamed from: l  reason: collision with root package name */
    BaseActivity f39674l;

    /* renamed from: m  reason: collision with root package name */
    RecaptchaHandle f39675m;

    /* renamed from: n  reason: collision with root package name */
    RecaptchaDialogFragment f39676n;

    /* renamed from: o  reason: collision with root package name */
    private g f39677o;

    /* loaded from: classes3.dex */
    class a implements com.guochao.faceshow.aaspring.modulars.login.utils.h {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void a(Exception exc) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void b(RecaptchaHandle recaptchaHandle) {
            h.this.f39675m = recaptchaHandle;
        }
    }

    /* loaded from: classes3.dex */
    class b implements CountryUtils.NationalFlagAndCodeCallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f39679a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f39680b;

        /* loaded from: classes3.dex */
        class a implements CountryUtils.CountryCallBack {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.CountryCallBack
            public void onResponse(@Nullable List<CountryData> list) {
                if (h.this.f39670h == null || list == null) {
                    return;
                }
                for (CountryData countryData : list) {
                    if (countryData.getCoding().equalsIgnoreCase(b.this.f39680b)) {
                        String countryNum = countryData.getCountryNum();
                        hc.a.h(h.this.f39671i, countryData.getLogo(), R.mipmap.ic_earth);
                        h.this.f39670h.setText(String.format("+%s", countryNum));
                        return;
                    }
                }
            }
        }

        b(View view, String str) {
            this.f39679a = view;
            this.f39680b = str;
        }

        @Override // com.guochao.faceshow.aaspring.utils.CountryUtils.NationalFlagAndCodeCallBack
        public void onResponse(@Nullable CountryData countryData) {
            if (countryData != null) {
                String countryNum = countryData.getCountryNum();
                String logo = countryData.getLogo();
                if (h.this.f39671i != null) {
                    if ("1".equals(countryNum) && !TextUtils.isEmpty(countryData.getCoding())) {
                        if (countryData.getCoding().equalsIgnoreCase("US")) {
                            h.this.f39671i.setImageResource(R.mipmap.ic_country_america);
                        } else {
                            h.this.f39671i.setImageResource(R.mipmap.ic_country_canada);
                        }
                    } else {
                        hc.a.h(h.this.f39671i, logo, R.mipmap.ic_earth);
                    }
                }
                if (h.this.f39670h != null) {
                    h.this.f39670h.setText(String.format("+%s", countryNum));
                    return;
                }
                return;
            }
            CountryUtils.getCountryData(this.f39679a.getContext(), new a());
        }
    }

    /* loaded from: classes3.dex */
    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            int length = h.this.f39669g.getText().toString().trim().length();
            if (h.this.f39677o != null) {
                h.this.f39677o.a(length >= 4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements com.guochao.faceshow.aaspring.modulars.login.utils.g {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void a(Exception exc) {
            h.this.f39676n = new RecaptchaDialogFragment();
            h hVar = h.this;
            hVar.f39676n.show(hVar.f39674l.getSupportFragmentManager(), "RecaptchaDialogFragment");
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void b(String str) {
            h.this.s(str, false);
        }
    }

    /* loaded from: classes3.dex */
    class e implements b.InterfaceC0386b {
        e() {
        }

        @Override // e8.b.InterfaceC0386b
        public void a(long j10) {
            h.this.f39666d.setVisibility(8);
            h.this.f39667e.setVisibility(0);
            h.this.f39668f.setText(String.format("%s s", Long.valueOf(j10 / 1000)));
        }

        @Override // e8.b.InterfaceC0386b
        public void onFinish() {
            h.this.f39666d.setVisibility(0);
            h.this.f39667e.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            h.this.u();
            BaseActivity baseActivity = h.this.f39674l;
            ToastUtils.showToast(baseActivity, baseActivity.getString(R.string.code_has_been_sented));
        }
    }

    /* loaded from: classes3.dex */
    public interface g {
        void a(boolean z10);

        void b();
    }

    public h(BaseActivity baseActivity, ViewStub viewStub) {
        super(viewStub);
        this.f39674l = baseActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(View view) {
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().c(this.f39674l, this.f39675m, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(View view) {
        g gVar = this.f39677o;
        if (gVar != null) {
            gVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        e8.b.c().g();
        this.f39666d.setVisibility(8);
        this.f39667e.setVisibility(0);
    }

    @Override // f8.a
    protected void a(View view) {
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().e(this.f39674l, new a());
        ((TextView) view.findViewById(R.id.et_phone)).setText(StringUtils.setEncryptionMobile(b8.e.g().c().mobile));
        this.f39670h = (TextView) view.findViewById(R.id.tv_country);
        this.f39671i = (ImageView) view.findViewById(R.id.rv_country);
        String str = "US";
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            if (!TextUtils.isEmpty(locales.get(0).getCountry())) {
                str = locales.get(0).getCountry();
            }
        } else if (!TextUtils.isEmpty(Locale.getDefault().getCountry())) {
            str = Locale.getDefault().getCountry();
        }
        CountryUtils.getNationalFlagAndCode(view.getContext(), new b(view, str));
        EditText editText = (EditText) view.findViewById(R.id.et_code);
        this.f39669g = editText;
        editText.addTextChangedListener(new c());
        this.f39666d = view.findViewById(R.id.rl_send);
        this.f39667e = view.findViewById(R.id.rl_send_hide);
        this.f39668f = (TextView) view.findViewById(R.id.tv_code);
        if (e8.b.c().e()) {
            this.f39666d.setVisibility(8);
            this.f39667e.setVisibility(0);
        }
        this.f39666d.setOnClickListener(new View.OnClickListener() { // from class: f8.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                h.this.q(view2);
            }
        });
        e8.b.c().d();
        e8.b.c().setOnTimerChangeListener(new e());
        view.findViewById(R.id.ll_country_hide).setOnClickListener(new View.OnClickListener() { // from class: f8.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                h.this.r(view2);
            }
        });
    }

    public String n() {
        EditText editText = this.f39669g;
        return editText == null ? "" : editText.getText().toString();
    }

    public String o() {
        String str = this.f39672j;
        return str == null ? SpUtils.getStr(this.f39647b.getContext(), "country_num") : str;
    }

    public RecaptchaDialogFragment p() {
        return this.f39676n;
    }

    public void s(String str, boolean z10) {
        String str2 = System.currentTimeMillis() + "";
        String upperCase = new Md5().getMD5Str(str2 + Contants.salt).toUpperCase();
        PostRequest Q = new PostRequest().O(this.f39674l).Q("api/user/register/sendCodeByMobile");
        Q.D("recaptchaToken", str).D("mobile", b8.e.g().c().mobile).B("type", 3).D("areaCode", o()).D("deviceId", SystemUtil.getDeviceId()).D("key", upperCase).D("unixtime", str2);
        if (z10) {
            Q.D("beFrom", "webs");
        }
        Q.M(new f());
    }

    public void setOnNextEnableListener(g gVar) {
        this.f39677o = gVar;
    }

    public void t(String str, String str2) {
        if (this.f39670h != null && !TextUtils.isEmpty(str)) {
            this.f39672j = str;
            this.f39670h.setText(String.format("+%s", str));
        }
        if (this.f39671i == null || TextUtils.isEmpty(str2)) {
            return;
        }
        this.f39673k = str2;
        hc.a.h(this.f39671i, str2, R.mipmap.ic_earth);
    }
}
