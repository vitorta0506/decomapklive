package com.vk.sdk.api.users.dto;

import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/vk/sdk/api/users/dto/UsersSearchStatus;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NOT_SPECIFIED", "NOT_MARRIED", "RELATIONSHIP", "ENGAGED", "MARRIED", "COMPLICATED", "ACTIVELY_SEARCHING", "IN_LOVE", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum UsersSearchStatus {
    NOT_SPECIFIED(0),
    NOT_MARRIED(1),
    RELATIONSHIP(2),
    ENGAGED(3),
    MARRIED(4),
    COMPLICATED(5),
    ACTIVELY_SEARCHING(6),
    IN_LOVE(7);
    
    private final int value;

    UsersSearchStatus(int i9) {
        this.value = i9;
    }

    public final int getValue() {
        return this.value;
    }
}
