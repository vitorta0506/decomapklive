package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.proto.Protobuf;
import java.lang.annotation.Annotation;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private int f13839a;

    /* renamed from: b  reason: collision with root package name */
    private Protobuf.IntEncoding f13840b = Protobuf.IntEncoding.DEFAULT;

    /* renamed from: com.google.firebase.encoders.proto.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0134a implements Protobuf {

        /* renamed from: a  reason: collision with root package name */
        private final int f13841a;

        /* renamed from: b  reason: collision with root package name */
        private final Protobuf.IntEncoding f13842b;

        C0134a(int i9, Protobuf.IntEncoding intEncoding) {
            this.f13841a = i9;
            this.f13842b = intEncoding;
        }

        @Override // java.lang.annotation.Annotation
        public Class<? extends Annotation> annotationType() {
            return Protobuf.class;
        }

        @Override // java.lang.annotation.Annotation
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Protobuf) {
                Protobuf protobuf = (Protobuf) obj;
                return this.f13841a == protobuf.tag() && this.f13842b.equals(protobuf.intEncoding());
            }
            return false;
        }

        @Override // java.lang.annotation.Annotation
        public int hashCode() {
            return (this.f13841a ^ 14552422) + (this.f13842b.hashCode() ^ 2041407134);
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public Protobuf.IntEncoding intEncoding() {
            return this.f13842b;
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public int tag() {
            return this.f13841a;
        }

        @Override // java.lang.annotation.Annotation
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f13841a + "intEncoding=" + this.f13842b + ')';
        }
    }

    public static a b() {
        return new a();
    }

    public Protobuf a() {
        return new C0134a(this.f13839a, this.f13840b);
    }

    public a c(int i9) {
        this.f13839a = i9;
        return this;
    }
}
