package oj;

import androidx.exifinterface.media.ExifInterface;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import kotlin.UByte;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.b1;
import org.bouncycastle.asn1.f1;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public class b0 extends org.bouncycastle.asn1.m {
    public static final org.bouncycastle.asn1.n A;
    public static final org.bouncycastle.asn1.n B;
    private static final Boolean B3;
    public static final org.bouncycastle.asn1.n C;
    public static final org.bouncycastle.asn1.n D;
    public static final org.bouncycastle.asn1.n E;
    public static final org.bouncycastle.asn1.n F;
    public static final org.bouncycastle.asn1.n G;
    public static final org.bouncycastle.asn1.n H;
    public static final org.bouncycastle.asn1.n I;
    public static final org.bouncycastle.asn1.n J;
    public static final org.bouncycastle.asn1.n K;
    public static final org.bouncycastle.asn1.n L;
    public static final org.bouncycastle.asn1.n M;
    public static final org.bouncycastle.asn1.n N;
    public static final org.bouncycastle.asn1.n O;
    public static boolean P;
    public static final Hashtable Q;
    public static final Hashtable R;
    public static final Hashtable V1;
    public static final Hashtable V2;
    private static final Boolean V3;

    /* renamed from: a1  reason: collision with root package name */
    public static final Hashtable f55680a1;

    /* renamed from: a2  reason: collision with root package name */
    public static final Hashtable f55681a2;

    /* renamed from: g  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55682g;

    /* renamed from: h  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55683h;

    /* renamed from: i  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55684i;

    /* renamed from: j  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55685j;

    /* renamed from: k  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55686k;

    /* renamed from: l  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55687l;

    /* renamed from: m  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55688m;

    /* renamed from: n  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55689n;

    /* renamed from: o  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55690o;

    /* renamed from: p  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55691p;

    /* renamed from: q  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55692q;

    /* renamed from: r  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55693r;

    /* renamed from: s  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55694s;

    /* renamed from: t  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55695t;

    /* renamed from: u  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55696u;

    /* renamed from: v  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55697v;

    /* renamed from: w  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55698w;

    /* renamed from: x  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55699x;

    /* renamed from: y  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55700y;

    /* renamed from: z  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55701z;

    /* renamed from: a  reason: collision with root package name */
    private Vector f55702a = new Vector();

    /* renamed from: b  reason: collision with root package name */
    private Vector f55703b = new Vector();

    /* renamed from: c  reason: collision with root package name */
    private Vector f55704c = new Vector();

    /* renamed from: d  reason: collision with root package name */
    private org.bouncycastle.asn1.s f55705d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f55706e;

    /* renamed from: f  reason: collision with root package name */
    private int f55707f;

    static {
        org.bouncycastle.asn1.n nVar = new org.bouncycastle.asn1.n("2.5.4.6");
        f55682g = nVar;
        org.bouncycastle.asn1.n nVar2 = new org.bouncycastle.asn1.n("2.5.4.10");
        f55683h = nVar2;
        org.bouncycastle.asn1.n nVar3 = new org.bouncycastle.asn1.n("2.5.4.11");
        f55684i = nVar3;
        org.bouncycastle.asn1.n nVar4 = new org.bouncycastle.asn1.n("2.5.4.12");
        f55685j = nVar4;
        org.bouncycastle.asn1.n nVar5 = new org.bouncycastle.asn1.n("2.5.4.3");
        f55686k = nVar5;
        org.bouncycastle.asn1.n nVar6 = new org.bouncycastle.asn1.n("2.5.4.5");
        f55687l = nVar6;
        org.bouncycastle.asn1.n nVar7 = new org.bouncycastle.asn1.n("2.5.4.9");
        f55688m = nVar7;
        f55689n = nVar6;
        org.bouncycastle.asn1.n nVar8 = new org.bouncycastle.asn1.n("2.5.4.7");
        f55690o = nVar8;
        org.bouncycastle.asn1.n nVar9 = new org.bouncycastle.asn1.n("2.5.4.8");
        f55691p = nVar9;
        org.bouncycastle.asn1.n nVar10 = new org.bouncycastle.asn1.n("2.5.4.4");
        f55692q = nVar10;
        org.bouncycastle.asn1.n nVar11 = new org.bouncycastle.asn1.n("2.5.4.42");
        f55693r = nVar11;
        org.bouncycastle.asn1.n nVar12 = new org.bouncycastle.asn1.n("2.5.4.43");
        f55694s = nVar12;
        org.bouncycastle.asn1.n nVar13 = new org.bouncycastle.asn1.n("2.5.4.44");
        f55695t = nVar13;
        org.bouncycastle.asn1.n nVar14 = new org.bouncycastle.asn1.n("2.5.4.45");
        f55696u = nVar14;
        org.bouncycastle.asn1.n nVar15 = new org.bouncycastle.asn1.n("2.5.4.15");
        f55697v = nVar15;
        org.bouncycastle.asn1.n nVar16 = new org.bouncycastle.asn1.n("2.5.4.17");
        f55698w = nVar16;
        org.bouncycastle.asn1.n nVar17 = new org.bouncycastle.asn1.n("2.5.4.46");
        f55699x = nVar17;
        org.bouncycastle.asn1.n nVar18 = new org.bouncycastle.asn1.n("2.5.4.65");
        f55700y = nVar18;
        org.bouncycastle.asn1.n nVar19 = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.9.1");
        f55701z = nVar19;
        org.bouncycastle.asn1.n nVar20 = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.9.2");
        A = nVar20;
        org.bouncycastle.asn1.n nVar21 = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.9.3");
        B = nVar21;
        org.bouncycastle.asn1.n nVar22 = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.9.4");
        C = nVar22;
        org.bouncycastle.asn1.n nVar23 = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.9.5");
        D = nVar23;
        org.bouncycastle.asn1.n nVar24 = new org.bouncycastle.asn1.n("1.3.36.8.3.14");
        E = nVar24;
        org.bouncycastle.asn1.n nVar25 = new org.bouncycastle.asn1.n("2.5.4.16");
        F = nVar25;
        G = new org.bouncycastle.asn1.n("2.5.4.54");
        org.bouncycastle.asn1.n nVar26 = c0.f55716g;
        H = nVar26;
        org.bouncycastle.asn1.n nVar27 = c0.f55717h;
        I = nVar27;
        org.bouncycastle.asn1.n nVar28 = gj.c.f40117i1;
        J = nVar28;
        org.bouncycastle.asn1.n nVar29 = gj.c.f40119j1;
        K = nVar29;
        org.bouncycastle.asn1.n nVar30 = gj.c.f40137p1;
        L = nVar30;
        M = nVar28;
        org.bouncycastle.asn1.n nVar31 = new org.bouncycastle.asn1.n("0.9.2342.19200300.100.1.25");
        N = nVar31;
        org.bouncycastle.asn1.n nVar32 = new org.bouncycastle.asn1.n("0.9.2342.19200300.100.1.1");
        O = nVar32;
        P = false;
        Hashtable hashtable = new Hashtable();
        Q = hashtable;
        Hashtable hashtable2 = new Hashtable();
        R = hashtable2;
        Hashtable hashtable3 = new Hashtable();
        f55680a1 = hashtable3;
        Hashtable hashtable4 = new Hashtable();
        V1 = hashtable4;
        f55681a2 = hashtable;
        V2 = hashtable4;
        B3 = new Boolean(true);
        V3 = new Boolean(false);
        hashtable.put(nVar, "C");
        hashtable.put(nVar2, "O");
        hashtable.put(nVar4, ExifInterface.GPS_DIRECTION_TRUE);
        hashtable.put(nVar3, "OU");
        hashtable.put(nVar5, "CN");
        hashtable.put(nVar8, "L");
        hashtable.put(nVar9, "ST");
        hashtable.put(nVar6, "SERIALNUMBER");
        hashtable.put(nVar28, ExifInterface.LONGITUDE_EAST);
        hashtable.put(nVar31, "DC");
        hashtable.put(nVar32, "UID");
        hashtable.put(nVar7, "STREET");
        hashtable.put(nVar10, "SURNAME");
        hashtable.put(nVar11, "GIVENNAME");
        hashtable.put(nVar12, "INITIALS");
        hashtable.put(nVar13, "GENERATION");
        hashtable.put(nVar30, "unstructuredAddress");
        hashtable.put(nVar29, "unstructuredName");
        hashtable.put(nVar14, "UniqueIdentifier");
        hashtable.put(nVar17, "DN");
        hashtable.put(nVar18, "Pseudonym");
        hashtable.put(nVar25, "PostalAddress");
        hashtable.put(nVar24, "NameAtBirth");
        hashtable.put(nVar22, "CountryOfCitizenship");
        hashtable.put(nVar23, "CountryOfResidence");
        hashtable.put(nVar21, "Gender");
        hashtable.put(nVar20, "PlaceOfBirth");
        hashtable.put(nVar19, "DateOfBirth");
        hashtable.put(nVar16, "PostalCode");
        hashtable.put(nVar15, "BusinessCategory");
        hashtable.put(nVar26, "TelephoneNumber");
        hashtable.put(nVar27, "Name");
        hashtable2.put(nVar, "C");
        hashtable2.put(nVar2, "O");
        hashtable2.put(nVar3, "OU");
        hashtable2.put(nVar5, "CN");
        hashtable2.put(nVar8, "L");
        hashtable2.put(nVar9, "ST");
        hashtable2.put(nVar7, "STREET");
        hashtable2.put(nVar31, "DC");
        hashtable2.put(nVar32, "UID");
        hashtable3.put(nVar, "C");
        hashtable3.put(nVar2, "O");
        hashtable3.put(nVar3, "OU");
        hashtable3.put(nVar5, "CN");
        hashtable3.put(nVar8, "L");
        hashtable3.put(nVar9, "ST");
        hashtable3.put(nVar7, "STREET");
        hashtable4.put(com.huawei.hms.opendevice.c.f27627a, nVar);
        hashtable4.put("o", nVar2);
        hashtable4.put("t", nVar4);
        hashtable4.put("ou", nVar3);
        hashtable4.put(AdvanceSetting.CLEAR_NOTIFICATION, nVar5);
        hashtable4.put(NotifyType.LIGHTS, nVar8);
        hashtable4.put("st", nVar9);
        hashtable4.put("sn", nVar6);
        hashtable4.put("serialnumber", nVar6);
        hashtable4.put("street", nVar7);
        hashtable4.put("emailaddress", nVar28);
        hashtable4.put("dc", nVar31);
        hashtable4.put(com.huawei.hms.push.e.f27721a, nVar28);
        hashtable4.put("uid", nVar32);
        hashtable4.put("surname", nVar10);
        hashtable4.put("givenname", nVar11);
        hashtable4.put("initials", nVar12);
        hashtable4.put("generation", nVar13);
        hashtable4.put("unstructuredaddress", nVar30);
        hashtable4.put("unstructuredname", nVar29);
        hashtable4.put("uniqueidentifier", nVar14);
        hashtable4.put("dn", nVar17);
        hashtable4.put("pseudonym", nVar18);
        hashtable4.put("postaladdress", nVar25);
        hashtable4.put("nameofbirth", nVar24);
        hashtable4.put("countryofcitizenship", nVar22);
        hashtable4.put("countryofresidence", nVar23);
        hashtable4.put("gender", nVar21);
        hashtable4.put("placeofbirth", nVar20);
        hashtable4.put("dateofbirth", nVar19);
        hashtable4.put("postalcode", nVar16);
        hashtable4.put("businesscategory", nVar15);
        hashtable4.put("telephonenumber", nVar26);
        hashtable4.put("name", nVar27);
    }

    protected b0() {
    }

    public b0(org.bouncycastle.asn1.s sVar) {
        Vector vector;
        this.f55705d = sVar;
        Enumeration N2 = sVar.N();
        while (N2.hasMoreElements()) {
            org.bouncycastle.asn1.u L2 = org.bouncycastle.asn1.u.L(((org.bouncycastle.asn1.e) N2.nextElement()).f());
            int i9 = 0;
            while (i9 < L2.size()) {
                org.bouncycastle.asn1.s K2 = org.bouncycastle.asn1.s.K(L2.N(i9).f());
                if (K2.size() != 2) {
                    throw new IllegalArgumentException("badly sized pair");
                }
                this.f55702a.addElement(org.bouncycastle.asn1.n.P(K2.M(0)));
                org.bouncycastle.asn1.e M2 = K2.M(1);
                if (!(M2 instanceof org.bouncycastle.asn1.x) || (M2 instanceof f1)) {
                    try {
                        this.f55703b.addElement("#" + y(org.bouncycastle.util.encoders.d.d(M2.f().u("DER"))));
                    } catch (IOException unused) {
                        throw new IllegalArgumentException("cannot encode value");
                    }
                } else {
                    String g10 = ((org.bouncycastle.asn1.x) M2).g();
                    if (g10.length() <= 0 || g10.charAt(0) != '#') {
                        vector = this.f55703b;
                    } else {
                        vector = this.f55703b;
                        g10 = "\\" + g10;
                    }
                    vector.addElement(g10);
                }
                this.f55704c.addElement(i9 != 0 ? B3 : V3);
                i9++;
            }
        }
    }

    private org.bouncycastle.asn1.r B(String str) {
        try {
            return org.bouncycastle.asn1.r.G(org.bouncycastle.util.encoders.d.c(str, 1, str.length() - 1));
        } catch (IOException e10) {
            throw new IllegalStateException("unknown encoding in name: " + e10);
        }
    }

    private boolean F(String str, String str2) {
        String z10 = z(str);
        String z11 = z(str2);
        return z10.equals(z11) || H(z10).equals(H(z11));
    }

    public static b0 G(Object obj) {
        if (obj instanceof b0) {
            return (b0) obj;
        }
        if (obj instanceof mj.c) {
            return new b0(org.bouncycastle.asn1.s.K(((mj.c) obj).f()));
        }
        if (obj != null) {
            return new b0(org.bouncycastle.asn1.s.K(obj));
        }
        return null;
    }

    private String H(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char charAt = str.charAt(0);
            stringBuffer.append(charAt);
            int i9 = 1;
            while (i9 < str.length()) {
                char charAt2 = str.charAt(i9);
                if (charAt != ' ' || charAt2 != ' ') {
                    stringBuffer.append(charAt2);
                }
                i9++;
                charAt = charAt2;
            }
        }
        return stringBuffer.toString();
    }

    private void x(StringBuffer stringBuffer, Hashtable hashtable, org.bouncycastle.asn1.n nVar, String str) {
        String str2 = (String) hashtable.get(nVar);
        if (str2 == null) {
            str2 = nVar.O();
        }
        stringBuffer.append(str2);
        stringBuffer.append('=');
        int length = stringBuffer.length();
        stringBuffer.append(str);
        int length2 = stringBuffer.length();
        if (str.length() >= 2 && str.charAt(0) == '\\' && str.charAt(1) == '#') {
            length += 2;
        }
        while (length < length2 && stringBuffer.charAt(length) == ' ') {
            stringBuffer.insert(length, "\\");
            length += 2;
            length2++;
        }
        while (true) {
            length2--;
            if (length2 <= length || stringBuffer.charAt(length2) != ' ') {
                break;
            }
            stringBuffer.insert(length2, IOUtils.DIR_SEPARATOR_WINDOWS);
        }
        while (length <= length2) {
            char charAt = stringBuffer.charAt(length);
            if (charAt != '\"' && charAt != '\\' && charAt != '+' && charAt != ',') {
                switch (charAt) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        break;
                    default:
                        length++;
                        continue;
                }
            }
            stringBuffer.insert(length, "\\");
            length += 2;
            length2++;
        }
    }

    private String y(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i9 = 0; i9 != length; i9++) {
            cArr[i9] = (char) (bArr[i9] & UByte.MAX_VALUE);
        }
        return new String(cArr);
    }

    private String z(String str) {
        String f10 = org.bouncycastle.util.i.f(str.trim());
        if (f10.length() <= 0 || f10.charAt(0) != '#') {
            return f10;
        }
        org.bouncycastle.asn1.r B2 = B(f10);
        return B2 instanceof org.bouncycastle.asn1.x ? org.bouncycastle.util.i.f(((org.bouncycastle.asn1.x) B2).g().trim()) : f10;
    }

    public String I(boolean z10, Hashtable hashtable) {
        StringBuffer stringBuffer = new StringBuffer();
        Vector vector = new Vector();
        StringBuffer stringBuffer2 = null;
        for (int i9 = 0; i9 < this.f55702a.size(); i9++) {
            if (((Boolean) this.f55704c.elementAt(i9)).booleanValue()) {
                stringBuffer2.append('+');
                x(stringBuffer2, hashtable, (org.bouncycastle.asn1.n) this.f55702a.elementAt(i9), (String) this.f55703b.elementAt(i9));
            } else {
                stringBuffer2 = new StringBuffer();
                x(stringBuffer2, hashtable, (org.bouncycastle.asn1.n) this.f55702a.elementAt(i9), (String) this.f55703b.elementAt(i9));
                vector.addElement(stringBuffer2);
            }
        }
        boolean z11 = true;
        if (z10) {
            for (int size = vector.size() - 1; size >= 0; size--) {
                if (z11) {
                    z11 = false;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(size).toString());
            }
        } else {
            for (int i10 = 0; i10 < vector.size(); i10++) {
                if (z11) {
                    z11 = false;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(i10).toString());
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.bouncycastle.asn1.m
    public boolean equals(Object obj) {
        int i9;
        int i10;
        boolean z10;
        if (obj == this) {
            return true;
        }
        if ((obj instanceof b0) || (obj instanceof org.bouncycastle.asn1.s)) {
            if (f().F(((org.bouncycastle.asn1.e) obj).f())) {
                return true;
            }
            try {
                b0 G2 = G(obj);
                int size = this.f55702a.size();
                if (size != G2.f55702a.size()) {
                    return false;
                }
                boolean[] zArr = new boolean[size];
                int i11 = -1;
                if (this.f55702a.elementAt(0).equals(G2.f55702a.elementAt(0))) {
                    i11 = size;
                    i9 = 0;
                    i10 = 1;
                } else {
                    i9 = size - 1;
                    i10 = -1;
                }
                while (i9 != i11) {
                    org.bouncycastle.asn1.n nVar = (org.bouncycastle.asn1.n) this.f55702a.elementAt(i9);
                    String str = (String) this.f55703b.elementAt(i9);
                    int i12 = 0;
                    while (true) {
                        if (i12 >= size) {
                            z10 = false;
                            break;
                        } else if (!zArr[i12] && nVar.F((org.bouncycastle.asn1.n) G2.f55702a.elementAt(i12)) && F(str, (String) G2.f55703b.elementAt(i12))) {
                            zArr[i12] = true;
                            z10 = true;
                            break;
                        } else {
                            i12++;
                        }
                    }
                    if (!z10) {
                        return false;
                    }
                    i9 += i10;
                }
                return true;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.m, org.bouncycastle.asn1.e
    public org.bouncycastle.asn1.r f() {
        if (this.f55705d == null) {
            org.bouncycastle.asn1.f fVar = new org.bouncycastle.asn1.f();
            org.bouncycastle.asn1.f fVar2 = new org.bouncycastle.asn1.f();
            if (this.f55702a.size() != 0) {
                new org.bouncycastle.asn1.f(2).a((org.bouncycastle.asn1.n) this.f55702a.elementAt(0));
                String str = (String) this.f55703b.elementAt(0);
                throw null;
            }
            fVar.a(new b1(fVar2));
            this.f55705d = new a1(fVar);
        }
        return this.f55705d;
    }

    @Override // org.bouncycastle.asn1.m
    public int hashCode() {
        if (this.f55706e) {
            return this.f55707f;
        }
        this.f55706e = true;
        for (int i9 = 0; i9 != this.f55702a.size(); i9++) {
            String H2 = H(z((String) this.f55703b.elementAt(i9)));
            int hashCode = this.f55707f ^ this.f55702a.elementAt(i9).hashCode();
            this.f55707f = hashCode;
            this.f55707f = H2.hashCode() ^ hashCode;
        }
        return this.f55707f;
    }

    public String toString() {
        return I(P, Q);
    }
}
