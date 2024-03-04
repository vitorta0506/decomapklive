package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.i0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new a();
    public final boolean autoReturn;
    public final int availNum;
    public final int availsExpected;
    public final long breakDurationUs;
    public final List<b> componentSpliceList;
    public final boolean outOfNetworkIndicator;
    public final boolean programSpliceFlag;
    public final long programSplicePlaybackPositionUs;
    public final long programSplicePts;
    public final boolean spliceEventCancelIndicator;
    public final long spliceEventId;
    public final boolean spliceImmediateFlag;
    public final int uniqueProgramId;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<SpliceInsertCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SpliceInsertCommand[] newArray(int i9) {
            return new SpliceInsertCommand[i9];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f6329a;

        /* renamed from: b  reason: collision with root package name */
        public final long f6330b;

        /* renamed from: c  reason: collision with root package name */
        public final long f6331c;

        /* synthetic */ b(int i9, long j10, long j11, a aVar) {
            this(i9, j10, j11);
        }

        public static b a(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.f6329a);
            parcel.writeLong(this.f6330b);
            parcel.writeLong(this.f6331c);
        }

        private b(int i9, long j10, long j11) {
            this.f6329a = i9;
            this.f6330b = j10;
            this.f6331c = j11;
        }
    }

    /* synthetic */ SpliceInsertCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceInsertCommand a(b0 b0Var, long j10, i0 i0Var) {
        List list;
        boolean z10;
        boolean z11;
        long j11;
        boolean z12;
        long j12;
        int i9;
        int i10;
        int i11;
        boolean z13;
        boolean z14;
        long j13;
        long F = b0Var.F();
        boolean z15 = (b0Var.D() & 128) != 0;
        List emptyList = Collections.emptyList();
        if (z15) {
            list = emptyList;
            z10 = false;
            z11 = false;
            j11 = -9223372036854775807L;
            z12 = false;
            j12 = -9223372036854775807L;
            i9 = 0;
            i10 = 0;
            i11 = 0;
            z13 = false;
        } else {
            int D = b0Var.D();
            boolean z16 = (D & 128) != 0;
            boolean z17 = (D & 64) != 0;
            boolean z18 = (D & 32) != 0;
            boolean z19 = (D & 16) != 0;
            long b10 = (!z17 || z19) ? -9223372036854775807L : TimeSignalCommand.b(b0Var, j10);
            if (!z17) {
                int D2 = b0Var.D();
                ArrayList arrayList = new ArrayList(D2);
                for (int i12 = 0; i12 < D2; i12++) {
                    int D3 = b0Var.D();
                    long b11 = !z19 ? TimeSignalCommand.b(b0Var, j10) : -9223372036854775807L;
                    arrayList.add(new b(D3, b11, i0Var.b(b11), null));
                }
                emptyList = arrayList;
            }
            if (z18) {
                long D4 = b0Var.D();
                boolean z20 = (128 & D4) != 0;
                j13 = ((((D4 & 1) << 32) | b0Var.F()) * 1000) / 90;
                z14 = z20;
            } else {
                z14 = false;
                j13 = -9223372036854775807L;
            }
            i9 = b0Var.J();
            z13 = z17;
            i10 = b0Var.D();
            i11 = b0Var.D();
            list = emptyList;
            long j14 = b10;
            z12 = z14;
            j12 = j13;
            z11 = z19;
            z10 = z16;
            j11 = j14;
        }
        return new SpliceInsertCommand(F, z15, z10, z13, z11, j11, i0Var.b(j11), list, z12, j12, i9, i10, i11);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.spliceEventId);
        parcel.writeByte(this.spliceEventCancelIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.outOfNetworkIndicator ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.programSpliceFlag ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.spliceImmediateFlag ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.programSplicePts);
        parcel.writeLong(this.programSplicePlaybackPositionUs);
        int size = this.componentSpliceList.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            this.componentSpliceList.get(i10).b(parcel);
        }
        parcel.writeByte(this.autoReturn ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.breakDurationUs);
        parcel.writeInt(this.uniqueProgramId);
        parcel.writeInt(this.availNum);
        parcel.writeInt(this.availsExpected);
    }

    private SpliceInsertCommand(long j10, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, List<b> list, boolean z14, long j13, int i9, int i10, int i11) {
        this.spliceEventId = j10;
        this.spliceEventCancelIndicator = z10;
        this.outOfNetworkIndicator = z11;
        this.programSpliceFlag = z12;
        this.spliceImmediateFlag = z13;
        this.programSplicePts = j11;
        this.programSplicePlaybackPositionUs = j12;
        this.componentSpliceList = Collections.unmodifiableList(list);
        this.autoReturn = z14;
        this.breakDurationUs = j13;
        this.uniqueProgramId = i9;
        this.availNum = i10;
        this.availsExpected = i11;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.spliceEventId = parcel.readLong();
        this.spliceEventCancelIndicator = parcel.readByte() == 1;
        this.outOfNetworkIndicator = parcel.readByte() == 1;
        this.programSpliceFlag = parcel.readByte() == 1;
        this.spliceImmediateFlag = parcel.readByte() == 1;
        this.programSplicePts = parcel.readLong();
        this.programSplicePlaybackPositionUs = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i9 = 0; i9 < readInt; i9++) {
            arrayList.add(b.a(parcel));
        }
        this.componentSpliceList = Collections.unmodifiableList(arrayList);
        this.autoReturn = parcel.readByte() == 1;
        this.breakDurationUs = parcel.readLong();
        this.uniqueProgramId = parcel.readInt();
        this.availNum = parcel.readInt();
        this.availsExpected = parcel.readInt();
    }
}
