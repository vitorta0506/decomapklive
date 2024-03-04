package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum StoryKitEntryEvent implements WireEnum {
    STORY_KIT_ENTRY_EVENT_PLAYER_NONE(0),
    STORY_KIT_ENTRY_EVENT_PLAYER_OPEN(1),
    STORY_KIT_ENTRY_EVENT_TAP_LEFT(2),
    STORY_KIT_ENTRY_EVENT_TAP_RIGHT(3),
    STORY_KIT_ENTRY_EVENT_AUTO_ADVANCE(4);
    
    public static final ProtoAdapter<StoryKitEntryEvent> ADAPTER = new EnumAdapter<StoryKitEntryEvent>() { // from class: com.snapchat.kit.sdk.core.metrics.model.StoryKitEntryEvent.ProtoAdapter_StoryKitEntryEvent
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final StoryKitEntryEvent fromValue(int i9) {
            return StoryKitEntryEvent.fromValue(i9);
        }
    };
    private final int value;

    StoryKitEntryEvent(int i9) {
        this.value = i9;
    }

    public static StoryKitEntryEvent fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            return null;
                        }
                        return STORY_KIT_ENTRY_EVENT_AUTO_ADVANCE;
                    }
                    return STORY_KIT_ENTRY_EVENT_TAP_RIGHT;
                }
                return STORY_KIT_ENTRY_EVENT_TAP_LEFT;
            }
            return STORY_KIT_ENTRY_EVENT_PLAYER_OPEN;
        }
        return STORY_KIT_ENTRY_EVENT_PLAYER_NONE;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
