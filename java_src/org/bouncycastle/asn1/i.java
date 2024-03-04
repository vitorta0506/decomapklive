package org.bouncycastle.asn1;

import com.facebook.internal.security.CertificateUtil;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
/* loaded from: classes7.dex */
public class i extends r {

    /* renamed from: a  reason: collision with root package name */
    protected byte[] f55936a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("GeneralizedTime string too short");
        }
        this.f55936a = bArr;
        if (!a0(0) || !a0(1) || !a0(2) || !a0(3)) {
            throw new IllegalArgumentException("illegal characters in GeneralizedTime string");
        }
    }

    private SimpleDateFormat K() {
        SimpleDateFormat simpleDateFormat = Q() ? new SimpleDateFormat("yyyyMMddHHmmss.SSSz") : S() ? new SimpleDateFormat("yyyyMMddHHmmssz") : R() ? new SimpleDateFormat("yyyyMMddHHmmz") : new SimpleDateFormat("yyyyMMddHHz");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat;
    }

    private String L(String str) {
        String str2;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str2 = "-";
        } else {
            str2 = "+";
        }
        int i9 = rawOffset / 3600000;
        int i10 = (rawOffset - (((i9 * 60) * 60) * 1000)) / 60000;
        try {
            if (timeZone.useDaylightTime()) {
                if (Q()) {
                    str = b0(str);
                }
                SimpleDateFormat K = K();
                if (timeZone.inDaylightTime(K.parse(str + "GMT" + str2 + M(i9) + CertificateUtil.DELIMITER + M(i10)))) {
                    i9 += str2.equals("+") ? 1 : -1;
                }
            }
        } catch (ParseException unused) {
        }
        return "GMT" + str2 + M(i9) + CertificateUtil.DELIMITER + M(i10);
    }

    private String M(int i9) {
        if (i9 < 10) {
            return "0" + i9;
        }
        return Integer.toString(i9);
    }

    public static i O(Object obj) {
        if (obj == null || (obj instanceof i)) {
            return (i) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (i) r.G((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    private boolean a0(int i9) {
        byte[] bArr = this.f55936a;
        return bArr.length > i9 && bArr[i9] >= 48 && bArr[i9] <= 57;
    }

    private String b0(String str) {
        String str2;
        StringBuilder sb2;
        char charAt;
        String substring = str.substring(14);
        int i9 = 1;
        while (i9 < substring.length() && '0' <= (charAt = substring.charAt(i9)) && charAt <= '9') {
            i9++;
        }
        int i10 = i9 - 1;
        if (i10 > 3) {
            str2 = substring.substring(0, 4) + substring.substring(i9);
            sb2 = new StringBuilder();
        } else if (i10 == 1) {
            str2 = substring.substring(0, i9) + "00" + substring.substring(i9);
            sb2 = new StringBuilder();
        } else if (i10 != 2) {
            return str;
        } else {
            str2 = substring.substring(0, i9) + "0" + substring.substring(i9);
            sb2 = new StringBuilder();
        }
        sb2.append(str.substring(0, 14));
        sb2.append(str2);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r I() {
        return new r0(this.f55936a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r J() {
        return new r0(this.f55936a);
    }

    public Date N() throws ParseException {
        SimpleDateFormat K;
        String b10 = org.bouncycastle.util.i.b(this.f55936a);
        if (b10.endsWith("Z")) {
            K = Q() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS'Z'") : S() ? new SimpleDateFormat("yyyyMMddHHmmss'Z'") : R() ? new SimpleDateFormat("yyyyMMddHHmm'Z'") : new SimpleDateFormat("yyyyMMddHH'Z'");
            K.setTimeZone(new SimpleTimeZone(0, "Z"));
        } else if (b10.indexOf(45) > 0 || b10.indexOf(43) > 0) {
            b10 = P();
            K = K();
        } else {
            K = Q() ? new SimpleDateFormat("yyyyMMddHHmmss.SSS") : S() ? new SimpleDateFormat("yyyyMMddHHmmss") : R() ? new SimpleDateFormat("yyyyMMddHHmm") : new SimpleDateFormat("yyyyMMddHH");
            K.setTimeZone(new SimpleTimeZone(0, TimeZone.getDefault().getID()));
        }
        if (Q()) {
            b10 = b0(b10);
        }
        return s1.a(K.parse(b10));
    }

    public String P() {
        int length;
        String b10 = org.bouncycastle.util.i.b(this.f55936a);
        if (b10.charAt(b10.length() - 1) == 'Z') {
            return b10.substring(0, b10.length() - 1) + "GMT+00:00";
        }
        int length2 = b10.length() - 6;
        char charAt = b10.charAt(length2);
        if ((charAt == '-' || charAt == '+') && b10.indexOf("GMT") == length2 - 3) {
            return b10;
        }
        int length3 = b10.length() - 5;
        char charAt2 = b10.charAt(length3);
        if (charAt2 == '-' || charAt2 == '+') {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(b10.substring(0, length3));
            sb2.append("GMT");
            int i9 = length3 + 3;
            sb2.append(b10.substring(length3, i9));
            sb2.append(CertificateUtil.DELIMITER);
            sb2.append(b10.substring(i9));
            return sb2.toString();
        }
        char charAt3 = b10.charAt(b10.length() - 3);
        if (charAt3 != '-' && charAt3 != '+') {
            return b10 + L(b10);
        }
        return b10.substring(0, length) + "GMT" + b10.substring(length) + ":00";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean Q() {
        int i9 = 0;
        while (true) {
            byte[] bArr = this.f55936a;
            if (i9 == bArr.length) {
                return false;
            }
            if (bArr[i9] == 46 && i9 == 14) {
                return true;
            }
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean R() {
        return a0(10) && a0(11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean S() {
        return a0(12) && a0(13);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f55936a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof i) {
            return org.bouncycastle.util.a.a(this.f55936a, ((i) rVar).f55936a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 24, this.f55936a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        int length = this.f55936a.length;
        return a2.a(length) + 1 + length;
    }
}
