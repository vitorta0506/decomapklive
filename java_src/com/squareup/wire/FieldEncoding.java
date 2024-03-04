package com.squareup.wire;

import java.io.IOException;
import java.net.ProtocolException;
/* loaded from: classes4.dex */
public enum FieldEncoding {
    VARINT(0),
    FIXED64(1),
    LENGTH_DELIMITED(2),
    FIXED32(5);
    
    final int value;

    /* renamed from: com.squareup.wire.FieldEncoding$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$squareup$wire$FieldEncoding;

        static {
            int[] iArr = new int[FieldEncoding.values().length];
            $SwitchMap$com$squareup$wire$FieldEncoding = iArr;
            try {
                iArr[FieldEncoding.VARINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$squareup$wire$FieldEncoding[FieldEncoding.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$squareup$wire$FieldEncoding[FieldEncoding.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$squareup$wire$FieldEncoding[FieldEncoding.LENGTH_DELIMITED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    FieldEncoding(int i9) {
        this.value = i9;
    }

    static FieldEncoding get(int i9) throws IOException {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 5) {
                        return FIXED32;
                    }
                    throw new ProtocolException("Unexpected FieldEncoding: " + i9);
                }
                return LENGTH_DELIMITED;
            }
            return FIXED64;
        }
        return VARINT;
    }

    public ProtoAdapter<?> rawProtoAdapter() {
        int i9 = AnonymousClass1.$SwitchMap$com$squareup$wire$FieldEncoding[ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 == 4) {
                        return ProtoAdapter.BYTES;
                    }
                    throw new AssertionError();
                }
                return ProtoAdapter.FIXED64;
            }
            return ProtoAdapter.FIXED32;
        }
        return ProtoAdapter.UINT64;
    }
}
