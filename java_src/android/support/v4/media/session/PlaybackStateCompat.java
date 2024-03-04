package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024;
    public static final long ACTION_PLAY_FROM_SEARCH = 2048;
    public static final long ACTION_PLAY_FROM_URI = 8192;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_PREPARE = 16384;
    public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768;
    public static final long ACTION_PREPARE_FROM_SEARCH = 65536;
    public static final long ACTION_PREPARE_FROM_URI = 131072;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SEEK_TO = 256;
    public static final long ACTION_SET_CAPTIONING_ENABLED = 1048576;
    public static final long ACTION_SET_PLAYBACK_SPEED = 4194304;
    public static final long ACTION_SET_RATING = 128;
    public static final long ACTION_SET_REPEAT_MODE = 262144;
    public static final long ACTION_SET_SHUFFLE_MODE = 2097152;
    @Deprecated
    public static final long ACTION_SET_SHUFFLE_MODE_ENABLED = 524288;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096;
    public static final long ACTION_STOP = 1;
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: android.support.v4.media.session.PlaybackStateCompat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat[] newArray(int i9) {
            return new PlaybackStateCompat[i9];
        }
    };
    public static final int ERROR_CODE_ACTION_ABORTED = 10;
    public static final int ERROR_CODE_APP_ERROR = 1;
    public static final int ERROR_CODE_AUTHENTICATION_EXPIRED = 3;
    public static final int ERROR_CODE_CONCURRENT_STREAM_LIMIT = 5;
    public static final int ERROR_CODE_CONTENT_ALREADY_PLAYING = 8;
    public static final int ERROR_CODE_END_OF_QUEUE = 11;
    public static final int ERROR_CODE_NOT_AVAILABLE_IN_REGION = 7;
    public static final int ERROR_CODE_NOT_SUPPORTED = 2;
    public static final int ERROR_CODE_PARENTAL_CONTROL_RESTRICTED = 6;
    public static final int ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED = 4;
    public static final int ERROR_CODE_SKIP_LIMIT_REACHED = 9;
    public static final int ERROR_CODE_UNKNOWN_ERROR = 0;
    private static final int KEYCODE_MEDIA_PAUSE = 127;
    private static final int KEYCODE_MEDIA_PLAY = 126;
    public static final long PLAYBACK_POSITION_UNKNOWN = -1;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_GROUP = 3;
    public static final int REPEAT_MODE_INVALID = -1;
    public static final int REPEAT_MODE_NONE = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int SHUFFLE_MODE_ALL = 1;
    public static final int SHUFFLE_MODE_GROUP = 2;
    public static final int SHUFFLE_MODE_INVALID = -1;
    public static final int SHUFFLE_MODE_NONE = 0;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;
    final long mActions;
    final long mActiveItemId;
    final long mBufferedPosition;
    List<CustomAction> mCustomActions;
    final int mErrorCode;
    final CharSequence mErrorMessage;
    final Bundle mExtras;
    final long mPosition;
    final float mSpeed;
    final int mState;
    private PlaybackState mStateFwk;
    final long mUpdateTime;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Actions {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void addCustomAction(PlaybackState.Builder builder, PlaybackState.CustomAction customAction) {
            builder.addCustomAction(customAction);
        }

        @DoNotInline
        static PlaybackState build(PlaybackState.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        static PlaybackState.Builder createBuilder() {
            return new PlaybackState.Builder();
        }

        @DoNotInline
        static PlaybackState.CustomAction.Builder createCustomActionBuilder(String str, CharSequence charSequence, int i9) {
            return new PlaybackState.CustomAction.Builder(str, charSequence, i9);
        }

        @DoNotInline
        static String getAction(PlaybackState.CustomAction customAction) {
            return customAction.getAction();
        }

        @DoNotInline
        static long getActions(PlaybackState playbackState) {
            return playbackState.getActions();
        }

        @DoNotInline
        static long getActiveQueueItemId(PlaybackState playbackState) {
            return playbackState.getActiveQueueItemId();
        }

        @DoNotInline
        static long getBufferedPosition(PlaybackState playbackState) {
            return playbackState.getBufferedPosition();
        }

        @DoNotInline
        static List<PlaybackState.CustomAction> getCustomActions(PlaybackState playbackState) {
            return playbackState.getCustomActions();
        }

        @DoNotInline
        static CharSequence getErrorMessage(PlaybackState playbackState) {
            return playbackState.getErrorMessage();
        }

        @DoNotInline
        static Bundle getExtras(PlaybackState.CustomAction customAction) {
            return customAction.getExtras();
        }

        @DoNotInline
        static int getIcon(PlaybackState.CustomAction customAction) {
            return customAction.getIcon();
        }

        @DoNotInline
        static long getLastPositionUpdateTime(PlaybackState playbackState) {
            return playbackState.getLastPositionUpdateTime();
        }

        @DoNotInline
        static CharSequence getName(PlaybackState.CustomAction customAction) {
            return customAction.getName();
        }

        @DoNotInline
        static float getPlaybackSpeed(PlaybackState playbackState) {
            return playbackState.getPlaybackSpeed();
        }

        @DoNotInline
        static long getPosition(PlaybackState playbackState) {
            return playbackState.getPosition();
        }

        @DoNotInline
        static int getState(PlaybackState playbackState) {
            return playbackState.getState();
        }

        @DoNotInline
        static void setActions(PlaybackState.Builder builder, long j10) {
            builder.setActions(j10);
        }

        @DoNotInline
        static void setActiveQueueItemId(PlaybackState.Builder builder, long j10) {
            builder.setActiveQueueItemId(j10);
        }

        @DoNotInline
        static void setBufferedPosition(PlaybackState.Builder builder, long j10) {
            builder.setBufferedPosition(j10);
        }

        @DoNotInline
        static void setErrorMessage(PlaybackState.Builder builder, CharSequence charSequence) {
            builder.setErrorMessage(charSequence);
        }

        @DoNotInline
        static void setExtras(PlaybackState.CustomAction.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }

        @DoNotInline
        static void setState(PlaybackState.Builder builder, int i9, long j10, float f10, long j11) {
            builder.setState(i9, j10, f10, j11);
        }

        @DoNotInline
        static PlaybackState.CustomAction build(PlaybackState.CustomAction.Builder builder) {
            return builder.build();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(22)
    /* loaded from: classes.dex */
    public static class Api22Impl {
        private Api22Impl() {
        }

        @DoNotInline
        static Bundle getExtras(PlaybackState playbackState) {
            return playbackState.getExtras();
        }

        @DoNotInline
        static void setExtras(PlaybackState.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private long mActions;
        private long mActiveItemId;
        private long mBufferedPosition;
        private final List<CustomAction> mCustomActions;
        private int mErrorCode;
        private CharSequence mErrorMessage;
        private Bundle mExtras;
        private long mPosition;
        private float mRate;
        private int mState;
        private long mUpdateTime;

        public Builder() {
            this.mCustomActions = new ArrayList();
            this.mActiveItemId = -1L;
        }

        public Builder addCustomAction(String str, String str2, int i9) {
            return addCustomAction(new CustomAction(str, str2, i9, null));
        }

        public PlaybackStateCompat build() {
            return new PlaybackStateCompat(this.mState, this.mPosition, this.mBufferedPosition, this.mRate, this.mActions, this.mErrorCode, this.mErrorMessage, this.mUpdateTime, this.mCustomActions, this.mActiveItemId, this.mExtras);
        }

        public Builder setActions(long j10) {
            this.mActions = j10;
            return this;
        }

        public Builder setActiveQueueItemId(long j10) {
            this.mActiveItemId = j10;
            return this;
        }

        public Builder setBufferedPosition(long j10) {
            this.mBufferedPosition = j10;
            return this;
        }

        @Deprecated
        public Builder setErrorMessage(CharSequence charSequence) {
            this.mErrorMessage = charSequence;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public Builder setState(int i9, long j10, float f10) {
            return setState(i9, j10, f10, SystemClock.elapsedRealtime());
        }

        public Builder addCustomAction(CustomAction customAction) {
            if (customAction != null) {
                this.mCustomActions.add(customAction);
                return this;
            }
            throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackStateCompat");
        }

        public Builder setErrorMessage(int i9, CharSequence charSequence) {
            this.mErrorCode = i9;
            this.mErrorMessage = charSequence;
            return this;
        }

        public Builder setState(int i9, long j10, float f10, long j11) {
            this.mState = i9;
            this.mPosition = j10;
            this.mUpdateTime = j11;
            this.mRate = f10;
            return this;
        }

        public Builder(PlaybackStateCompat playbackStateCompat) {
            ArrayList arrayList = new ArrayList();
            this.mCustomActions = arrayList;
            this.mActiveItemId = -1L;
            this.mState = playbackStateCompat.mState;
            this.mPosition = playbackStateCompat.mPosition;
            this.mRate = playbackStateCompat.mSpeed;
            this.mUpdateTime = playbackStateCompat.mUpdateTime;
            this.mBufferedPosition = playbackStateCompat.mBufferedPosition;
            this.mActions = playbackStateCompat.mActions;
            this.mErrorCode = playbackStateCompat.mErrorCode;
            this.mErrorMessage = playbackStateCompat.mErrorMessage;
            List<CustomAction> list = playbackStateCompat.mCustomActions;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.mActiveItemId = playbackStateCompat.mActiveItemId;
            this.mExtras = playbackStateCompat.mExtras;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface MediaKeyAction {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface RepeatMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ShuffleMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface State {
    }

    PlaybackStateCompat(int i9, long j10, long j11, float f10, long j12, int i10, CharSequence charSequence, long j13, List<CustomAction> list, long j14, Bundle bundle) {
        this.mState = i9;
        this.mPosition = j10;
        this.mBufferedPosition = j11;
        this.mSpeed = f10;
        this.mActions = j12;
        this.mErrorCode = i10;
        this.mErrorMessage = charSequence;
        this.mUpdateTime = j13;
        this.mCustomActions = new ArrayList(list);
        this.mActiveItemId = j14;
        this.mExtras = bundle;
    }

    public static PlaybackStateCompat fromPlaybackState(Object obj) {
        ArrayList arrayList;
        Bundle bundle = null;
        if (obj != null) {
            PlaybackState playbackState = (PlaybackState) obj;
            List<PlaybackState.CustomAction> customActions = Api21Impl.getCustomActions(playbackState);
            if (customActions != null) {
                ArrayList arrayList2 = new ArrayList(customActions.size());
                for (PlaybackState.CustomAction customAction : customActions) {
                    arrayList2.add(CustomAction.fromCustomAction(customAction));
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            if (Build.VERSION.SDK_INT >= 22) {
                bundle = Api22Impl.getExtras(playbackState);
                MediaSessionCompat.ensureClassLoader(bundle);
            }
            PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(Api21Impl.getState(playbackState), Api21Impl.getPosition(playbackState), Api21Impl.getBufferedPosition(playbackState), Api21Impl.getPlaybackSpeed(playbackState), Api21Impl.getActions(playbackState), 0, Api21Impl.getErrorMessage(playbackState), Api21Impl.getLastPositionUpdateTime(playbackState), arrayList, Api21Impl.getActiveQueueItemId(playbackState), bundle);
            playbackStateCompat.mStateFwk = playbackState;
            return playbackStateCompat;
        }
        return null;
    }

    public static int toKeyCode(long j10) {
        if (j10 == 4) {
            return 126;
        }
        if (j10 == 2) {
            return 127;
        }
        if (j10 == 32) {
            return 87;
        }
        if (j10 == 16) {
            return 88;
        }
        if (j10 == 1) {
            return 86;
        }
        if (j10 == 64) {
            return 90;
        }
        if (j10 == 8) {
            return 89;
        }
        return j10 == 512 ? 85 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getActions() {
        return this.mActions;
    }

    public long getActiveQueueItemId() {
        return this.mActiveItemId;
    }

    public long getBufferedPosition() {
        return this.mBufferedPosition;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public long getCurrentPosition(Long l10) {
        return Math.max(0L, this.mPosition + (this.mSpeed * ((float) (l10 != null ? l10.longValue() : SystemClock.elapsedRealtime() - this.mUpdateTime))));
    }

    public List<CustomAction> getCustomActions() {
        return this.mCustomActions;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public CharSequence getErrorMessage() {
        return this.mErrorMessage;
    }

    @Nullable
    public Bundle getExtras() {
        return this.mExtras;
    }

    public long getLastPositionUpdateTime() {
        return this.mUpdateTime;
    }

    public float getPlaybackSpeed() {
        return this.mSpeed;
    }

    public Object getPlaybackState() {
        if (this.mStateFwk == null) {
            PlaybackState.Builder createBuilder = Api21Impl.createBuilder();
            Api21Impl.setState(createBuilder, this.mState, this.mPosition, this.mSpeed, this.mUpdateTime);
            Api21Impl.setBufferedPosition(createBuilder, this.mBufferedPosition);
            Api21Impl.setActions(createBuilder, this.mActions);
            Api21Impl.setErrorMessage(createBuilder, this.mErrorMessage);
            for (CustomAction customAction : this.mCustomActions) {
                Api21Impl.addCustomAction(createBuilder, (PlaybackState.CustomAction) customAction.getCustomAction());
            }
            Api21Impl.setActiveQueueItemId(createBuilder, this.mActiveItemId);
            if (Build.VERSION.SDK_INT >= 22) {
                Api22Impl.setExtras(createBuilder, this.mExtras);
            }
            this.mStateFwk = Api21Impl.build(createBuilder);
        }
        return this.mStateFwk;
    }

    public long getPosition() {
        return this.mPosition;
    }

    public int getState() {
        return this.mState;
    }

    public String toString() {
        return "PlaybackState {state=" + this.mState + ", position=" + this.mPosition + ", buffered position=" + this.mBufferedPosition + ", speed=" + this.mSpeed + ", updated=" + this.mUpdateTime + ", actions=" + this.mActions + ", error code=" + this.mErrorCode + ", error message=" + this.mErrorMessage + ", custom actions=" + this.mCustomActions + ", active item id=" + this.mActiveItemId + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.mState);
        parcel.writeLong(this.mPosition);
        parcel.writeFloat(this.mSpeed);
        parcel.writeLong(this.mUpdateTime);
        parcel.writeLong(this.mBufferedPosition);
        parcel.writeLong(this.mActions);
        TextUtils.writeToParcel(this.mErrorMessage, parcel, i9);
        parcel.writeTypedList(this.mCustomActions);
        parcel.writeLong(this.mActiveItemId);
        parcel.writeBundle(this.mExtras);
        parcel.writeInt(this.mErrorCode);
    }

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CustomAction[] newArray(int i9) {
                return new CustomAction[i9];
            }
        };
        private final String mAction;
        private PlaybackState.CustomAction mCustomActionFwk;
        private final Bundle mExtras;
        private final int mIcon;
        private final CharSequence mName;

        /* loaded from: classes.dex */
        public static final class Builder {
            private final String mAction;
            private Bundle mExtras;
            private final int mIcon;
            private final CharSequence mName;

            public Builder(String str, CharSequence charSequence, int i9) {
                if (!TextUtils.isEmpty(str)) {
                    if (TextUtils.isEmpty(charSequence)) {
                        throw new IllegalArgumentException("You must specify a name to build a CustomAction");
                    }
                    if (i9 != 0) {
                        this.mAction = str;
                        this.mName = charSequence;
                        this.mIcon = i9;
                        return;
                    }
                    throw new IllegalArgumentException("You must specify an icon resource id to build a CustomAction");
                }
                throw new IllegalArgumentException("You must specify an action to build a CustomAction");
            }

            public CustomAction build() {
                return new CustomAction(this.mAction, this.mName, this.mIcon, this.mExtras);
            }

            public Builder setExtras(Bundle bundle) {
                this.mExtras = bundle;
                return this;
            }
        }

        CustomAction(String str, CharSequence charSequence, int i9, Bundle bundle) {
            this.mAction = str;
            this.mName = charSequence;
            this.mIcon = i9;
            this.mExtras = bundle;
        }

        public static CustomAction fromCustomAction(Object obj) {
            if (obj != null) {
                PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
                Bundle extras = Api21Impl.getExtras(customAction);
                MediaSessionCompat.ensureClassLoader(extras);
                CustomAction customAction2 = new CustomAction(Api21Impl.getAction(customAction), Api21Impl.getName(customAction), Api21Impl.getIcon(customAction), extras);
                customAction2.mCustomActionFwk = customAction;
                return customAction2;
            }
            return null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getAction() {
            return this.mAction;
        }

        public Object getCustomAction() {
            PlaybackState.CustomAction customAction = this.mCustomActionFwk;
            if (customAction == null) {
                PlaybackState.CustomAction.Builder createCustomActionBuilder = Api21Impl.createCustomActionBuilder(this.mAction, this.mName, this.mIcon);
                Api21Impl.setExtras(createCustomActionBuilder, this.mExtras);
                return Api21Impl.build(createCustomActionBuilder);
            }
            return customAction;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public int getIcon() {
            return this.mIcon;
        }

        public CharSequence getName() {
            return this.mName;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.mName) + ", mIcon=" + this.mIcon + ", mExtras=" + this.mExtras;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.mAction);
            TextUtils.writeToParcel(this.mName, parcel, i9);
            parcel.writeInt(this.mIcon);
            parcel.writeBundle(this.mExtras);
        }

        CustomAction(Parcel parcel) {
            this.mAction = parcel.readString();
            this.mName = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.mIcon = parcel.readInt();
            this.mExtras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    PlaybackStateCompat(Parcel parcel) {
        this.mState = parcel.readInt();
        this.mPosition = parcel.readLong();
        this.mSpeed = parcel.readFloat();
        this.mUpdateTime = parcel.readLong();
        this.mBufferedPosition = parcel.readLong();
        this.mActions = parcel.readLong();
        this.mErrorMessage = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mCustomActions = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.mActiveItemId = parcel.readLong();
        this.mExtras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.mErrorCode = parcel.readInt();
    }
}
