package com.snapchat.kit.sdk.core.metrics.model;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class ServerEventData extends Message<ServerEventData, Builder> {
    public static final ProtoAdapter<ServerEventData> ADAPTER = new ProtoAdapter_ServerEventData();
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitCreateAvatarTap#ADAPTER", tag = 36)
    public final BitmojiKitCreateAvatarTap bitmoji_kit_create_avatar_tap;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitPermissionUpdate#ADAPTER", tag = 39)
    public final BitmojiKitPermissionUpdate bitmoji_kit_permission_update;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitPreviewIconChange#ADAPTER", tag = 77)
    public final BitmojiKitPreviewIconChange bitmoji_kit_preview_icon_change;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearch#ADAPTER", tag = 33)
    public final BitmojiKitSearch bitmoji_kit_search;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitShare#ADAPTER", tag = 32)
    public final BitmojiKitShare bitmoji_kit_share;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSnapchatLinkSuccess#ADAPTER", tag = 35)
    public final BitmojiKitSnapchatLinkSuccess bitmoji_kit_snapchat_link_success;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSnapchatLinkTap#ADAPTER", tag = 34)
    public final BitmojiKitSnapchatLinkTap bitmoji_kit_snapchat_link_tap;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerClose#ADAPTER", tag = 31)
    public final BitmojiKitStickerPickerClose bitmoji_kit_sticker_picker_close;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerMount#ADAPTER", tag = 73)
    public final BitmojiKitStickerPickerMount bitmoji_kit_sticker_picker_mount;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerOpen#ADAPTER", tag = 30)
    public final BitmojiKitStickerPickerOpen bitmoji_kit_sticker_picker_open;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.CreativeKitShareComplete#ADAPTER", tag = 29)
    public final CreativeKitShareComplete creative_kit_share_complete;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.CreativeKitShareStart#ADAPTER", tag = 28)
    public final CreativeKitShareStart creative_kit_share_start;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.KitHeartbeat#ADAPTER", tag = 76)
    public final KitHeartbeat kit_heartbeat;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.LoginKitAuthComplete#ADAPTER", tag = 38)
    public final LoginKitAuthComplete login_kit_auth_complete;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.LoginKitAuthStart#ADAPTER", tag = 37)
    public final LoginKitAuthStart login_kit_auth_start;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.SkateEvent#ADAPTER", tag = 232)
    public final SkateEvent skate_event;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitSnapPlayback#ADAPTER", tag = 120)
    public final StoryKitSnapPlayback story_kit_snap_playback;
    @WireField(adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitSnapPlaybackPlayerSession#ADAPTER", tag = 121)
    public final StoryKitSnapPlaybackPlayerSession story_kit_snap_playback_player_session;

    /* loaded from: classes4.dex */
    public static final class Builder extends Message.Builder<ServerEventData, Builder> {
        public BitmojiKitCreateAvatarTap bitmoji_kit_create_avatar_tap;
        public BitmojiKitPermissionUpdate bitmoji_kit_permission_update;
        public BitmojiKitPreviewIconChange bitmoji_kit_preview_icon_change;
        public BitmojiKitSearch bitmoji_kit_search;
        public BitmojiKitShare bitmoji_kit_share;
        public BitmojiKitSnapchatLinkSuccess bitmoji_kit_snapchat_link_success;
        public BitmojiKitSnapchatLinkTap bitmoji_kit_snapchat_link_tap;
        public BitmojiKitStickerPickerClose bitmoji_kit_sticker_picker_close;
        public BitmojiKitStickerPickerMount bitmoji_kit_sticker_picker_mount;
        public BitmojiKitStickerPickerOpen bitmoji_kit_sticker_picker_open;
        public CreativeKitShareComplete creative_kit_share_complete;
        public CreativeKitShareStart creative_kit_share_start;
        public KitHeartbeat kit_heartbeat;
        public LoginKitAuthComplete login_kit_auth_complete;
        public LoginKitAuthStart login_kit_auth_start;
        public SkateEvent skate_event;
        public StoryKitSnapPlayback story_kit_snap_playback;
        public StoryKitSnapPlaybackPlayerSession story_kit_snap_playback_player_session;

        public final Builder bitmoji_kit_create_avatar_tap(BitmojiKitCreateAvatarTap bitmojiKitCreateAvatarTap) {
            this.bitmoji_kit_create_avatar_tap = bitmojiKitCreateAvatarTap;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder bitmoji_kit_permission_update(BitmojiKitPermissionUpdate bitmojiKitPermissionUpdate) {
            this.bitmoji_kit_permission_update = bitmojiKitPermissionUpdate;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder bitmoji_kit_preview_icon_change(BitmojiKitPreviewIconChange bitmojiKitPreviewIconChange) {
            this.bitmoji_kit_preview_icon_change = bitmojiKitPreviewIconChange;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder bitmoji_kit_search(BitmojiKitSearch bitmojiKitSearch) {
            this.bitmoji_kit_search = bitmojiKitSearch;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder bitmoji_kit_share(BitmojiKitShare bitmojiKitShare) {
            this.bitmoji_kit_share = bitmojiKitShare;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder bitmoji_kit_snapchat_link_success(BitmojiKitSnapchatLinkSuccess bitmojiKitSnapchatLinkSuccess) {
            this.bitmoji_kit_snapchat_link_success = bitmojiKitSnapchatLinkSuccess;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder bitmoji_kit_snapchat_link_tap(BitmojiKitSnapchatLinkTap bitmojiKitSnapchatLinkTap) {
            this.bitmoji_kit_snapchat_link_tap = bitmojiKitSnapchatLinkTap;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder bitmoji_kit_sticker_picker_close(BitmojiKitStickerPickerClose bitmojiKitStickerPickerClose) {
            this.bitmoji_kit_sticker_picker_close = bitmojiKitStickerPickerClose;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder bitmoji_kit_sticker_picker_mount(BitmojiKitStickerPickerMount bitmojiKitStickerPickerMount) {
            this.bitmoji_kit_sticker_picker_mount = bitmojiKitStickerPickerMount;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder bitmoji_kit_sticker_picker_open(BitmojiKitStickerPickerOpen bitmojiKitStickerPickerOpen) {
            this.bitmoji_kit_sticker_picker_open = bitmojiKitStickerPickerOpen;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder creative_kit_share_complete(CreativeKitShareComplete creativeKitShareComplete) {
            this.creative_kit_share_complete = creativeKitShareComplete;
            this.creative_kit_share_start = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder creative_kit_share_start(CreativeKitShareStart creativeKitShareStart) {
            this.creative_kit_share_start = creativeKitShareStart;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder kit_heartbeat(KitHeartbeat kitHeartbeat) {
            this.kit_heartbeat = kitHeartbeat;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder login_kit_auth_complete(LoginKitAuthComplete loginKitAuthComplete) {
            this.login_kit_auth_complete = loginKitAuthComplete;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder login_kit_auth_start(LoginKitAuthStart loginKitAuthStart) {
            this.login_kit_auth_start = loginKitAuthStart;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder skate_event(SkateEvent skateEvent) {
            this.skate_event = skateEvent;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.story_kit_snap_playback_player_session = null;
            return this;
        }

        public final Builder story_kit_snap_playback(StoryKitSnapPlayback storyKitSnapPlayback) {
            this.story_kit_snap_playback = storyKitSnapPlayback;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback_player_session = null;
            this.skate_event = null;
            return this;
        }

        public final Builder story_kit_snap_playback_player_session(StoryKitSnapPlaybackPlayerSession storyKitSnapPlaybackPlayerSession) {
            this.story_kit_snap_playback_player_session = storyKitSnapPlaybackPlayerSession;
            this.creative_kit_share_start = null;
            this.creative_kit_share_complete = null;
            this.bitmoji_kit_sticker_picker_open = null;
            this.bitmoji_kit_sticker_picker_close = null;
            this.bitmoji_kit_share = null;
            this.bitmoji_kit_search = null;
            this.bitmoji_kit_snapchat_link_tap = null;
            this.bitmoji_kit_snapchat_link_success = null;
            this.bitmoji_kit_create_avatar_tap = null;
            this.login_kit_auth_start = null;
            this.login_kit_auth_complete = null;
            this.bitmoji_kit_permission_update = null;
            this.bitmoji_kit_sticker_picker_mount = null;
            this.kit_heartbeat = null;
            this.bitmoji_kit_preview_icon_change = null;
            this.story_kit_snap_playback = null;
            this.skate_event = null;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public final ServerEventData build() {
            return new ServerEventData(this.creative_kit_share_start, this.creative_kit_share_complete, this.bitmoji_kit_sticker_picker_open, this.bitmoji_kit_sticker_picker_close, this.bitmoji_kit_share, this.bitmoji_kit_search, this.bitmoji_kit_snapchat_link_tap, this.bitmoji_kit_snapchat_link_success, this.bitmoji_kit_create_avatar_tap, this.login_kit_auth_start, this.login_kit_auth_complete, this.bitmoji_kit_permission_update, this.bitmoji_kit_sticker_picker_mount, this.kit_heartbeat, this.bitmoji_kit_preview_icon_change, this.story_kit_snap_playback, this.story_kit_snap_playback_player_session, this.skate_event, super.buildUnknownFields());
        }
    }

    /* loaded from: classes4.dex */
    private static final class ProtoAdapter_ServerEventData extends ProtoAdapter<ServerEventData> {
        public ProtoAdapter_ServerEventData() {
            super(FieldEncoding.LENGTH_DELIMITED, ServerEventData.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public final ServerEventData decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 73) {
                    builder.bitmoji_kit_sticker_picker_mount(BitmojiKitStickerPickerMount.ADAPTER.decode(protoReader));
                } else if (nextTag == 232) {
                    builder.skate_event(SkateEvent.ADAPTER.decode(protoReader));
                } else if (nextTag == 76) {
                    builder.kit_heartbeat(KitHeartbeat.ADAPTER.decode(protoReader));
                } else if (nextTag == 77) {
                    builder.bitmoji_kit_preview_icon_change(BitmojiKitPreviewIconChange.ADAPTER.decode(protoReader));
                } else if (nextTag == 120) {
                    builder.story_kit_snap_playback(StoryKitSnapPlayback.ADAPTER.decode(protoReader));
                } else if (nextTag != 121) {
                    switch (nextTag) {
                        case 28:
                            builder.creative_kit_share_start(CreativeKitShareStart.ADAPTER.decode(protoReader));
                            continue;
                        case 29:
                            builder.creative_kit_share_complete(CreativeKitShareComplete.ADAPTER.decode(protoReader));
                            continue;
                        case 30:
                            builder.bitmoji_kit_sticker_picker_open(BitmojiKitStickerPickerOpen.ADAPTER.decode(protoReader));
                            continue;
                        case 31:
                            builder.bitmoji_kit_sticker_picker_close(BitmojiKitStickerPickerClose.ADAPTER.decode(protoReader));
                            continue;
                        case 32:
                            builder.bitmoji_kit_share(BitmojiKitShare.ADAPTER.decode(protoReader));
                            continue;
                        case 33:
                            builder.bitmoji_kit_search(BitmojiKitSearch.ADAPTER.decode(protoReader));
                            continue;
                        case 34:
                            builder.bitmoji_kit_snapchat_link_tap(BitmojiKitSnapchatLinkTap.ADAPTER.decode(protoReader));
                            continue;
                        case 35:
                            builder.bitmoji_kit_snapchat_link_success(BitmojiKitSnapchatLinkSuccess.ADAPTER.decode(protoReader));
                            continue;
                        case 36:
                            builder.bitmoji_kit_create_avatar_tap(BitmojiKitCreateAvatarTap.ADAPTER.decode(protoReader));
                            continue;
                        case 37:
                            builder.login_kit_auth_start(LoginKitAuthStart.ADAPTER.decode(protoReader));
                            continue;
                        case 38:
                            builder.login_kit_auth_complete(LoginKitAuthComplete.ADAPTER.decode(protoReader));
                            continue;
                        case 39:
                            builder.bitmoji_kit_permission_update(BitmojiKitPermissionUpdate.ADAPTER.decode(protoReader));
                            continue;
                        default:
                            FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                            builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                            continue;
                    }
                } else {
                    builder.story_kit_snap_playback_player_session(StoryKitSnapPlaybackPlayerSession.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final void encode(ProtoWriter protoWriter, ServerEventData serverEventData) throws IOException {
            CreativeKitShareStart.ADAPTER.encodeWithTag(protoWriter, 28, serverEventData.creative_kit_share_start);
            CreativeKitShareComplete.ADAPTER.encodeWithTag(protoWriter, 29, serverEventData.creative_kit_share_complete);
            BitmojiKitStickerPickerOpen.ADAPTER.encodeWithTag(protoWriter, 30, serverEventData.bitmoji_kit_sticker_picker_open);
            BitmojiKitStickerPickerClose.ADAPTER.encodeWithTag(protoWriter, 31, serverEventData.bitmoji_kit_sticker_picker_close);
            BitmojiKitShare.ADAPTER.encodeWithTag(protoWriter, 32, serverEventData.bitmoji_kit_share);
            BitmojiKitSearch.ADAPTER.encodeWithTag(protoWriter, 33, serverEventData.bitmoji_kit_search);
            BitmojiKitSnapchatLinkTap.ADAPTER.encodeWithTag(protoWriter, 34, serverEventData.bitmoji_kit_snapchat_link_tap);
            BitmojiKitSnapchatLinkSuccess.ADAPTER.encodeWithTag(protoWriter, 35, serverEventData.bitmoji_kit_snapchat_link_success);
            BitmojiKitCreateAvatarTap.ADAPTER.encodeWithTag(protoWriter, 36, serverEventData.bitmoji_kit_create_avatar_tap);
            LoginKitAuthStart.ADAPTER.encodeWithTag(protoWriter, 37, serverEventData.login_kit_auth_start);
            LoginKitAuthComplete.ADAPTER.encodeWithTag(protoWriter, 38, serverEventData.login_kit_auth_complete);
            BitmojiKitPermissionUpdate.ADAPTER.encodeWithTag(protoWriter, 39, serverEventData.bitmoji_kit_permission_update);
            BitmojiKitStickerPickerMount.ADAPTER.encodeWithTag(protoWriter, 73, serverEventData.bitmoji_kit_sticker_picker_mount);
            KitHeartbeat.ADAPTER.encodeWithTag(protoWriter, 76, serverEventData.kit_heartbeat);
            BitmojiKitPreviewIconChange.ADAPTER.encodeWithTag(protoWriter, 77, serverEventData.bitmoji_kit_preview_icon_change);
            StoryKitSnapPlayback.ADAPTER.encodeWithTag(protoWriter, 120, serverEventData.story_kit_snap_playback);
            StoryKitSnapPlaybackPlayerSession.ADAPTER.encodeWithTag(protoWriter, 121, serverEventData.story_kit_snap_playback_player_session);
            SkateEvent.ADAPTER.encodeWithTag(protoWriter, 232, serverEventData.skate_event);
            protoWriter.writeBytes(serverEventData.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public final int encodedSize(ServerEventData serverEventData) {
            return CreativeKitShareStart.ADAPTER.encodedSizeWithTag(28, serverEventData.creative_kit_share_start) + CreativeKitShareComplete.ADAPTER.encodedSizeWithTag(29, serverEventData.creative_kit_share_complete) + BitmojiKitStickerPickerOpen.ADAPTER.encodedSizeWithTag(30, serverEventData.bitmoji_kit_sticker_picker_open) + BitmojiKitStickerPickerClose.ADAPTER.encodedSizeWithTag(31, serverEventData.bitmoji_kit_sticker_picker_close) + BitmojiKitShare.ADAPTER.encodedSizeWithTag(32, serverEventData.bitmoji_kit_share) + BitmojiKitSearch.ADAPTER.encodedSizeWithTag(33, serverEventData.bitmoji_kit_search) + BitmojiKitSnapchatLinkTap.ADAPTER.encodedSizeWithTag(34, serverEventData.bitmoji_kit_snapchat_link_tap) + BitmojiKitSnapchatLinkSuccess.ADAPTER.encodedSizeWithTag(35, serverEventData.bitmoji_kit_snapchat_link_success) + BitmojiKitCreateAvatarTap.ADAPTER.encodedSizeWithTag(36, serverEventData.bitmoji_kit_create_avatar_tap) + LoginKitAuthStart.ADAPTER.encodedSizeWithTag(37, serverEventData.login_kit_auth_start) + LoginKitAuthComplete.ADAPTER.encodedSizeWithTag(38, serverEventData.login_kit_auth_complete) + BitmojiKitPermissionUpdate.ADAPTER.encodedSizeWithTag(39, serverEventData.bitmoji_kit_permission_update) + BitmojiKitStickerPickerMount.ADAPTER.encodedSizeWithTag(73, serverEventData.bitmoji_kit_sticker_picker_mount) + KitHeartbeat.ADAPTER.encodedSizeWithTag(76, serverEventData.kit_heartbeat) + BitmojiKitPreviewIconChange.ADAPTER.encodedSizeWithTag(77, serverEventData.bitmoji_kit_preview_icon_change) + StoryKitSnapPlayback.ADAPTER.encodedSizeWithTag(120, serverEventData.story_kit_snap_playback) + StoryKitSnapPlaybackPlayerSession.ADAPTER.encodedSizeWithTag(121, serverEventData.story_kit_snap_playback_player_session) + SkateEvent.ADAPTER.encodedSizeWithTag(232, serverEventData.skate_event) + serverEventData.unknownFields().size();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.snapchat.kit.sdk.core.metrics.model.ServerEventData$Builder, com.squareup.wire.Message$Builder] */
        @Override // com.squareup.wire.ProtoAdapter
        public final ServerEventData redact(ServerEventData serverEventData) {
            ?? newBuilder2 = serverEventData.newBuilder2();
            CreativeKitShareStart creativeKitShareStart = newBuilder2.creative_kit_share_start;
            if (creativeKitShareStart != null) {
                newBuilder2.creative_kit_share_start = CreativeKitShareStart.ADAPTER.redact(creativeKitShareStart);
            }
            CreativeKitShareComplete creativeKitShareComplete = newBuilder2.creative_kit_share_complete;
            if (creativeKitShareComplete != null) {
                newBuilder2.creative_kit_share_complete = CreativeKitShareComplete.ADAPTER.redact(creativeKitShareComplete);
            }
            BitmojiKitStickerPickerOpen bitmojiKitStickerPickerOpen = newBuilder2.bitmoji_kit_sticker_picker_open;
            if (bitmojiKitStickerPickerOpen != null) {
                newBuilder2.bitmoji_kit_sticker_picker_open = BitmojiKitStickerPickerOpen.ADAPTER.redact(bitmojiKitStickerPickerOpen);
            }
            BitmojiKitStickerPickerClose bitmojiKitStickerPickerClose = newBuilder2.bitmoji_kit_sticker_picker_close;
            if (bitmojiKitStickerPickerClose != null) {
                newBuilder2.bitmoji_kit_sticker_picker_close = BitmojiKitStickerPickerClose.ADAPTER.redact(bitmojiKitStickerPickerClose);
            }
            BitmojiKitShare bitmojiKitShare = newBuilder2.bitmoji_kit_share;
            if (bitmojiKitShare != null) {
                newBuilder2.bitmoji_kit_share = BitmojiKitShare.ADAPTER.redact(bitmojiKitShare);
            }
            BitmojiKitSearch bitmojiKitSearch = newBuilder2.bitmoji_kit_search;
            if (bitmojiKitSearch != null) {
                newBuilder2.bitmoji_kit_search = BitmojiKitSearch.ADAPTER.redact(bitmojiKitSearch);
            }
            BitmojiKitSnapchatLinkTap bitmojiKitSnapchatLinkTap = newBuilder2.bitmoji_kit_snapchat_link_tap;
            if (bitmojiKitSnapchatLinkTap != null) {
                newBuilder2.bitmoji_kit_snapchat_link_tap = BitmojiKitSnapchatLinkTap.ADAPTER.redact(bitmojiKitSnapchatLinkTap);
            }
            BitmojiKitSnapchatLinkSuccess bitmojiKitSnapchatLinkSuccess = newBuilder2.bitmoji_kit_snapchat_link_success;
            if (bitmojiKitSnapchatLinkSuccess != null) {
                newBuilder2.bitmoji_kit_snapchat_link_success = BitmojiKitSnapchatLinkSuccess.ADAPTER.redact(bitmojiKitSnapchatLinkSuccess);
            }
            BitmojiKitCreateAvatarTap bitmojiKitCreateAvatarTap = newBuilder2.bitmoji_kit_create_avatar_tap;
            if (bitmojiKitCreateAvatarTap != null) {
                newBuilder2.bitmoji_kit_create_avatar_tap = BitmojiKitCreateAvatarTap.ADAPTER.redact(bitmojiKitCreateAvatarTap);
            }
            LoginKitAuthStart loginKitAuthStart = newBuilder2.login_kit_auth_start;
            if (loginKitAuthStart != null) {
                newBuilder2.login_kit_auth_start = LoginKitAuthStart.ADAPTER.redact(loginKitAuthStart);
            }
            LoginKitAuthComplete loginKitAuthComplete = newBuilder2.login_kit_auth_complete;
            if (loginKitAuthComplete != null) {
                newBuilder2.login_kit_auth_complete = LoginKitAuthComplete.ADAPTER.redact(loginKitAuthComplete);
            }
            BitmojiKitPermissionUpdate bitmojiKitPermissionUpdate = newBuilder2.bitmoji_kit_permission_update;
            if (bitmojiKitPermissionUpdate != null) {
                newBuilder2.bitmoji_kit_permission_update = BitmojiKitPermissionUpdate.ADAPTER.redact(bitmojiKitPermissionUpdate);
            }
            BitmojiKitStickerPickerMount bitmojiKitStickerPickerMount = newBuilder2.bitmoji_kit_sticker_picker_mount;
            if (bitmojiKitStickerPickerMount != null) {
                newBuilder2.bitmoji_kit_sticker_picker_mount = BitmojiKitStickerPickerMount.ADAPTER.redact(bitmojiKitStickerPickerMount);
            }
            KitHeartbeat kitHeartbeat = newBuilder2.kit_heartbeat;
            if (kitHeartbeat != null) {
                newBuilder2.kit_heartbeat = KitHeartbeat.ADAPTER.redact(kitHeartbeat);
            }
            BitmojiKitPreviewIconChange bitmojiKitPreviewIconChange = newBuilder2.bitmoji_kit_preview_icon_change;
            if (bitmojiKitPreviewIconChange != null) {
                newBuilder2.bitmoji_kit_preview_icon_change = BitmojiKitPreviewIconChange.ADAPTER.redact(bitmojiKitPreviewIconChange);
            }
            StoryKitSnapPlayback storyKitSnapPlayback = newBuilder2.story_kit_snap_playback;
            if (storyKitSnapPlayback != null) {
                newBuilder2.story_kit_snap_playback = StoryKitSnapPlayback.ADAPTER.redact(storyKitSnapPlayback);
            }
            StoryKitSnapPlaybackPlayerSession storyKitSnapPlaybackPlayerSession = newBuilder2.story_kit_snap_playback_player_session;
            if (storyKitSnapPlaybackPlayerSession != null) {
                newBuilder2.story_kit_snap_playback_player_session = StoryKitSnapPlaybackPlayerSession.ADAPTER.redact(storyKitSnapPlaybackPlayerSession);
            }
            SkateEvent skateEvent = newBuilder2.skate_event;
            if (skateEvent != null) {
                newBuilder2.skate_event = SkateEvent.ADAPTER.redact(skateEvent);
            }
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    public ServerEventData(CreativeKitShareStart creativeKitShareStart, CreativeKitShareComplete creativeKitShareComplete, BitmojiKitStickerPickerOpen bitmojiKitStickerPickerOpen, BitmojiKitStickerPickerClose bitmojiKitStickerPickerClose, BitmojiKitShare bitmojiKitShare, BitmojiKitSearch bitmojiKitSearch, BitmojiKitSnapchatLinkTap bitmojiKitSnapchatLinkTap, BitmojiKitSnapchatLinkSuccess bitmojiKitSnapchatLinkSuccess, BitmojiKitCreateAvatarTap bitmojiKitCreateAvatarTap, LoginKitAuthStart loginKitAuthStart, LoginKitAuthComplete loginKitAuthComplete, BitmojiKitPermissionUpdate bitmojiKitPermissionUpdate, BitmojiKitStickerPickerMount bitmojiKitStickerPickerMount, KitHeartbeat kitHeartbeat, BitmojiKitPreviewIconChange bitmojiKitPreviewIconChange, StoryKitSnapPlayback storyKitSnapPlayback, StoryKitSnapPlaybackPlayerSession storyKitSnapPlaybackPlayerSession, SkateEvent skateEvent) {
        this(creativeKitShareStart, creativeKitShareComplete, bitmojiKitStickerPickerOpen, bitmojiKitStickerPickerClose, bitmojiKitShare, bitmojiKitSearch, bitmojiKitSnapchatLinkTap, bitmojiKitSnapchatLinkSuccess, bitmojiKitCreateAvatarTap, loginKitAuthStart, loginKitAuthComplete, bitmojiKitPermissionUpdate, bitmojiKitStickerPickerMount, kitHeartbeat, bitmojiKitPreviewIconChange, storyKitSnapPlayback, storyKitSnapPlaybackPlayerSession, skateEvent, ByteString.EMPTY);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ServerEventData) {
            ServerEventData serverEventData = (ServerEventData) obj;
            return unknownFields().equals(serverEventData.unknownFields()) && Internal.equals(this.creative_kit_share_start, serverEventData.creative_kit_share_start) && Internal.equals(this.creative_kit_share_complete, serverEventData.creative_kit_share_complete) && Internal.equals(this.bitmoji_kit_sticker_picker_open, serverEventData.bitmoji_kit_sticker_picker_open) && Internal.equals(this.bitmoji_kit_sticker_picker_close, serverEventData.bitmoji_kit_sticker_picker_close) && Internal.equals(this.bitmoji_kit_share, serverEventData.bitmoji_kit_share) && Internal.equals(this.bitmoji_kit_search, serverEventData.bitmoji_kit_search) && Internal.equals(this.bitmoji_kit_snapchat_link_tap, serverEventData.bitmoji_kit_snapchat_link_tap) && Internal.equals(this.bitmoji_kit_snapchat_link_success, serverEventData.bitmoji_kit_snapchat_link_success) && Internal.equals(this.bitmoji_kit_create_avatar_tap, serverEventData.bitmoji_kit_create_avatar_tap) && Internal.equals(this.login_kit_auth_start, serverEventData.login_kit_auth_start) && Internal.equals(this.login_kit_auth_complete, serverEventData.login_kit_auth_complete) && Internal.equals(this.bitmoji_kit_permission_update, serverEventData.bitmoji_kit_permission_update) && Internal.equals(this.bitmoji_kit_sticker_picker_mount, serverEventData.bitmoji_kit_sticker_picker_mount) && Internal.equals(this.kit_heartbeat, serverEventData.kit_heartbeat) && Internal.equals(this.bitmoji_kit_preview_icon_change, serverEventData.bitmoji_kit_preview_icon_change) && Internal.equals(this.story_kit_snap_playback, serverEventData.story_kit_snap_playback) && Internal.equals(this.story_kit_snap_playback_player_session, serverEventData.story_kit_snap_playback_player_session) && Internal.equals(this.skate_event, serverEventData.skate_event);
        }
        return false;
    }

    public final int hashCode() {
        int i9 = this.hashCode;
        if (i9 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            CreativeKitShareStart creativeKitShareStart = this.creative_kit_share_start;
            int hashCode2 = (hashCode + (creativeKitShareStart != null ? creativeKitShareStart.hashCode() : 0)) * 37;
            CreativeKitShareComplete creativeKitShareComplete = this.creative_kit_share_complete;
            int hashCode3 = (hashCode2 + (creativeKitShareComplete != null ? creativeKitShareComplete.hashCode() : 0)) * 37;
            BitmojiKitStickerPickerOpen bitmojiKitStickerPickerOpen = this.bitmoji_kit_sticker_picker_open;
            int hashCode4 = (hashCode3 + (bitmojiKitStickerPickerOpen != null ? bitmojiKitStickerPickerOpen.hashCode() : 0)) * 37;
            BitmojiKitStickerPickerClose bitmojiKitStickerPickerClose = this.bitmoji_kit_sticker_picker_close;
            int hashCode5 = (hashCode4 + (bitmojiKitStickerPickerClose != null ? bitmojiKitStickerPickerClose.hashCode() : 0)) * 37;
            BitmojiKitShare bitmojiKitShare = this.bitmoji_kit_share;
            int hashCode6 = (hashCode5 + (bitmojiKitShare != null ? bitmojiKitShare.hashCode() : 0)) * 37;
            BitmojiKitSearch bitmojiKitSearch = this.bitmoji_kit_search;
            int hashCode7 = (hashCode6 + (bitmojiKitSearch != null ? bitmojiKitSearch.hashCode() : 0)) * 37;
            BitmojiKitSnapchatLinkTap bitmojiKitSnapchatLinkTap = this.bitmoji_kit_snapchat_link_tap;
            int hashCode8 = (hashCode7 + (bitmojiKitSnapchatLinkTap != null ? bitmojiKitSnapchatLinkTap.hashCode() : 0)) * 37;
            BitmojiKitSnapchatLinkSuccess bitmojiKitSnapchatLinkSuccess = this.bitmoji_kit_snapchat_link_success;
            int hashCode9 = (hashCode8 + (bitmojiKitSnapchatLinkSuccess != null ? bitmojiKitSnapchatLinkSuccess.hashCode() : 0)) * 37;
            BitmojiKitCreateAvatarTap bitmojiKitCreateAvatarTap = this.bitmoji_kit_create_avatar_tap;
            int hashCode10 = (hashCode9 + (bitmojiKitCreateAvatarTap != null ? bitmojiKitCreateAvatarTap.hashCode() : 0)) * 37;
            LoginKitAuthStart loginKitAuthStart = this.login_kit_auth_start;
            int hashCode11 = (hashCode10 + (loginKitAuthStart != null ? loginKitAuthStart.hashCode() : 0)) * 37;
            LoginKitAuthComplete loginKitAuthComplete = this.login_kit_auth_complete;
            int hashCode12 = (hashCode11 + (loginKitAuthComplete != null ? loginKitAuthComplete.hashCode() : 0)) * 37;
            BitmojiKitPermissionUpdate bitmojiKitPermissionUpdate = this.bitmoji_kit_permission_update;
            int hashCode13 = (hashCode12 + (bitmojiKitPermissionUpdate != null ? bitmojiKitPermissionUpdate.hashCode() : 0)) * 37;
            BitmojiKitStickerPickerMount bitmojiKitStickerPickerMount = this.bitmoji_kit_sticker_picker_mount;
            int hashCode14 = (hashCode13 + (bitmojiKitStickerPickerMount != null ? bitmojiKitStickerPickerMount.hashCode() : 0)) * 37;
            KitHeartbeat kitHeartbeat = this.kit_heartbeat;
            int hashCode15 = (hashCode14 + (kitHeartbeat != null ? kitHeartbeat.hashCode() : 0)) * 37;
            BitmojiKitPreviewIconChange bitmojiKitPreviewIconChange = this.bitmoji_kit_preview_icon_change;
            int hashCode16 = (hashCode15 + (bitmojiKitPreviewIconChange != null ? bitmojiKitPreviewIconChange.hashCode() : 0)) * 37;
            StoryKitSnapPlayback storyKitSnapPlayback = this.story_kit_snap_playback;
            int hashCode17 = (hashCode16 + (storyKitSnapPlayback != null ? storyKitSnapPlayback.hashCode() : 0)) * 37;
            StoryKitSnapPlaybackPlayerSession storyKitSnapPlaybackPlayerSession = this.story_kit_snap_playback_player_session;
            int hashCode18 = (hashCode17 + (storyKitSnapPlaybackPlayerSession != null ? storyKitSnapPlaybackPlayerSession.hashCode() : 0)) * 37;
            SkateEvent skateEvent = this.skate_event;
            int hashCode19 = hashCode18 + (skateEvent != null ? skateEvent.hashCode() : 0);
            this.hashCode = hashCode19;
            return hashCode19;
        }
        return i9;
    }

    @Override // com.squareup.wire.Message
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.creative_kit_share_start != null) {
            sb2.append(", creative_kit_share_start=");
            sb2.append(this.creative_kit_share_start);
        }
        if (this.creative_kit_share_complete != null) {
            sb2.append(", creative_kit_share_complete=");
            sb2.append(this.creative_kit_share_complete);
        }
        if (this.bitmoji_kit_sticker_picker_open != null) {
            sb2.append(", bitmoji_kit_sticker_picker_open=");
            sb2.append(this.bitmoji_kit_sticker_picker_open);
        }
        if (this.bitmoji_kit_sticker_picker_close != null) {
            sb2.append(", bitmoji_kit_sticker_picker_close=");
            sb2.append(this.bitmoji_kit_sticker_picker_close);
        }
        if (this.bitmoji_kit_share != null) {
            sb2.append(", bitmoji_kit_share=");
            sb2.append(this.bitmoji_kit_share);
        }
        if (this.bitmoji_kit_search != null) {
            sb2.append(", bitmoji_kit_search=");
            sb2.append(this.bitmoji_kit_search);
        }
        if (this.bitmoji_kit_snapchat_link_tap != null) {
            sb2.append(", bitmoji_kit_snapchat_link_tap=");
            sb2.append(this.bitmoji_kit_snapchat_link_tap);
        }
        if (this.bitmoji_kit_snapchat_link_success != null) {
            sb2.append(", bitmoji_kit_snapchat_link_success=");
            sb2.append(this.bitmoji_kit_snapchat_link_success);
        }
        if (this.bitmoji_kit_create_avatar_tap != null) {
            sb2.append(", bitmoji_kit_create_avatar_tap=");
            sb2.append(this.bitmoji_kit_create_avatar_tap);
        }
        if (this.login_kit_auth_start != null) {
            sb2.append(", login_kit_auth_start=");
            sb2.append(this.login_kit_auth_start);
        }
        if (this.login_kit_auth_complete != null) {
            sb2.append(", login_kit_auth_complete=");
            sb2.append(this.login_kit_auth_complete);
        }
        if (this.bitmoji_kit_permission_update != null) {
            sb2.append(", bitmoji_kit_permission_update=");
            sb2.append(this.bitmoji_kit_permission_update);
        }
        if (this.bitmoji_kit_sticker_picker_mount != null) {
            sb2.append(", bitmoji_kit_sticker_picker_mount=");
            sb2.append(this.bitmoji_kit_sticker_picker_mount);
        }
        if (this.kit_heartbeat != null) {
            sb2.append(", kit_heartbeat=");
            sb2.append(this.kit_heartbeat);
        }
        if (this.bitmoji_kit_preview_icon_change != null) {
            sb2.append(", bitmoji_kit_preview_icon_change=");
            sb2.append(this.bitmoji_kit_preview_icon_change);
        }
        if (this.story_kit_snap_playback != null) {
            sb2.append(", story_kit_snap_playback=");
            sb2.append(this.story_kit_snap_playback);
        }
        if (this.story_kit_snap_playback_player_session != null) {
            sb2.append(", story_kit_snap_playback_player_session=");
            sb2.append(this.story_kit_snap_playback_player_session);
        }
        if (this.skate_event != null) {
            sb2.append(", skate_event=");
            sb2.append(this.skate_event);
        }
        StringBuilder replace = sb2.replace(0, 2, "ServerEventData{");
        replace.append('}');
        return replace.toString();
    }

    public ServerEventData(CreativeKitShareStart creativeKitShareStart, CreativeKitShareComplete creativeKitShareComplete, BitmojiKitStickerPickerOpen bitmojiKitStickerPickerOpen, BitmojiKitStickerPickerClose bitmojiKitStickerPickerClose, BitmojiKitShare bitmojiKitShare, BitmojiKitSearch bitmojiKitSearch, BitmojiKitSnapchatLinkTap bitmojiKitSnapchatLinkTap, BitmojiKitSnapchatLinkSuccess bitmojiKitSnapchatLinkSuccess, BitmojiKitCreateAvatarTap bitmojiKitCreateAvatarTap, LoginKitAuthStart loginKitAuthStart, LoginKitAuthComplete loginKitAuthComplete, BitmojiKitPermissionUpdate bitmojiKitPermissionUpdate, BitmojiKitStickerPickerMount bitmojiKitStickerPickerMount, KitHeartbeat kitHeartbeat, BitmojiKitPreviewIconChange bitmojiKitPreviewIconChange, StoryKitSnapPlayback storyKitSnapPlayback, StoryKitSnapPlaybackPlayerSession storyKitSnapPlaybackPlayerSession, SkateEvent skateEvent, ByteString byteString) {
        super(ADAPTER, byteString);
        if (Internal.countNonNull(creativeKitShareStart, creativeKitShareComplete, bitmojiKitStickerPickerOpen, bitmojiKitStickerPickerClose, bitmojiKitShare, bitmojiKitSearch, bitmojiKitSnapchatLinkTap, bitmojiKitSnapchatLinkSuccess, bitmojiKitCreateAvatarTap, loginKitAuthStart, loginKitAuthComplete, bitmojiKitPermissionUpdate, bitmojiKitStickerPickerMount, kitHeartbeat, bitmojiKitPreviewIconChange, storyKitSnapPlayback, storyKitSnapPlaybackPlayerSession, skateEvent) <= 1) {
            this.creative_kit_share_start = creativeKitShareStart;
            this.creative_kit_share_complete = creativeKitShareComplete;
            this.bitmoji_kit_sticker_picker_open = bitmojiKitStickerPickerOpen;
            this.bitmoji_kit_sticker_picker_close = bitmojiKitStickerPickerClose;
            this.bitmoji_kit_share = bitmojiKitShare;
            this.bitmoji_kit_search = bitmojiKitSearch;
            this.bitmoji_kit_snapchat_link_tap = bitmojiKitSnapchatLinkTap;
            this.bitmoji_kit_snapchat_link_success = bitmojiKitSnapchatLinkSuccess;
            this.bitmoji_kit_create_avatar_tap = bitmojiKitCreateAvatarTap;
            this.login_kit_auth_start = loginKitAuthStart;
            this.login_kit_auth_complete = loginKitAuthComplete;
            this.bitmoji_kit_permission_update = bitmojiKitPermissionUpdate;
            this.bitmoji_kit_sticker_picker_mount = bitmojiKitStickerPickerMount;
            this.kit_heartbeat = kitHeartbeat;
            this.bitmoji_kit_preview_icon_change = bitmojiKitPreviewIconChange;
            this.story_kit_snap_playback = storyKitSnapPlayback;
            this.story_kit_snap_playback_player_session = storyKitSnapPlaybackPlayerSession;
            this.skate_event = skateEvent;
            return;
        }
        throw new IllegalArgumentException("at most one of creative_kit_share_start, creative_kit_share_complete, bitmoji_kit_sticker_picker_open, bitmoji_kit_sticker_picker_close, bitmoji_kit_share, bitmoji_kit_search, bitmoji_kit_snapchat_link_tap, bitmoji_kit_snapchat_link_success, bitmoji_kit_create_avatar_tap, login_kit_auth_start, login_kit_auth_complete, bitmoji_kit_permission_update, bitmoji_kit_sticker_picker_mount, kit_heartbeat, bitmoji_kit_preview_icon_change, story_kit_snap_playback, story_kit_snap_playback_player_session, skate_event may be non-null");
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public final Message.Builder<ServerEventData, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.creative_kit_share_start = this.creative_kit_share_start;
        builder.creative_kit_share_complete = this.creative_kit_share_complete;
        builder.bitmoji_kit_sticker_picker_open = this.bitmoji_kit_sticker_picker_open;
        builder.bitmoji_kit_sticker_picker_close = this.bitmoji_kit_sticker_picker_close;
        builder.bitmoji_kit_share = this.bitmoji_kit_share;
        builder.bitmoji_kit_search = this.bitmoji_kit_search;
        builder.bitmoji_kit_snapchat_link_tap = this.bitmoji_kit_snapchat_link_tap;
        builder.bitmoji_kit_snapchat_link_success = this.bitmoji_kit_snapchat_link_success;
        builder.bitmoji_kit_create_avatar_tap = this.bitmoji_kit_create_avatar_tap;
        builder.login_kit_auth_start = this.login_kit_auth_start;
        builder.login_kit_auth_complete = this.login_kit_auth_complete;
        builder.bitmoji_kit_permission_update = this.bitmoji_kit_permission_update;
        builder.bitmoji_kit_sticker_picker_mount = this.bitmoji_kit_sticker_picker_mount;
        builder.kit_heartbeat = this.kit_heartbeat;
        builder.bitmoji_kit_preview_icon_change = this.bitmoji_kit_preview_icon_change;
        builder.story_kit_snap_playback = this.story_kit_snap_playback;
        builder.story_kit_snap_playback_player_session = this.story_kit_snap_playback_player_session;
        builder.skate_event = this.skate_event;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
