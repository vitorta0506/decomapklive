package nj;

import java.io.IOException;
import java.util.Hashtable;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.f1;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.x;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public class c {
    public static void a(StringBuffer stringBuffer, mj.b bVar, Hashtable hashtable) {
        if (!bVar.B()) {
            if (bVar.x() != null) {
                b(stringBuffer, bVar.x(), hashtable);
                return;
            }
            return;
        }
        mj.a[] z10 = bVar.z();
        boolean z11 = true;
        for (int i9 = 0; i9 != z10.length; i9++) {
            if (z11) {
                z11 = false;
            } else {
                stringBuffer.append('+');
            }
            b(stringBuffer, z10[i9], hashtable);
        }
    }

    public static void b(StringBuffer stringBuffer, mj.a aVar, Hashtable hashtable) {
        String str = (String) hashtable.get(aVar.y());
        if (str == null) {
            str = aVar.y().O();
        }
        stringBuffer.append(str);
        stringBuffer.append('=');
        stringBuffer.append(i(aVar.z()));
    }

    private static boolean c(mj.a aVar, mj.a aVar2) {
        if (aVar == aVar2) {
            return true;
        }
        return aVar != null && aVar2 != null && aVar.y().F(aVar2.y()) && d(aVar.z()).equals(d(aVar2.z()));
    }

    public static String d(e eVar) {
        return e(i(eVar));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005a, code lost:
        if (r5 >= r0) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String e(java.lang.String r7) {
        /*
            int r0 = r7.length()
            r1 = 0
            if (r0 <= 0) goto L1d
            char r0 = r7.charAt(r1)
            r2 = 35
            if (r0 != r2) goto L1d
            org.bouncycastle.asn1.r r0 = f(r7)
            boolean r2 = r0 instanceof org.bouncycastle.asn1.x
            if (r2 == 0) goto L1d
            org.bouncycastle.asn1.x r0 = (org.bouncycastle.asn1.x) r0
            java.lang.String r7 = r0.g()
        L1d:
            java.lang.String r7 = org.bouncycastle.util.i.f(r7)
            int r0 = r7.length()
            r2 = 2
            if (r0 >= r2) goto L29
            return r7
        L29:
            int r0 = r0 + (-1)
        L2b:
            r2 = 32
            r3 = 92
            if (r1 >= r0) goto L42
            char r4 = r7.charAt(r1)
            if (r4 != r3) goto L42
            int r4 = r1 + 1
            char r4 = r7.charAt(r4)
            if (r4 != r2) goto L42
            int r1 = r1 + 2
            goto L2b
        L42:
            int r4 = r1 + 1
            r5 = r0
        L45:
            if (r5 <= r4) goto L58
            int r6 = r5 + (-1)
            char r6 = r7.charAt(r6)
            if (r6 != r3) goto L58
            char r6 = r7.charAt(r5)
            if (r6 != r2) goto L58
            int r5 = r5 + (-2)
            goto L45
        L58:
            if (r1 > 0) goto L5c
            if (r5 >= r0) goto L62
        L5c:
            int r5 = r5 + 1
            java.lang.String r7 = r7.substring(r1, r5)
        L62:
            java.lang.String r7 = h(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: nj.c.e(java.lang.String):java.lang.String");
    }

    private static r f(String str) {
        try {
            return r.G(org.bouncycastle.util.encoders.d.c(str, 1, str.length() - 1));
        } catch (IOException e10) {
            throw new IllegalStateException("unknown encoding in name: " + e10);
        }
    }

    public static boolean g(mj.b bVar, mj.b bVar2) {
        if (bVar.size() != bVar2.size()) {
            return false;
        }
        mj.a[] z10 = bVar.z();
        mj.a[] z11 = bVar2.z();
        if (z10.length != z11.length) {
            return false;
        }
        for (int i9 = 0; i9 != z10.length; i9++) {
            if (!c(z10[i9], z11[i9])) {
                return false;
            }
        }
        return true;
    }

    public static String h(String str) {
        if (str.indexOf("  ") < 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        char charAt = str.charAt(0);
        stringBuffer.append(charAt);
        for (int i9 = 1; i9 < str.length(); i9++) {
            char charAt2 = str.charAt(i9);
            if (charAt != ' ' || charAt2 != ' ') {
                stringBuffer.append(charAt2);
                charAt = charAt2;
            }
        }
        return stringBuffer.toString();
    }

    public static String i(e eVar) {
        StringBuffer stringBuffer = new StringBuffer();
        if (!(eVar instanceof x) || (eVar instanceof f1)) {
            try {
                stringBuffer.append('#');
                stringBuffer.append(org.bouncycastle.util.encoders.d.f(eVar.f().u("DER")));
            } catch (IOException unused) {
                throw new IllegalArgumentException("Other value has no encoded form");
            }
        } else {
            String g10 = ((x) eVar).g();
            if (g10.length() > 0 && g10.charAt(0) == '#') {
                stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
            }
            stringBuffer.append(g10);
        }
        int length = stringBuffer.length();
        int i9 = 2;
        i9 = (stringBuffer.length() >= 2 && stringBuffer.charAt(0) == '\\' && stringBuffer.charAt(1) == '#') ? 0 : 0;
        while (i9 != length) {
            char charAt = stringBuffer.charAt(i9);
            if (charAt != '\"' && charAt != '\\' && charAt != '+' && charAt != ',') {
                switch (charAt) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        break;
                    default:
                        i9++;
                        continue;
                }
            }
            stringBuffer.insert(i9, "\\");
            i9 += 2;
            length++;
        }
        if (stringBuffer.length() > 0) {
            for (int i10 = 0; stringBuffer.length() > i10 && stringBuffer.charAt(i10) == ' '; i10 += 2) {
                stringBuffer.insert(i10, "\\");
            }
        }
        for (int length2 = stringBuffer.length() - 1; length2 >= 0 && stringBuffer.charAt(length2) == ' '; length2--) {
            stringBuffer.insert(length2, IOUtils.DIR_SEPARATOR_WINDOWS);
        }
        return stringBuffer.toString();
    }
}
