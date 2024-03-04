package org.bouncycastle.asn1;
/* loaded from: classes7.dex */
public class z1 {

    /* renamed from: a  reason: collision with root package name */
    private String f56001a;

    /* renamed from: b  reason: collision with root package name */
    private int f56002b = 0;

    public z1(String str) {
        this.f56001a = str;
    }

    public boolean a() {
        return this.f56002b != -1;
    }

    public String b() {
        int i9 = this.f56002b;
        if (i9 == -1) {
            return null;
        }
        int indexOf = this.f56001a.indexOf(46, i9);
        if (indexOf == -1) {
            String substring = this.f56001a.substring(this.f56002b);
            this.f56002b = -1;
            return substring;
        }
        String substring2 = this.f56001a.substring(this.f56002b, indexOf);
        this.f56002b = indexOf + 1;
        return substring2;
    }
}
