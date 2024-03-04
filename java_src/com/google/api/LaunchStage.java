package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes2.dex */
public enum LaunchStage implements h2 {
    LAUNCH_STAGE_UNSPECIFIED(0),
    UNIMPLEMENTED(6),
    PRELAUNCH(7),
    EARLY_ACCESS(1),
    ALPHA(2),
    BETA(3),
    GA(4),
    DEPRECATED(5),
    UNRECOGNIZED(-1);
    
    public static final int ALPHA_VALUE = 2;
    public static final int BETA_VALUE = 3;
    public static final int DEPRECATED_VALUE = 5;
    public static final int EARLY_ACCESS_VALUE = 1;
    public static final int GA_VALUE = 4;
    public static final int LAUNCH_STAGE_UNSPECIFIED_VALUE = 0;
    public static final int PRELAUNCH_VALUE = 7;
    public static final int UNIMPLEMENTED_VALUE = 6;
    private final int value;
    private static final u0.d<LaunchStage> internalValueMap = new u0.d<LaunchStage>() { // from class: com.google.api.LaunchStage.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public LaunchStage a(int i9) {
            return LaunchStage.forNumber(i9);
        }
    };
    private static final LaunchStage[] VALUES = values();

    LaunchStage(int i9) {
        this.value = i9;
    }

    public static LaunchStage forNumber(int i9) {
        switch (i9) {
            case 0:
                return LAUNCH_STAGE_UNSPECIFIED;
            case 1:
                return EARLY_ACCESS;
            case 2:
                return ALPHA;
            case 3:
                return BETA;
            case 4:
                return GA;
            case 5:
                return DEPRECATED;
            case 6:
                return UNIMPLEMENTED;
            case 7:
                return PRELAUNCH;
            default:
                return null;
        }
    }

    public static final Descriptors.d getDescriptor() {
        return k0.a().k().get(0);
    }

    public static u0.d<LaunchStage> internalGetValueMap() {
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
    public static LaunchStage valueOf(int i9) {
        return forNumber(i9);
    }

    public static LaunchStage valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
