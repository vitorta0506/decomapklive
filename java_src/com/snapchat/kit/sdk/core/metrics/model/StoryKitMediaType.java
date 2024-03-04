package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.WireEnum;
/* loaded from: classes4.dex */
public enum StoryKitMediaType implements WireEnum {
    STORY_KIT_MEDIA_TYPE_NONE(0),
    STORY_KIT_MEDIA_TYPE_VIDEO(1),
    STORY_KIT_MEDIA_TYPE_IMAGE(2);
    
    public static final ProtoAdapter<StoryKitMediaType> ADAPTER = new EnumAdapter<StoryKitMediaType>() { // from class: com.snapchat.kit.sdk.core.metrics.model.StoryKitMediaType.ProtoAdapter_StoryKitMediaType
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.EnumAdapter
        public final StoryKitMediaType fromValue(int i9) {
            return StoryKitMediaType.fromValue(i9);
        }
    };
    private final int value;

    StoryKitMediaType(int i9) {
        this.value = i9;
    }

    public static StoryKitMediaType fromValue(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return STORY_KIT_MEDIA_TYPE_IMAGE;
            }
            return STORY_KIT_MEDIA_TYPE_VIDEO;
        }
        return STORY_KIT_MEDIA_TYPE_NONE;
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.value;
    }
}
