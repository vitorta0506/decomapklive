package lj;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.a0;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.b1;
import org.bouncycastle.asn1.c;
import org.bouncycastle.asn1.c1;
import org.bouncycastle.asn1.d0;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.e1;
import org.bouncycastle.asn1.f0;
import org.bouncycastle.asn1.g;
import org.bouncycastle.asn1.g1;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.h0;
import org.bouncycastle.asn1.h1;
import org.bouncycastle.asn1.i1;
import org.bouncycastle.asn1.j0;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.m0;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.s0;
import org.bouncycastle.asn1.t0;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.asn1.y;
import org.bouncycastle.asn1.z;
import org.bouncycastle.asn1.z0;
import org.bouncycastle.util.encoders.d;
import org.bouncycastle.util.i;
/* loaded from: classes7.dex */
public class a {
    static void a(String str, boolean z10, r rVar, StringBuffer stringBuffer) {
        StringBuilder sb2;
        BigInteger M;
        String str2;
        String f10;
        String P;
        StringBuilder sb3;
        int length;
        String d10 = i.d();
        if (rVar instanceof s) {
            Enumeration N = ((s) rVar).N();
            String str3 = str + "    ";
            stringBuffer.append(str);
            stringBuffer.append(rVar instanceof f0 ? "BER Sequence" : rVar instanceof a1 ? "DER Sequence" : "Sequence");
            while (true) {
                stringBuffer.append(d10);
                while (N.hasMoreElements()) {
                    Object nextElement = N.nextElement();
                    if (nextElement == null || nextElement.equals(u0.f55980a)) {
                        stringBuffer.append(str3);
                        stringBuffer.append("NULL");
                    } else {
                        a(str3, z10, nextElement instanceof r ? (r) nextElement : ((e) nextElement).f(), stringBuffer);
                    }
                }
                return;
            }
        } else if (rVar instanceof y) {
            String str4 = str + "    ";
            stringBuffer.append(str);
            stringBuffer.append(rVar instanceof j0 ? "BER Tagged [" : "Tagged [");
            y yVar = (y) rVar;
            stringBuffer.append(Integer.toString(yVar.N()));
            stringBuffer.append(']');
            if (!yVar.O()) {
                stringBuffer.append(" IMPLICIT ");
            }
            stringBuffer.append(d10);
            a(str4, z10, yVar.M(), stringBuffer);
        } else if (!(rVar instanceof u)) {
            if (rVar instanceof o) {
                o oVar = (o) rVar;
                if (rVar instanceof d0) {
                    sb3 = new StringBuilder();
                    sb3.append(str);
                    sb3.append("BER Constructed Octet String[");
                    length = oVar.M().length;
                } else {
                    sb3 = new StringBuilder();
                    sb3.append(str);
                    sb3.append("DER Octet String[");
                    length = oVar.M().length;
                }
                sb3.append(length);
                sb3.append("] ");
                stringBuffer.append(sb3.toString());
                if (z10) {
                    f10 = e(str, oVar.M());
                    stringBuffer.append(f10);
                }
                stringBuffer.append(d10);
                return;
            }
            if (rVar instanceof n) {
                sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("ObjectIdentifier(");
                sb2.append(((n) rVar).O());
            } else if (rVar instanceof c) {
                sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("Boolean(");
                sb2.append(((c) rVar).O());
            } else {
                if (!(rVar instanceof k)) {
                    if (rVar instanceof n0) {
                        n0 n0Var = (n0) rVar;
                        stringBuffer.append(str + "DER Bit String[" + n0Var.L().length + ", " + n0Var.N() + "] ");
                        if (z10) {
                            f10 = e(str, n0Var.L());
                        }
                        stringBuffer.append(d10);
                        return;
                    }
                    if (rVar instanceof t0) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("IA5String(");
                        P = ((t0) rVar).g();
                    } else if (rVar instanceof e1) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("UTF8String(");
                        P = ((e1) rVar).g();
                    } else if (rVar instanceof z0) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("PrintableString(");
                        P = ((z0) rVar).g();
                    } else if (rVar instanceof h1) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("VisibleString(");
                        P = ((h1) rVar).g();
                    } else if (rVar instanceof m0) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("BMPString(");
                        P = ((m0) rVar).g();
                    } else if (rVar instanceof c1) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("T61String(");
                        P = ((c1) rVar).g();
                    } else if (rVar instanceof s0) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("GraphicString(");
                        P = ((s0) rVar).g();
                    } else if (rVar instanceof g1) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("VideotexString(");
                        P = ((g1) rVar).g();
                    } else if (rVar instanceof z) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("UTCTime(");
                        P = ((z) rVar).M();
                    } else if (rVar instanceof org.bouncycastle.asn1.i) {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("GeneralizedTime(");
                        P = ((org.bouncycastle.asn1.i) rVar).P();
                    } else {
                        if (rVar instanceof a0) {
                            str2 = "BER";
                        } else if (rVar instanceof i1) {
                            str2 = "";
                        } else if (rVar instanceof g) {
                            sb2 = new StringBuilder();
                            sb2.append(str);
                            sb2.append("DER Enumerated(");
                            M = ((g) rVar).M();
                        } else if (rVar instanceof h) {
                            h hVar = (h) rVar;
                            stringBuffer.append(str + "External " + d10);
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(str);
                            sb4.append("    ");
                            String sb5 = sb4.toString();
                            if (hVar.L() != null) {
                                stringBuffer.append(sb5 + "Direct Reference: " + hVar.L().O() + d10);
                            }
                            if (hVar.O() != null) {
                                stringBuffer.append(sb5 + "Indirect Reference: " + hVar.O().toString() + d10);
                            }
                            if (hVar.K() != null) {
                                a(sb5, z10, hVar.K(), stringBuffer);
                            }
                            stringBuffer.append(sb5 + "Encoding: " + hVar.M() + d10);
                            a(sb5, z10, hVar.N(), stringBuffer);
                            return;
                        } else {
                            sb2 = new StringBuilder();
                            sb2.append(str);
                            sb2.append(rVar.toString());
                            sb2.append(d10);
                            f10 = sb2.toString();
                        }
                        f10 = f(str2, str, z10, rVar, d10);
                    }
                    sb2.append(P);
                    sb2.append(") ");
                    sb2.append(d10);
                    f10 = sb2.toString();
                    stringBuffer.append(f10);
                }
                sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("Integer(");
                M = ((k) rVar).N();
                sb2.append(M);
            }
            sb2.append(")");
            sb2.append(d10);
            f10 = sb2.toString();
            stringBuffer.append(f10);
        } else {
            Enumeration O = ((u) rVar).O();
            String str5 = str + "    ";
            stringBuffer.append(str);
            stringBuffer.append(rVar instanceof h0 ? "BER Set" : rVar instanceof b1 ? "DER Set" : "Set");
            while (true) {
                stringBuffer.append(d10);
                while (O.hasMoreElements()) {
                    Object nextElement2 = O.nextElement();
                    if (nextElement2 == null) {
                        break;
                    }
                    a(str5, z10, nextElement2 instanceof r ? (r) nextElement2 : ((e) nextElement2).f(), stringBuffer);
                }
                return;
                stringBuffer.append(str5);
                stringBuffer.append("NULL");
            }
        }
    }

    private static String b(byte[] bArr, int i9, int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = i9; i11 != i9 + i10; i11++) {
            if (bArr[i11] >= 32 && bArr[i11] <= 126) {
                stringBuffer.append((char) bArr[i11]);
            }
        }
        return stringBuffer.toString();
    }

    public static String c(Object obj) {
        return d(obj, false);
    }

    public static String d(Object obj, boolean z10) {
        r f10;
        StringBuffer stringBuffer = new StringBuffer();
        if (obj instanceof r) {
            f10 = (r) obj;
        } else if (!(obj instanceof e)) {
            return "unknown object type " + obj.toString();
        } else {
            f10 = ((e) obj).f();
        }
        a("", z10, f10, stringBuffer);
        return stringBuffer.toString();
    }

    private static String e(String str, byte[] bArr) {
        String b10;
        String d10 = i.d();
        StringBuffer stringBuffer = new StringBuffer();
        String str2 = str + "    ";
        stringBuffer.append(d10);
        for (int i9 = 0; i9 < bArr.length; i9 += 32) {
            int length = bArr.length - i9;
            stringBuffer.append(str2);
            if (length > 32) {
                stringBuffer.append(i.b(d.e(bArr, i9, 32)));
                stringBuffer.append("    ");
                b10 = b(bArr, i9, 32);
            } else {
                stringBuffer.append(i.b(d.e(bArr, i9, bArr.length - i9)));
                for (int length2 = bArr.length - i9; length2 != 32; length2++) {
                    stringBuffer.append("  ");
                }
                stringBuffer.append("    ");
                b10 = b(bArr, i9, bArr.length - i9);
            }
            stringBuffer.append(b10);
            stringBuffer.append(d10);
        }
        return stringBuffer.toString();
    }

    private static String f(String str, String str2, boolean z10, r rVar, String str3) {
        org.bouncycastle.asn1.a M = org.bouncycastle.asn1.a.M(rVar);
        StringBuffer stringBuffer = new StringBuffer();
        if (!M.H()) {
            return str2 + str + " ApplicationSpecific[" + M.K() + "] (" + i.b(d.d(M.L())) + ")" + str3;
        }
        try {
            s K = s.K(M.N(16));
            stringBuffer.append(str2 + str + " ApplicationSpecific[" + M.K() + "]" + str3);
            Enumeration N = K.N();
            while (N.hasMoreElements()) {
                a(str2 + "    ", z10, (r) N.nextElement(), stringBuffer);
            }
        } catch (IOException e10) {
            stringBuffer.append(e10);
        }
        return stringBuffer.toString();
    }
}
