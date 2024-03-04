package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum StoryKitPlayerType implements WireEnum {
    STORY_KIT_PLAYER_TYPE_NONE(0),
    STORY_KIT_PLAYER_TYPE_EMBEDDED(1),
    STORY_KIT_PLAYER_TYPE_FULLSCREEN(2);
    
    public static final ProtoAdapter<StoryKitPlayerType> ADAPTER = new EnumAdapter<StoryKitPlayerType>() { // from class: com.snapchat.kit.sdk.core.metrics.model.StoryKitPlayerType.ProtoAdapter_StoryKitPlayerType
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final StoryKitPlayerType fromValue(int i9) {
            return StoryKitPlayerType.fromValue(i9);
        }
    };
    private final int value;

    StoryKitPlayerType(int i9) {
        this.value = i9;
    }

    public static StoryKitPlayerType fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return STORY_KIT_PLAYER_TYPE_FULLSCREEN;
            }
            return STORY_KIT_PLAYER_TYPE_EMBEDDED;
        }
        return STORY_KIT_PLAYER_TYPE_NONE;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
