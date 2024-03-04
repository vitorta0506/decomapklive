package jk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    protected final BigInteger f53306a;

    /* renamed from: b  reason: collision with root package name */
    protected final BigInteger f53307b;

    /* renamed from: c  reason: collision with root package name */
    protected final BigInteger f53308c;

    /* renamed from: d  reason: collision with root package name */
    protected final BigInteger f53309d;

    /* renamed from: e  reason: collision with root package name */
    protected final BigInteger f53310e;

    /* renamed from: f  reason: collision with root package name */
    protected final BigInteger f53311f;

    /* renamed from: g  reason: collision with root package name */
    protected final int f53312g;

    public d(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2, BigInteger bigInteger, BigInteger bigInteger2, int i9) {
        a(bigIntegerArr, "v1");
        a(bigIntegerArr2, "v2");
        this.f53306a = bigIntegerArr[0];
        this.f53307b = bigIntegerArr[1];
        this.f53308c = bigIntegerArr2[0];
        this.f53309d = bigIntegerArr2[1];
        this.f53310e = bigInteger;
        this.f53311f = bigInteger2;
        this.f53312g = i9;
    }

    private static void a(BigInteger[] bigIntegerArr, String str) {
        if (bigIntegerArr == null || bigIntegerArr.length != 2 || bigIntegerArr[0] == null || bigIntegerArr[1] == null) {
            throw new IllegalArgumentException("'" + str + "' must consist of exactly 2 (non-null) values");
        }
    }
}
