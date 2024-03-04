package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.i0;
/* loaded from: classes.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new a();
    public final long playbackPositionUs;
    public final long ptsTime;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<TimeSignalCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TimeSignalCommand[] newArray(int i9) {
            return new TimeSignalCommand[i9];
        }
    }

    /* synthetic */ TimeSignalCommand(long j10, long j11, a aVar) {
        this(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TimeSignalCommand a(b0 b0Var, long j10, i0 i0Var) {
        long b10 = b(b0Var, j10);
        return new TimeSignalCommand(b10, i0Var.b(b10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(b0 b0Var, long j10) {
        long D = b0Var.D();
        if ((128 & D) != 0) {
            return 8589934591L & ((((D & 1) << 32) | b0Var.F()) + j10);
        }
        return -9223372036854775807L;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.ptsTime);
        parcel.writeLong(this.playbackPositionUs);
    }

    private TimeSignalCommand(long j10, long j11) {
        this.ptsTime = j10;
        this.playbackPositionUs = j11;
    }
}
