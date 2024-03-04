package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum LoginRoute implements WireEnum {
    UNKNOWN_LOGIN_ROUTE(0),
    LOGIN_ROUTE(1),
    VERIFY_ROUTE(2);
    
    public static final ProtoAdapter<LoginRoute> ADAPTER = new EnumAdapter<LoginRoute>() { // from class: com.snapchat.kit.sdk.core.metrics.model.LoginRoute.ProtoAdapter_LoginRoute
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final LoginRoute fromValue(int i9) {
            return LoginRoute.fromValue(i9);
        }
    };
    private final int value;

    LoginRoute(int i9) {
        this.value = i9;
    }

    public static LoginRoute fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return VERIFY_ROUTE;
            }
            return LOGIN_ROUTE;
        }
        return UNKNOWN_LOGIN_ROUTE;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
