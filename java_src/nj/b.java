package nj;

import androidx.exifinterface.media.ExifInterface;
import com.huawei.hms.push.e;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.Hashtable;
import oj.c0;
import org.bouncycastle.asn1.n;
/* loaded from: classes7.dex */
public class b extends a {
    public static final n A;
    public static final n B;
    public static final n C;
    public static final n D;
    public static final n E;
    public static final n F;
    public static final n G;
    public static final n H;
    public static final n I;
    public static final n J;
    public static final n K;
    public static final n L;
    private static final Hashtable M;
    private static final Hashtable N;
    public static final mj.d O;

    /* renamed from: c  reason: collision with root package name */
    public static final n f55378c;

    /* renamed from: d  reason: collision with root package name */
    public static final n f55379d;

    /* renamed from: e  reason: collision with root package name */
    public static final n f55380e;

    /* renamed from: f  reason: collision with root package name */
    public static final n f55381f;

    /* renamed from: g  reason: collision with root package name */
    public static final n f55382g;

    /* renamed from: h  reason: collision with root package name */
    public static final n f55383h;

    /* renamed from: i  reason: collision with root package name */
    public static final n f55384i;

    /* renamed from: j  reason: collision with root package name */
    public static final n f55385j;

    /* renamed from: k  reason: collision with root package name */
    public static final n f55386k;

    /* renamed from: l  reason: collision with root package name */
    public static final n f55387l;

    /* renamed from: m  reason: collision with root package name */
    public static final n f55388m;

    /* renamed from: n  reason: collision with root package name */
    public static final n f55389n;

    /* renamed from: o  reason: collision with root package name */
    public static final n f55390o;

    /* renamed from: p  reason: collision with root package name */
    public static final n f55391p;

    /* renamed from: q  reason: collision with root package name */
    public static final n f55392q;

    /* renamed from: r  reason: collision with root package name */
    public static final n f55393r;

    /* renamed from: s  reason: collision with root package name */
    public static final n f55394s;

    /* renamed from: t  reason: collision with root package name */
    public static final n f55395t;

    /* renamed from: u  reason: collision with root package name */
    public static final n f55396u;

    /* renamed from: v  reason: collision with root package name */
    public static final n f55397v;

    /* renamed from: w  reason: collision with root package name */
    public static final n f55398w;

    /* renamed from: x  reason: collision with root package name */
    public static final n f55399x;

    /* renamed from: y  reason: collision with root package name */
    public static final n f55400y;

    /* renamed from: z  reason: collision with root package name */
    public static final n f55401z;

    /* renamed from: b  reason: collision with root package name */
    protected final Hashtable f55403b = a.e(M);

    /* renamed from: a  reason: collision with root package name */
    protected final Hashtable f55402a = a.e(N);

    static {
        n R = new n("2.5.4.6").R();
        f55378c = R;
        n R2 = new n("2.5.4.10").R();
        f55379d = R2;
        n R3 = new n("2.5.4.11").R();
        f55380e = R3;
        n R4 = new n("2.5.4.12").R();
        f55381f = R4;
        n R5 = new n("2.5.4.3").R();
        f55382g = R5;
        f55383h = new n("2.5.4.5").R();
        n R6 = new n("2.5.4.9").R();
        f55384i = R6;
        n R7 = new n("2.5.4.5").R();
        f55385j = R7;
        n R8 = new n("2.5.4.7").R();
        f55386k = R8;
        n R9 = new n("2.5.4.8").R();
        f55387l = R9;
        n R10 = new n("2.5.4.4").R();
        f55388m = R10;
        n R11 = new n("2.5.4.42").R();
        f55389n = R11;
        n R12 = new n("2.5.4.43").R();
        f55390o = R12;
        n R13 = new n("2.5.4.44").R();
        f55391p = R13;
        n R14 = new n("2.5.4.45").R();
        f55392q = R14;
        n R15 = new n("2.5.4.15").R();
        f55393r = R15;
        n R16 = new n("2.5.4.17").R();
        f55394s = R16;
        n R17 = new n("2.5.4.46").R();
        f55395t = R17;
        n R18 = new n("2.5.4.65").R();
        f55396u = R18;
        n R19 = new n("1.3.6.1.5.5.7.9.1").R();
        f55397v = R19;
        n R20 = new n("1.3.6.1.5.5.7.9.2").R();
        f55398w = R20;
        n R21 = new n("1.3.6.1.5.5.7.9.3").R();
        f55399x = R21;
        n R22 = new n("1.3.6.1.5.5.7.9.4").R();
        f55400y = R22;
        n R23 = new n("1.3.6.1.5.5.7.9.5").R();
        f55401z = R23;
        n R24 = new n("1.3.36.8.3.14").R();
        A = R24;
        n R25 = new n("2.5.4.16").R();
        B = R25;
        C = new n("2.5.4.54").R();
        n nVar = c0.f55716g;
        D = nVar;
        n nVar2 = c0.f55717h;
        E = nVar2;
        n nVar3 = c0.f55718i;
        F = nVar3;
        n nVar4 = gj.c.f40117i1;
        G = nVar4;
        n nVar5 = gj.c.f40119j1;
        H = nVar5;
        n nVar6 = gj.c.f40137p1;
        I = nVar6;
        J = nVar4;
        n nVar7 = new n("0.9.2342.19200300.100.1.25");
        K = nVar7;
        n nVar8 = new n("0.9.2342.19200300.100.1.1");
        L = nVar8;
        Hashtable hashtable = new Hashtable();
        M = hashtable;
        Hashtable hashtable2 = new Hashtable();
        N = hashtable2;
        hashtable.put(R, "C");
        hashtable.put(R2, "O");
        hashtable.put(R4, ExifInterface.GPS_DIRECTION_TRUE);
        hashtable.put(R3, "OU");
        hashtable.put(R5, "CN");
        hashtable.put(R8, "L");
        hashtable.put(R9, "ST");
        hashtable.put(R7, "SERIALNUMBER");
        hashtable.put(nVar4, ExifInterface.LONGITUDE_EAST);
        hashtable.put(nVar7, "DC");
        hashtable.put(nVar8, "UID");
        hashtable.put(R6, "STREET");
        hashtable.put(R10, "SURNAME");
        hashtable.put(R11, "GIVENNAME");
        hashtable.put(R12, "INITIALS");
        hashtable.put(R13, "GENERATION");
        hashtable.put(nVar6, "unstructuredAddress");
        hashtable.put(nVar5, "unstructuredName");
        hashtable.put(R14, "UniqueIdentifier");
        hashtable.put(R17, "DN");
        hashtable.put(R18, "Pseudonym");
        hashtable.put(R25, "PostalAddress");
        hashtable.put(R24, "NameAtBirth");
        hashtable.put(R22, "CountryOfCitizenship");
        hashtable.put(R23, "CountryOfResidence");
        hashtable.put(R21, "Gender");
        hashtable.put(R20, "PlaceOfBirth");
        hashtable.put(R19, "DateOfBirth");
        hashtable.put(R16, "PostalCode");
        hashtable.put(R15, "BusinessCategory");
        hashtable.put(nVar, "TelephoneNumber");
        hashtable.put(nVar2, "Name");
        hashtable.put(nVar3, "organizationIdentifier");
        hashtable2.put(com.huawei.hms.opendevice.c.f27627a, R);
        hashtable2.put("o", R2);
        hashtable2.put("t", R4);
        hashtable2.put("ou", R3);
        hashtable2.put(AdvanceSetting.CLEAR_NOTIFICATION, R5);
        hashtable2.put(NotifyType.LIGHTS, R8);
        hashtable2.put("st", R9);
        hashtable2.put("sn", R10);
        hashtable2.put("serialnumber", R7);
        hashtable2.put("street", R6);
        hashtable2.put("emailaddress", nVar4);
        hashtable2.put("dc", nVar7);
        hashtable2.put(e.f27721a, nVar4);
        hashtable2.put("uid", nVar8);
        hashtable2.put("surname", R10);
        hashtable2.put("givenname", R11);
        hashtable2.put("initials", R12);
        hashtable2.put("generation", R13);
        hashtable2.put("unstructuredaddress", nVar6);
        hashtable2.put("unstructuredname", nVar5);
        hashtable2.put("uniqueidentifier", R14);
        hashtable2.put("dn", R17);
        hashtable2.put("pseudonym", R18);
        hashtable2.put("postaladdress", R25);
        hashtable2.put("nameatbirth", R24);
        hashtable2.put("countryofcitizenship", R22);
        hashtable2.put("countryofresidence", R23);
        hashtable2.put("gender", R21);
        hashtable2.put("placeofbirth", R20);
        hashtable2.put("dateofbirth", R19);
        hashtable2.put("postalcode", R16);
        hashtable2.put("businesscategory", R15);
        hashtable2.put("telephonenumber", nVar);
        hashtable2.put("name", nVar2);
        hashtable2.put("organizationidentifier", nVar3);
        O = new b();
    }

    protected b() {
    }

    @Override // mj.d
    public String b(mj.c cVar) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z10 = true;
        for (mj.b bVar : cVar.B()) {
            if (z10) {
                z10 = false;
            } else {
                stringBuffer.append(',');
            }
            c.a(stringBuffer, bVar, this.f55403b);
        }
        return stringBuffer.toString();
    }
}
