package com.google.firebase.heartbeatinfo;

import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public interface HeartBeatInfo {

    /* loaded from: classes2.dex */
    public enum HeartBeat {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);
        
        private final int code;

        HeartBeat(int i9) {
            this.code = i9;
        }

        public int getCode() {
            return this.code;
        }
    }

    @NonNull
    HeartBeat b(@NonNull String str);
}
