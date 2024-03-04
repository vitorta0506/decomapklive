package com.google.firebase.encoders.proto;
/* loaded from: classes2.dex */
public @interface Protobuf {

    /* loaded from: classes2.dex */
    public enum IntEncoding {
        DEFAULT,
        SIGNED,
        FIXED
    }

    IntEncoding intEncoding() default IntEncoding.DEFAULT;

    int tag();
}
