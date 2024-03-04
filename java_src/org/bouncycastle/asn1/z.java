package org.bouncycastle.asn1;

import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
/* loaded from: classes7.dex */
public class z extends r {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f55999a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(byte[] bArr) {
        if (bArr.length < 2) {
            throw new IllegalArgumentException("UTCTime string too short");
        }
        this.f55999a = bArr;
        if (!N(0) || !N(1)) {
            throw new IllegalArgumentException("illegal characters in UTCTime string");
        }
    }

    private boolean N(int i9) {
        byte[] bArr = this.f55999a;
        return bArr.length > i9 && bArr[i9] >= 48 && bArr[i9] <= 57;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    public Date K() throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return s1.a(simpleDateFormat.parse(L()));
    }

    public String L() {
        StringBuilder sb2;
        String str;
        String M = M();
        if (M.charAt(0) < '5') {
            sb2 = new StringBuilder();
            str = ThirdPushHelper.TYPE_HUAWEI;
        } else {
            sb2 = new StringBuilder();
            str = "19";
        }
        sb2.append(str);
        sb2.append(M);
        return sb2.toString();
    }

    public String M() {
        StringBuilder sb2;
        String substring;
        String b10 = org.bouncycastle.util.i.b(this.f55999a);
        if (b10.indexOf(45) >= 0 || b10.indexOf(43) >= 0) {
            int indexOf = b10.indexOf(45);
            if (indexOf < 0) {
                indexOf = b10.indexOf(43);
            }
            if (indexOf == b10.length() - 3) {
                b10 = b10 + "00";
            }
            if (indexOf == 10) {
                sb2 = new StringBuilder();
                sb2.append(b10.substring(0, 10));
                sb2.append("00GMT");
                sb2.append(b10.substring(10, 13));
                sb2.append(CertificateUtil.DELIMITER);
                substring = b10.substring(13, 15);
            } else {
                sb2 = new StringBuilder();
                sb2.append(b10.substring(0, 12));
                sb2.append("GMT");
                sb2.append(b10.substring(12, 15));
                sb2.append(CertificateUtil.DELIMITER);
                substring = b10.substring(15, 17);
            }
        } else if (b10.length() == 11) {
            sb2 = new StringBuilder();
            sb2.append(b10.substring(0, 10));
            substring = "00GMT+00:00";
        } else {
            sb2 = new StringBuilder();
            sb2.append(b10.substring(0, 12));
            substring = "GMT+00:00";
        }
        sb2.append(substring);
        return sb2.toString();
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f55999a);
    }

    public String toString() {
        return org.bouncycastle.util.i.b(this.f55999a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof z) {
            return org.bouncycastle.util.a.a(this.f55999a, ((z) rVar).f55999a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 23, this.f55999a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        int length = this.f55999a.length;
        return a2.a(length) + 1 + length;
    }
}
