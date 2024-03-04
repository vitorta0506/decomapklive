package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes6.dex */
public enum RequestMethod implements h2 {
    METHOD_UNSPECIFIED(0),
    GET(1),
    HEAD(2),
    POST(3),
    PUT(4),
    DELETE(5),
    CONNECT(6),
    OPTIONS(7),
    TRACE(8),
    PATCH(9),
    UNRECOGNIZED(-1);
    
    public static final int CONNECT_VALUE = 6;
    public static final int DELETE_VALUE = 5;
    public static final int GET_VALUE = 1;
    public static final int HEAD_VALUE = 2;
    public static final int METHOD_UNSPECIFIED_VALUE = 0;
    public static final int OPTIONS_VALUE = 7;
    public static final int PATCH_VALUE = 9;
    public static final int POST_VALUE = 3;
    public static final int PUT_VALUE = 4;
    public static final int TRACE_VALUE = 8;
    private final int value;
    private static final u0.d<RequestMethod> internalValueMap = new u0.d<RequestMethod>() { // from class: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RequestMethod.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public RequestMethod a(int i9) {
            return RequestMethod.forNumber(i9);
        }
    };
    private static final RequestMethod[] VALUES = values();

    RequestMethod(int i9) {
        this.value = i9;
    }

    public static RequestMethod forNumber(int i9) {
        switch (i9) {
            case 0:
                return METHOD_UNSPECIFIED;
            case 1:
                return GET;
            case 2:
                return HEAD;
            case 3:
                return POST;
            case 4:
                return PUT;
            case 5:
                return DELETE;
            case 6:
                return CONNECT;
            case 7:
                return OPTIONS;
            case 8:
                return TRACE;
            case 9:
                return PATCH;
            default:
                return null;
        }
    }

    public static final Descriptors.d getDescriptor() {
        return g.a().k().get(1);
    }

    public static u0.d<RequestMethod> internalGetValueMap() {
        return internalValueMap;
    }

    public final Descriptors.d getDescriptorForType() {
        return getDescriptor();
    }

    @Override // com.google.protobuf.u0.c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public final Descriptors.e getValueDescriptor() {
        if (this != UNRECOGNIZED) {
            return getDescriptor().k().get(ordinal());
        }
        throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
    }

    @Deprecated
    public static RequestMethod valueOf(int i9) {
        return forNumber(i9);
    }

    public static RequestMethod valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
