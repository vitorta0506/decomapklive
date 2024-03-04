package com.facebook;

import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.Utility;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010J\u001c\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J\u001a\u0010\f\u001a\u00020\u00122\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0014\u001a\u00020\u0010H\u0002R(\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/facebook/ProfileManager;", "", "localBroadcastManager", "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;", "profileCache", "Lcom/facebook/ProfileCache;", "(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V", "value", "Lcom/facebook/Profile;", "currentProfile", "getCurrentProfile", "()Lcom/facebook/Profile;", "setCurrentProfile", "(Lcom/facebook/Profile;)V", "currentProfileField", "loadCurrentProfile", "", "sendCurrentProfileChangedBroadcast", "", "oldProfile", "writeToCache", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ProfileManager {
    @NotNull
    public static final String ACTION_CURRENT_PROFILE_CHANGED = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String EXTRA_NEW_PROFILE = "com.facebook.sdk.EXTRA_NEW_PROFILE";
    @NotNull
    public static final String EXTRA_OLD_PROFILE = "com.facebook.sdk.EXTRA_OLD_PROFILE";
    private static volatile ProfileManager instance;
    @Nullable
    private Profile currentProfileField;
    @NotNull
    private final LocalBroadcastManager localBroadcastManager;
    @NotNull
    private final ProfileCache profileCache;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/facebook/ProfileManager$Companion;", "", "()V", "ACTION_CURRENT_PROFILE_CHANGED", "", "EXTRA_NEW_PROFILE", "EXTRA_OLD_PROFILE", "instance", "Lcom/facebook/ProfileManager;", "getInstance", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final synchronized ProfileManager getInstance() {
            ProfileManager profileManager;
            if (ProfileManager.instance == null) {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext());
                Intrinsics.checkNotNullExpressionValue(localBroadcastManager, "getInstance(applicationContext)");
                ProfileManager.instance = new ProfileManager(localBroadcastManager, new ProfileCache());
            }
            profileManager = ProfileManager.instance;
            if (profileManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("instance");
                throw null;
            }
            return profileManager;
        }
    }

    public ProfileManager(@NotNull LocalBroadcastManager localBroadcastManager, @NotNull ProfileCache profileCache) {
        Intrinsics.checkNotNullParameter(localBroadcastManager, "localBroadcastManager");
        Intrinsics.checkNotNullParameter(profileCache, "profileCache");
        this.localBroadcastManager = localBroadcastManager;
        this.profileCache = profileCache;
    }

    @JvmStatic
    @NotNull
    public static final synchronized ProfileManager getInstance() {
        ProfileManager companion;
        synchronized (ProfileManager.class) {
            companion = Companion.getInstance();
        }
        return companion;
    }

    private final void sendCurrentProfileChangedBroadcast(Profile profile, Profile profile2) {
        Intent intent = new Intent(ACTION_CURRENT_PROFILE_CHANGED);
        intent.putExtra(EXTRA_OLD_PROFILE, profile);
        intent.putExtra(EXTRA_NEW_PROFILE, profile2);
        this.localBroadcastManager.sendBroadcast(intent);
    }

    @Nullable
    public final Profile getCurrentProfile() {
        return this.currentProfileField;
    }

    public final boolean loadCurrentProfile() {
        Profile load = this.profileCache.load();
        if (load != null) {
            setCurrentProfile(load, false);
            return true;
        }
        return false;
    }

    public final void setCurrentProfile(@Nullable Profile profile) {
        setCurrentProfile(profile, true);
    }

    private final void setCurrentProfile(Profile profile, boolean z10) {
        Profile profile2 = this.currentProfileField;
        this.currentProfileField = profile;
        if (z10) {
            if (profile != null) {
                this.profileCache.save(profile);
            } else {
                this.profileCache.clear();
            }
        }
        Utility utility = Utility.INSTANCE;
        if (Utility.areObjectsEqual(profile2, profile)) {
            return;
        }
        sendCurrentProfileChangedBroadcast(profile2, profile);
    }
}
