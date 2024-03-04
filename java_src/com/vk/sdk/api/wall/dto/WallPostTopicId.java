package com.vk.sdk.api.wall.dto;

import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/vk/sdk/api/wall/dto/WallPostTopicId;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "EMPTY_TOPIC", "ART", "IT", "GAMES", "MUSIC", "PHOTO", "SCIENCE_AND_TECH", "SPORT", "TRAVEL", "TV_AND_CINEMA", "HUMOR", "FASHION", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum WallPostTopicId {
    EMPTY_TOPIC(0),
    ART(1),
    IT(7),
    GAMES(12),
    MUSIC(16),
    PHOTO(19),
    SCIENCE_AND_TECH(21),
    SPORT(23),
    TRAVEL(25),
    TV_AND_CINEMA(26),
    HUMOR(32),
    FASHION(43);
    
    private final int value;

    WallPostTopicId(int i9) {
        this.value = i9;
    }

    public final int getValue() {
        return this.value;
    }
}
