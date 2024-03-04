package androidx.media;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
/* loaded from: classes.dex */
public final class AudioManagerCompat {
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    private static final String TAG = "AudioManCompat";

    @RequiresApi(26)
    /* loaded from: classes.dex */
    private static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static int abandonAudioFocusRequest(AudioManager audioManager, AudioFocusRequest audioFocusRequest) {
            return audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }

        @DoNotInline
        static int requestAudioFocus(AudioManager audioManager, AudioFocusRequest audioFocusRequest) {
            return audioManager.requestAudioFocus(audioFocusRequest);
        }
    }

    @RequiresApi(28)
    /* loaded from: classes.dex */
    private static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static int getStreamMinVolume(AudioManager audioManager, int i9) {
            return audioManager.getStreamMinVolume(i9);
        }
    }

    private AudioManagerCompat() {
    }

    public static int abandonAudioFocusRequest(@NonNull AudioManager audioManager, @NonNull AudioFocusRequestCompat audioFocusRequestCompat) {
        if (audioManager != null) {
            if (audioFocusRequestCompat != null) {
                if (Build.VERSION.SDK_INT >= 26) {
                    return Api26Impl.abandonAudioFocusRequest(audioManager, audioFocusRequestCompat.getAudioFocusRequest());
                }
                return audioManager.abandonAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener());
            }
            throw new IllegalArgumentException("AudioFocusRequestCompat must not be null");
        }
        throw new IllegalArgumentException("AudioManager must not be null");
    }

    @IntRange(from = 0)
    public static int getStreamMaxVolume(@NonNull AudioManager audioManager, int i9) {
        return audioManager.getStreamMaxVolume(i9);
    }

    @IntRange(from = 0)
    public static int getStreamMinVolume(@NonNull AudioManager audioManager, int i9) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getStreamMinVolume(audioManager, i9);
        }
        return 0;
    }

    public static int requestAudioFocus(@NonNull AudioManager audioManager, @NonNull AudioFocusRequestCompat audioFocusRequestCompat) {
        if (audioManager != null) {
            if (audioFocusRequestCompat != null) {
                if (Build.VERSION.SDK_INT >= 26) {
                    return Api26Impl.requestAudioFocus(audioManager, audioFocusRequestCompat.getAudioFocusRequest());
                }
                return audioManager.requestAudioFocus(audioFocusRequestCompat.getOnAudioFocusChangeListener(), audioFocusRequestCompat.getAudioAttributesCompat().getLegacyStreamType(), audioFocusRequestCompat.getFocusGain());
            }
            throw new IllegalArgumentException("AudioFocusRequestCompat must not be null");
        }
        throw new IllegalArgumentException("AudioManager must not be null");
    }
}
