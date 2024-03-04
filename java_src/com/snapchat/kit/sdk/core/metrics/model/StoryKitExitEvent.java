package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum StoryKitExitEvent implements WireEnum {
    STORY_KIT_EXIT_EVENT_PLAYER_NONE(0),
    STORY_KIT_EXIT_EVENT_TAP_LEFT(1),
    STORY_KIT_EXIT_EVENT_TAP_RIGHT(2),
    STORY_KIT_EXIT_EVENT_AUTO_ADVANCE(3),
    STORY_KIT_EXIT_EVENT_PLAYER_CLOSE(4),
    STORY_KIT_EXIT_EVENT_EXTERNAL_APP_EVENT(5);
    
    public static final ProtoAdapter<StoryKitExitEvent> ADAPTER = new EnumAdapter<StoryKitExitEvent>() { // from class: com.snapchat.kit.sdk.core.metrics.model.StoryKitExitEvent.ProtoAdapter_StoryKitExitEvent
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final StoryKitExitEvent fromValue(int i9) {
            return StoryKitExitEvent.fromValue(i9);
        }
    };
    private final int value;

    StoryKitExitEvent(int i9) {
        this.value = i9;
    }

    public static StoryKitExitEvent fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return null;
                            }
                            return STORY_KIT_EXIT_EVENT_EXTERNAL_APP_EVENT;
                        }
                        return STORY_KIT_EXIT_EVENT_PLAYER_CLOSE;
                    }
                    return STORY_KIT_EXIT_EVENT_AUTO_ADVANCE;
                }
                return STORY_KIT_EXIT_EVENT_TAP_RIGHT;
            }
            return STORY_KIT_EXIT_EVENT_TAP_LEFT;
        }
        return STORY_KIT_EXIT_EVENT_PLAYER_NONE;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
