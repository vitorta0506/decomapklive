package q7;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class a implements Language {

    /* renamed from: g  reason: collision with root package name */
    static final List<String> f57128g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    static a f57129h;

    /* renamed from: a  reason: collision with root package name */
    private boolean f57130a;

    /* renamed from: b  reason: collision with root package name */
    private Context f57131b;
    @Language.SupportedLanguage

    /* renamed from: c  reason: collision with root package name */
    private String f57132c;

    /* renamed from: d  reason: collision with root package name */
    private final List<InterfaceC0622a> f57133d;

    /* renamed from: e  reason: collision with root package name */
    private String f57134e;

    /* renamed from: f  reason: collision with root package name */
    private String f57135f;

    /* renamed from: q7.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0622a {
        void onLanguageChanged(@Language.SupportedLanguage String str, @Language.SupportedLanguage String str2);
    }

    private a() {
        List<String> list = f57128g;
        list.add(Language.JAPANESE);
        list.add(Language.SIMPLE_CHINESE);
        list.add(Language.TRADITIONAL_CHINESE_HK);
        list.add("en");
        list.add(Language.KOREAN);
        list.add(Language.FRENCH);
        list.add("it");
        list.add(Language.RUSSIAN);
        list.add(Language.SPANISH);
        list.add(Language.GERMANY);
        list.add("pt");
        list.add(Language.HINDI);
        list.add(Language.ARABIC);
        list.add(Language.VIETNAM);
        list.add(Language.THAILAND);
        list.add(Language.INDONESIA);
        list.add(Language.TURKISH);
        this.f57133d = new ArrayList();
    }

    private String a() {
        String h10 = h(g());
        return (k(h10) || "id".equals(h10)) ? h10 : BaseConfig.isChinese() ? Language.SIMPLE_CHINESE : "en";
    }

    private String b(Locale locale) {
        String locale2 = locale.toString();
        if (TextUtils.isEmpty(locale2)) {
            locale2 = "en";
        }
        return (locale2.toLowerCase().contains("hant") || locale2.toLowerCase().contains("hk") || locale2.toLowerCase().contains("tw")) ? Language.TRADITIONAL_CHINESE_HK : locale2.split("-")[0].split("_")[0].toLowerCase();
    }

    public static a e() {
        if (f57129h == null) {
            synchronized (a.class) {
                if (f57129h == null) {
                    f57129h = new a();
                }
            }
        }
        return f57129h;
    }

    private boolean k(String str) {
        return f57128g.contains(str);
    }

    public void addLanguageListener(InterfaceC0622a interfaceC0622a) {
        this.f57133d.add(interfaceC0622a);
    }

    public String c() {
        String str = TextUtils.isEmpty(this.f57132c) ? this.f57134e : this.f57132c;
        return Language.INDONESIA.equalsIgnoreCase(str) ? "id" : str;
    }

    public String d() {
        String str = TextUtils.isEmpty(this.f57132c) ? this.f57134e : this.f57132c;
        return Language.INDONESIA.equalsIgnoreCase(str) ? "id" : str;
    }

    public String f() {
        String str = this.f57135f;
        return str == null ? "" : str;
    }

    public String g() {
        String str = this.f57134e;
        return str == null ? "en" : Language.INDONESIA.equalsIgnoreCase(str) ? "id" : h(this.f57134e);
    }

    String h(String str) {
        return TextUtils.isEmpty(str) ? "en" : (Language.SIMPLE_CHINESE.equalsIgnoreCase(str) || "zh-rcn".equalsIgnoreCase(str) || "zh-hans".equalsIgnoreCase(str)) ? Language.SIMPLE_CHINESE : ("zh-hant".equalsIgnoreCase(str) || "zh-rhk".equalsIgnoreCase(str) || "zh-rtw".equalsIgnoreCase(str)) ? Language.TRADITIONAL_CHINESE_HK : str;
    }

    public void i(Context context) {
        this.f57131b = context.getApplicationContext();
        this.f57132c = SpUtils.getStr(context, "language");
        n(context);
        if (TextUtils.isEmpty(this.f57132c)) {
            this.f57132c = a();
            this.f57130a = true;
        } else {
            this.f57130a = false;
        }
        FaceCastHttpClientImpl.f16221k = this.f57132c;
        FaceCastHttpClientImpl.f16220j = this.f57134e;
        FaceCastHttpClientImpl.f16219i = this.f57135f;
    }

    public boolean j() {
        return Language.ARABIC.equals(c());
    }

    public Context l(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        Locale m10 = m();
        if (m10 == null) {
            return context;
        }
        configuration.setLocale(m10);
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocale(m10);
            LocaleList localeList = new LocaleList(m10);
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
        }
        return context.createConfigurationContext(configuration);
    }

    public Locale m() {
        if (TextUtils.isEmpty(this.f57132c)) {
            return null;
        }
        String str = this.f57132c;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -704712234:
                if (str.equals(Language.TRADITIONAL_CHINESE_HK)) {
                    c10 = 0;
                    break;
                }
                break;
            case 3121:
                if (str.equals(Language.ARABIC)) {
                    c10 = 1;
                    break;
                }
                break;
            case 3201:
                if (str.equals(Language.GERMANY)) {
                    c10 = 2;
                    break;
                }
                break;
            case 3241:
                if (str.equals("en")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3246:
                if (str.equals(Language.SPANISH)) {
                    c10 = 4;
                    break;
                }
                break;
            case 3276:
                if (str.equals(Language.FRENCH)) {
                    c10 = 5;
                    break;
                }
                break;
            case 3329:
                if (str.equals(Language.HINDI)) {
                    c10 = 6;
                    break;
                }
                break;
            case 3365:
                if (str.equals(Language.INDONESIA)) {
                    c10 = 7;
                    break;
                }
                break;
            case 3371:
                if (str.equals("it")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 3383:
                if (str.equals(Language.JAPANESE)) {
                    c10 = '\t';
                    break;
                }
                break;
            case 3428:
                if (str.equals(Language.KOREAN)) {
                    c10 = '\n';
                    break;
                }
                break;
            case 3588:
                if (str.equals("pt")) {
                    c10 = 11;
                    break;
                }
                break;
            case 3651:
                if (str.equals(Language.RUSSIAN)) {
                    c10 = '\f';
                    break;
                }
                break;
            case 3700:
                if (str.equals(Language.THAILAND)) {
                    c10 = '\r';
                    break;
                }
                break;
            case 3710:
                if (str.equals(Language.TURKISH)) {
                    c10 = 14;
                    break;
                }
                break;
            case 3763:
                if (str.equals(Language.VIETNAM)) {
                    c10 = 15;
                    break;
                }
                break;
            case 3886:
                if (str.equals(Language.SIMPLE_CHINESE)) {
                    c10 = 16;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new Locale(Language.SIMPLE_CHINESE, "HK");
            case 1:
                return new Locale(Language.ARABIC, "");
            case 2:
                return Locale.GERMANY;
            case 3:
                return Locale.US;
            case 4:
                return new Locale(Language.SPANISH, "");
            case 5:
                return Locale.FRANCE;
            case 6:
                return new Locale(Language.HINDI, "");
            case 7:
                return new Locale("id", "");
            case '\b':
                return Locale.ITALIAN;
            case '\t':
                return Locale.JAPAN;
            case '\n':
                return Locale.KOREA;
            case 11:
                return new Locale("pt", "");
            case '\f':
                return new Locale(Language.RUSSIAN, "");
            case '\r':
                return new Locale(Language.THAILAND, "");
            case 14:
                return new Locale(Language.TURKISH, "");
            case 15:
                return new Locale(Language.VIETNAM, "");
            case 16:
                return Locale.SIMPLIFIED_CHINESE;
            default:
                return null;
        }
    }

    public void n(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
            if (locales.size() > 0) {
                this.f57134e = b(locales.get(0));
                this.f57135f = locales.get(0).getCountry();
            }
        } else {
            this.f57134e = b(Locale.getDefault());
            this.f57135f = Locale.getDefault().getCountry();
        }
        if (this.f57130a) {
            this.f57132c = a();
        }
        FaceCastHttpClientImpl.f16219i = this.f57135f;
        FaceCastHttpClientImpl.f16220j = h(this.f57134e);
        FaceCastHttpClientImpl.f16221k = this.f57132c;
    }

    public void o(@Language.SupportedLanguage String str) {
        String b10 = b(new Locale(str));
        for (InterfaceC0622a interfaceC0622a : this.f57133d) {
            interfaceC0622a.onLanguageChanged(this.f57132c, b10);
        }
        this.f57132c = b10;
        SpUtils.setStr(this.f57131b, "language", b10);
        GCApplication.app().updateLocale();
        this.f57130a = false;
        FaceCastHttpClientImpl.f16221k = this.f57132c;
        FaceCastHttpClientImpl.f16220j = this.f57134e;
        FaceCastHttpClientImpl.f16219i = this.f57135f;
    }

    public void removeLanguageListener(InterfaceC0622a interfaceC0622a) {
        this.f57133d.remove(interfaceC0622a);
    }
}
