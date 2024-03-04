package xe;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.UserDataStore;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.text.Typography;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    public static final a f59700b;

    /* renamed from: c  reason: collision with root package name */
    static final String[][] f59701c = {new String[]{"nbsp", "160"}, new String[]{"iexcl", "161"}, new String[]{"cent", "162"}, new String[]{"pound", "163"}, new String[]{"curren", "164"}, new String[]{"yen", "165"}, new String[]{"brvbar", "166"}, new String[]{"sect", "167"}, new String[]{"uml", "168"}, new String[]{"copy", "169"}, new String[]{"ordf", "170"}, new String[]{"laquo", "171"}, new String[]{"not", "172"}, new String[]{"shy", "173"}, new String[]{"reg", "174"}, new String[]{"macr", "175"}, new String[]{"deg", "176"}, new String[]{"plusmn", "177"}, new String[]{"sup2", "178"}, new String[]{"sup3", "179"}, new String[]{"acute", "180"}, new String[]{"micro", "181"}, new String[]{"para", "182"}, new String[]{"middot", "183"}, new String[]{"cedil", "184"}, new String[]{"sup1", "185"}, new String[]{"ordm", "186"}, new String[]{"raquo", "187"}, new String[]{"frac14", "188"}, new String[]{"frac12", "189"}, new String[]{"frac34", "190"}, new String[]{"iquest", "191"}, new String[]{"Agrave", "192"}, new String[]{"Aacute", "193"}, new String[]{"Acirc", "194"}, new String[]{"Atilde", "195"}, new String[]{"Auml", "196"}, new String[]{"Aring", "197"}, new String[]{"AElig", "198"}, new String[]{"Ccedil", "199"}, new String[]{"Egrave", BasicPushStatus.SUCCESS_CODE}, new String[]{"Eacute", "201"}, new String[]{"Ecirc", "202"}, new String[]{"Euml", "203"}, new String[]{"Igrave", "204"}, new String[]{"Iacute", "205"}, new String[]{"Icirc", "206"}, new String[]{"Iuml", "207"}, new String[]{"ETH", "208"}, new String[]{"Ntilde", "209"}, new String[]{"Ograve", "210"}, new String[]{"Oacute", "211"}, new String[]{"Ocirc", "212"}, new String[]{"Otilde", "213"}, new String[]{"Ouml", "214"}, new String[]{"times", "215"}, new String[]{"Oslash", "216"}, new String[]{"Ugrave", "217"}, new String[]{"Uacute", "218"}, new String[]{"Ucirc", "219"}, new String[]{"Uuml", "220"}, new String[]{"Yacute", "221"}, new String[]{"THORN", "222"}, new String[]{"szlig", "223"}, new String[]{"agrave", "224"}, new String[]{"aacute", "225"}, new String[]{"acirc", "226"}, new String[]{"atilde", "227"}, new String[]{"auml", "228"}, new String[]{"aring", "229"}, new String[]{"aelig", "230"}, new String[]{"ccedil", "231"}, new String[]{"egrave", "232"}, new String[]{"eacute", "233"}, new String[]{"ecirc", "234"}, new String[]{"euml", "235"}, new String[]{"igrave", "236"}, new String[]{"iacute", "237"}, new String[]{"icirc", "238"}, new String[]{"iuml", "239"}, new String[]{"eth", "240"}, new String[]{"ntilde", "241"}, new String[]{"ograve", "242"}, new String[]{"oacute", "243"}, new String[]{"ocirc", "244"}, new String[]{"otilde", "245"}, new String[]{"ouml", "246"}, new String[]{"divide", "247"}, new String[]{"oslash", "248"}, new String[]{"ugrave", "249"}, new String[]{"uacute", "250"}, new String[]{"ucirc", "251"}, new String[]{"uuml", "252"}, new String[]{"yacute", "253"}, new String[]{"thorn", "254"}, new String[]{"yuml", "255"}};

    /* renamed from: d  reason: collision with root package name */
    static final String[][] f59702d = {new String[]{"fnof", "402"}, new String[]{"Alpha", "913"}, new String[]{"Beta", "914"}, new String[]{ExifInterface.TAG_GAMMA, "915"}, new String[]{"Delta", "916"}, new String[]{"Epsilon", "917"}, new String[]{"Zeta", "918"}, new String[]{"Eta", "919"}, new String[]{"Theta", "920"}, new String[]{"Iota", "921"}, new String[]{"Kappa", "922"}, new String[]{"Lambda", "923"}, new String[]{"Mu", "924"}, new String[]{"Nu", "925"}, new String[]{"Xi", "926"}, new String[]{"Omicron", "927"}, new String[]{"Pi", "928"}, new String[]{"Rho", "929"}, new String[]{"Sigma", "931"}, new String[]{"Tau", "932"}, new String[]{"Upsilon", "933"}, new String[]{"Phi", "934"}, new String[]{"Chi", "935"}, new String[]{"Psi", "936"}, new String[]{"Omega", "937"}, new String[]{"alpha", "945"}, new String[]{"beta", "946"}, new String[]{"gamma", "947"}, new String[]{"delta", "948"}, new String[]{"epsilon", "949"}, new String[]{"zeta", "950"}, new String[]{"eta", "951"}, new String[]{"theta", "952"}, new String[]{"iota", "953"}, new String[]{"kappa", "954"}, new String[]{"lambda", "955"}, new String[]{"mu", "956"}, new String[]{"nu", "957"}, new String[]{"xi", "958"}, new String[]{"omicron", "959"}, new String[]{"pi", "960"}, new String[]{"rho", "961"}, new String[]{"sigmaf", "962"}, new String[]{"sigma", "963"}, new String[]{"tau", "964"}, new String[]{"upsilon", "965"}, new String[]{"phi", "966"}, new String[]{"chi", "967"}, new String[]{"psi", "968"}, new String[]{"omega", "969"}, new String[]{"thetasym", "977"}, new String[]{"upsih", "978"}, new String[]{"piv", "982"}, new String[]{"bull", "8226"}, new String[]{"hellip", "8230"}, new String[]{"prime", "8242"}, new String[]{"Prime", "8243"}, new String[]{"oline", "8254"}, new String[]{"frasl", "8260"}, new String[]{"weierp", "8472"}, new String[]{"image", "8465"}, new String[]{"real", "8476"}, new String[]{"trade", "8482"}, new String[]{"alefsym", "8501"}, new String[]{"larr", "8592"}, new String[]{"uarr", "8593"}, new String[]{"rarr", "8594"}, new String[]{"darr", "8595"}, new String[]{"harr", "8596"}, new String[]{"crarr", "8629"}, new String[]{"lArr", "8656"}, new String[]{"uArr", "8657"}, new String[]{"rArr", "8658"}, new String[]{"dArr", "8659"}, new String[]{"hArr", "8660"}, new String[]{"forall", "8704"}, new String[]{"part", "8706"}, new String[]{"exist", "8707"}, new String[]{"empty", "8709"}, new String[]{"nabla", "8711"}, new String[]{"isin", "8712"}, new String[]{"notin", "8713"}, new String[]{"ni", "8715"}, new String[]{"prod", "8719"}, new String[]{"sum", "8721"}, new String[]{"minus", "8722"}, new String[]{"lowast", "8727"}, new String[]{"radic", "8730"}, new String[]{"prop", "8733"}, new String[]{"infin", "8734"}, new String[]{"ang", "8736"}, new String[]{"and", "8743"}, new String[]{"or", "8744"}, new String[]{"cap", "8745"}, new String[]{"cup", "8746"}, new String[]{"int", "8747"}, new String[]{"there4", "8756"}, new String[]{"sim", "8764"}, new String[]{"cong", "8773"}, new String[]{"asymp", "8776"}, new String[]{"ne", "8800"}, new String[]{"equiv", "8801"}, new String[]{"le", "8804"}, new String[]{UserDataStore.GENDER, "8805"}, new String[]{"sub", "8834"}, new String[]{"sup", "8835"}, new String[]{"sube", "8838"}, new String[]{"supe", "8839"}, new String[]{"oplus", "8853"}, new String[]{"otimes", "8855"}, new String[]{"perp", "8869"}, new String[]{"sdot", "8901"}, new String[]{"lceil", "8968"}, new String[]{"rceil", "8969"}, new String[]{"lfloor", "8970"}, new String[]{"rfloor", "8971"}, new String[]{VKApiCodes.PARAM_LANG, "9001"}, new String[]{"rang", "9002"}, new String[]{"loz", "9674"}, new String[]{"spades", "9824"}, new String[]{"clubs", "9827"}, new String[]{"hearts", "9829"}, new String[]{"diams", "9830"}, new String[]{"OElig", "338"}, new String[]{"oelig", "339"}, new String[]{"Scaron", "352"}, new String[]{"scaron", "353"}, new String[]{"Yuml", "376"}, new String[]{"circ", "710"}, new String[]{"tilde", "732"}, new String[]{"ensp", "8194"}, new String[]{"emsp", "8195"}, new String[]{"thinsp", "8201"}, new String[]{"zwnj", "8204"}, new String[]{"zwj", "8205"}, new String[]{"lrm", "8206"}, new String[]{"rlm", "8207"}, new String[]{"ndash", "8211"}, new String[]{"mdash", "8212"}, new String[]{"lsquo", "8216"}, new String[]{"rsquo", "8217"}, new String[]{"sbquo", "8218"}, new String[]{"ldquo", "8220"}, new String[]{"rdquo", "8221"}, new String[]{"bdquo", "8222"}, new String[]{"dagger", "8224"}, new String[]{"Dagger", "8225"}, new String[]{"permil", "8240"}, new String[]{"lsaquo", "8249"}, new String[]{"rsaquo", "8250"}, new String[]{"euro", "8364"}};

    /* renamed from: e  reason: collision with root package name */
    private static final String[][] f59703e = {new String[]{"quot", "34"}, new String[]{"amp", "38"}, new String[]{"lt", "60"}, new String[]{"gt", "62"}};

    /* renamed from: a  reason: collision with root package name */
    final InterfaceC0690a f59704a = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: xe.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0690a {
        void a(String str, int i9);

        int b(String str);
    }

    /* loaded from: classes4.dex */
    static class b extends c {
        b() {
        }
    }

    /* loaded from: classes4.dex */
    static class c implements InterfaceC0690a {

        /* renamed from: a  reason: collision with root package name */
        private final Map f59705a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final xe.b f59706b = new xe.b();

        c() {
        }

        @Override // xe.a.InterfaceC0690a
        public void a(String str, int i9) {
            this.f59705a.put(str, Integer.valueOf(i9));
            this.f59706b.a(i9, str);
        }

        @Override // xe.a.InterfaceC0690a
        public int b(String str) {
            Object obj = this.f59705a.get(str);
            if (obj == null) {
                return -1;
            }
            return ((Integer) obj).intValue();
        }
    }

    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final String f59707a;

        /* renamed from: b  reason: collision with root package name */
        public final ArrayList<int[]> f59708b;

        public d(String str, ArrayList<int[]> arrayList) {
            this.f59707a = str;
            this.f59708b = arrayList;
        }
    }

    static {
        a aVar = new a();
        f59700b = aVar;
        d(aVar);
    }

    static void d(a aVar) {
        aVar.a(f59703e);
        aVar.a(f59701c);
        aVar.a(f59702d);
    }

    public void a(String[][] strArr) {
        for (String[] strArr2 : strArr) {
            b(strArr2[0], Integer.parseInt(strArr2[1]));
        }
    }

    public void b(String str, int i9) {
        this.f59704a.a(str, i9);
    }

    public int c(String str) {
        return this.f59704a.b(str);
    }

    public d e(String str) {
        int i9;
        int intValue;
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(length);
        ArrayList arrayList = new ArrayList(5);
        int i10 = 0;
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt == '&') {
                int i11 = i10 + 1;
                int indexOf = str.indexOf(59, i11);
                if (indexOf == -1) {
                    sb2.append(charAt);
                } else {
                    String substring = str.substring(i11, indexOf);
                    int length2 = substring.length();
                    if (length2 <= 0) {
                        i9 = -1;
                    } else if (substring.charAt(0) == '#' && length2 > 1) {
                        char charAt2 = substring.charAt(1);
                        if (charAt2 == 'x' || charAt2 == 'X') {
                            if (length2 > 2) {
                                intValue = Integer.valueOf(substring.substring(2), 16).intValue();
                            }
                            intValue = -1;
                        } else {
                            try {
                                intValue = Integer.parseInt(substring.substring(1));
                            } catch (Exception unused) {
                            }
                        }
                        i9 = intValue;
                    } else {
                        i9 = c(substring);
                    }
                    if (i9 == -1) {
                        sb2.append(Typography.amp);
                        if (substring.indexOf(38) == -1) {
                            sb2.append(substring);
                            sb2.append(';');
                        }
                    } else {
                        sb2.append((char) i9);
                        arrayList.add(new int[]{i10, indexOf});
                    }
                    i10 = indexOf;
                }
            } else {
                sb2.append(charAt);
            }
            i10++;
        }
        return new d(sb2.toString(), arrayList);
    }
}
