package androidx.media;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImpl;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mContentType;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mFlags;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mLegacyStream;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mUsage;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Builder implements AudioAttributesImpl.Builder {
        private int mContentType;
        private int mFlags;
        private int mLegacyStream;
        private int mUsage;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder() {
            this.mUsage = 0;
            this.mContentType = 0;
            this.mFlags = 0;
            this.mLegacyStream = -1;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private Builder setInternalLegacyStreamType(int i9) {
            switch (i9) {
                case 0:
                    this.mContentType = 1;
                    break;
                case 1:
                    this.mContentType = 4;
                    break;
                case 2:
                    this.mContentType = 4;
                    break;
                case 3:
                    this.mContentType = 2;
                    break;
                case 4:
                    this.mContentType = 4;
                    break;
                case 5:
                    this.mContentType = 4;
                    break;
                case 6:
                    this.mContentType = 1;
                    this.mFlags |= 4;
                    break;
                case 7:
                    this.mFlags = 1 | this.mFlags;
                    this.mContentType = 4;
                    break;
                case 8:
                    this.mContentType = 4;
                    break;
                case 9:
                    this.mContentType = 4;
                    break;
                case 10:
                    this.mContentType = 1;
                    break;
                default:
                    Log.e("AudioAttributesCompat", "Invalid stream type " + i9 + " for AudioAttributesCompat");
                    break;
            }
            this.mUsage = AudioAttributesImplBase.usageForStreamType(i9);
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public AudioAttributesImpl build() {
            return new AudioAttributesImplBase(this.mContentType, this.mFlags, this.mUsage, this.mLegacyStream);
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public Builder setContentType(int i9) {
            if (i9 != 0 && i9 != 1 && i9 != 2 && i9 != 3 && i9 != 4) {
                this.mContentType = 0;
            } else {
                this.mContentType = i9;
            }
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public Builder setFlags(int i9) {
            this.mFlags = (i9 & UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER) | this.mFlags;
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public Builder setLegacyStreamType(int i9) {
            if (i9 != 10) {
                this.mLegacyStream = i9;
                return setInternalLegacyStreamType(i9);
            }
            throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        @NonNull
        public Builder setUsage(int i9) {
            switch (i9) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    this.mUsage = i9;
                    break;
                case 16:
                    this.mUsage = 12;
                    break;
                default:
                    this.mUsage = 0;
                    break;
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(AudioAttributesCompat audioAttributesCompat) {
            this.mUsage = 0;
            this.mContentType = 0;
            this.mFlags = 0;
            this.mLegacyStream = -1;
            this.mUsage = audioAttributesCompat.getUsage();
            this.mContentType = audioAttributesCompat.getContentType();
            this.mFlags = audioAttributesCompat.getFlags();
            this.mLegacyStream = audioAttributesCompat.getRawLegacyStreamType();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public AudioAttributesImplBase() {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
        this.mLegacyStream = -1;
    }

    static int usageForStreamType(int i9) {
        switch (i9) {
            case 0:
                return 2;
            case 1:
            case 7:
                return 13;
            case 2:
                return 6;
            case 3:
                return 1;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 2;
            case 8:
                return 3;
            case 9:
            default:
                return 0;
            case 10:
                return 11;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplBase) {
            AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
            return this.mContentType == audioAttributesImplBase.getContentType() && this.mFlags == audioAttributesImplBase.getFlags() && this.mUsage == audioAttributesImplBase.getUsage() && this.mLegacyStream == audioAttributesImplBase.mLegacyStream;
        }
        return false;
    }

    @Override // androidx.media.AudioAttributesImpl
    @Nullable
    public Object getAudioAttributes() {
        return null;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getContentType() {
        return this.mContentType;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getFlags() {
        int i9 = this.mFlags;
        int legacyStreamType = getLegacyStreamType();
        if (legacyStreamType == 6) {
            i9 |= 4;
        } else if (legacyStreamType == 7) {
            i9 |= 1;
        }
        return i9 & 273;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        int i9 = this.mLegacyStream;
        return i9 != -1 ? i9 : AudioAttributesCompat.toVolumeStreamType(false, this.mFlags, this.mUsage);
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getRawLegacyStreamType() {
        return this.mLegacyStream;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getUsage() {
        return this.mUsage;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        return AudioAttributesCompat.toVolumeStreamType(true, this.mFlags, this.mUsage);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.mContentType), Integer.valueOf(this.mFlags), Integer.valueOf(this.mUsage), Integer.valueOf(this.mLegacyStream)});
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder("AudioAttributesCompat:");
        if (this.mLegacyStream != -1) {
            sb2.append(" stream=");
            sb2.append(this.mLegacyStream);
            sb2.append(" derived");
        }
        sb2.append(" usage=");
        sb2.append(AudioAttributesCompat.usageToString(this.mUsage));
        sb2.append(" content=");
        sb2.append(this.mContentType);
        sb2.append(" flags=0x");
        sb2.append(Integer.toHexString(this.mFlags).toUpperCase());
        return sb2.toString();
    }

    AudioAttributesImplBase(int i9, int i10, int i11, int i12) {
        this.mContentType = i9;
        this.mFlags = i10;
        this.mUsage = i11;
        this.mLegacyStream = i12;
    }
}
