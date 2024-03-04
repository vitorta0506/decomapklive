package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum DailySessionBucket implements WireEnum {
    NO_SESSION_BUCKET(0),
    ONE_SESSION(1),
    TWO_SESSION(2),
    THREE_SESSION(3),
    FOUR_SESSION(4),
    FIVE_SESSION(5),
    SIX_SESSION(6),
    SEVEN_SESSION(7),
    EIGHT_SESSION(8),
    NINE_SESSION(9),
    TEN_OR_MORE_SESSION(10);
    
    public static final ProtoAdapter<DailySessionBucket> ADAPTER = new EnumAdapter<DailySessionBucket>() { // from class: com.snapchat.kit.sdk.core.metrics.model.DailySessionBucket.ProtoAdapter_DailySessionBucket
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final DailySessionBucket fromValue(int i9) {
            return DailySessionBucket.fromValue(i9);
        }
    };
    private final int value;

    DailySessionBucket(int i9) {
        this.value = i9;
    }

    public static DailySessionBucket fromValue(int i9) {
        switch (i9) {
            case 0:
                return NO_SESSION_BUCKET;
            case 1:
                return ONE_SESSION;
            case 2:
                return TWO_SESSION;
            case 3:
                return THREE_SESSION;
            case 4:
                return FOUR_SESSION;
            case 5:
                return FIVE_SESSION;
            case 6:
                return SIX_SESSION;
            case 7:
                return SEVEN_SESSION;
            case 8:
                return EIGHT_SESSION;
            case 9:
                return NINE_SESSION;
            case 10:
                return TEN_OR_MORE_SESSION;
            default:
                return null;
        }
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
