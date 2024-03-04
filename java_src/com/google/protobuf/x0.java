package com.google.protobuf;

import java.util.Objects;
/* loaded from: classes3.dex */
public class x0 {

    /* renamed from: e  reason: collision with root package name */
    private static final f0 f15336e = f0.b();

    /* renamed from: a  reason: collision with root package name */
    private ByteString f15337a;

    /* renamed from: b  reason: collision with root package name */
    private f0 f15338b;

    /* renamed from: c  reason: collision with root package name */
    protected volatile o1 f15339c;

    /* renamed from: d  reason: collision with root package name */
    private volatile ByteString f15340d;

    public x0() {
    }

    public x0(f0 f0Var, ByteString byteString) {
        a(f0Var, byteString);
        this.f15338b = f0Var;
        this.f15337a = byteString;
    }

    private static void a(f0 f0Var, ByteString byteString) {
        Objects.requireNonNull(f0Var, "found null ExtensionRegistry");
        Objects.requireNonNull(byteString, "found null ByteString");
    }

    protected void b(o1 o1Var) {
        if (this.f15339c != null) {
            return;
        }
        synchronized (this) {
            if (this.f15339c != null) {
                return;
            }
            try {
                if (this.f15337a != null) {
                    this.f15339c = o1Var.getParserForType().b(this.f15337a, this.f15338b);
                    this.f15340d = this.f15337a;
                } else {
                    this.f15339c = o1Var;
                    this.f15340d = ByteString.EMPTY;
                }
            } catch (InvalidProtocolBufferException unused) {
                this.f15339c = o1Var;
                this.f15340d = ByteString.EMPTY;
            }
        }
    }

    public int c() {
        if (this.f15340d != null) {
            return this.f15340d.size();
        }
        ByteString byteString = this.f15337a;
        if (byteString != null) {
            return byteString.size();
        }
        if (this.f15339c != null) {
            return this.f15339c.getSerializedSize();
        }
        return 0;
    }

    public o1 d(o1 o1Var) {
        b(o1Var);
        return this.f15339c;
    }

    public o1 e(o1 o1Var) {
        o1 o1Var2 = this.f15339c;
        this.f15337a = null;
        this.f15340d = null;
        this.f15339c = o1Var;
        return o1Var2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x0) {
            x0 x0Var = (x0) obj;
            o1 o1Var = this.f15339c;
            o1 o1Var2 = x0Var.f15339c;
            if (o1Var == null && o1Var2 == null) {
                return f().equals(x0Var.f());
            }
            if (o1Var == null || o1Var2 == null) {
                if (o1Var != null) {
                    return o1Var.equals(x0Var.d(o1Var.getDefaultInstanceForType()));
                }
                return d(o1Var2.getDefaultInstanceForType()).equals(o1Var2);
            }
            return o1Var.equals(o1Var2);
        }
        return false;
    }

    public ByteString f() {
        if (this.f15340d != null) {
            return this.f15340d;
        }
        ByteString byteString = this.f15337a;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            if (this.f15340d != null) {
                return this.f15340d;
            }
            if (this.f15339c == null) {
                this.f15340d = ByteString.EMPTY;
            } else {
                this.f15340d = this.f15339c.toByteString();
            }
            return this.f15340d;
        }
    }

    public int hashCode() {
        return 1;
    }
}
