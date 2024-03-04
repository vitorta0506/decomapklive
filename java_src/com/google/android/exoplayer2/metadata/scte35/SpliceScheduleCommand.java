package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.b0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new a();
    public final List<c> events;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Parcelable.Creator<SpliceScheduleCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SpliceScheduleCommand[] newArray(int i9) {
            return new SpliceScheduleCommand[i9];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f6332a;

        /* renamed from: b  reason: collision with root package name */
        public final long f6333b;

        /* synthetic */ b(int i9, long j10, a aVar) {
            this(i9, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Parcel parcel) {
            parcel.writeInt(this.f6332a);
            parcel.writeLong(this.f6333b);
        }

        private b(int i9, long j10) {
            this.f6332a = i9;
            this.f6333b = j10;
        }
    }

    /* synthetic */ SpliceScheduleCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceScheduleCommand a(b0 b0Var) {
        int D = b0Var.D();
        ArrayList arrayList = new ArrayList(D);
        for (int i9 = 0; i9 < D; i9++) {
            arrayList.add(c.e(b0Var));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        int size = this.events.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            this.events.get(i10).f(parcel);
        }
    }

    private SpliceScheduleCommand(List<c> list) {
        this.events = Collections.unmodifiableList(list);
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i9 = 0; i9 < readInt; i9++) {
            arrayList.add(c.d(parcel));
        }
        this.events = Collections.unmodifiableList(arrayList);
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final long f6334a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f6335b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f6336c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f6337d;

        /* renamed from: e  reason: collision with root package name */
        public final long f6338e;

        /* renamed from: f  reason: collision with root package name */
        public final List<b> f6339f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f6340g;

        /* renamed from: h  reason: collision with root package name */
        public final long f6341h;

        /* renamed from: i  reason: collision with root package name */
        public final int f6342i;

        /* renamed from: j  reason: collision with root package name */
        public final int f6343j;

        /* renamed from: k  reason: collision with root package name */
        public final int f6344k;

        private c(long j10, boolean z10, boolean z11, boolean z12, List<b> list, long j11, boolean z13, long j12, int i9, int i10, int i11) {
            this.f6334a = j10;
            this.f6335b = z10;
            this.f6336c = z11;
            this.f6337d = z12;
            this.f6339f = Collections.unmodifiableList(list);
            this.f6338e = j11;
            this.f6340g = z13;
            this.f6341h = j12;
            this.f6342i = i9;
            this.f6343j = i10;
            this.f6344k = i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c d(Parcel parcel) {
            return new c(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c e(b0 b0Var) {
            ArrayList arrayList;
            boolean z10;
            long j10;
            boolean z11;
            long j11;
            int i9;
            int i10;
            int i11;
            boolean z12;
            boolean z13;
            long j12;
            long F = b0Var.F();
            boolean z14 = (b0Var.D() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (z14) {
                arrayList = arrayList2;
                z10 = false;
                j10 = -9223372036854775807L;
                z11 = false;
                j11 = -9223372036854775807L;
                i9 = 0;
                i10 = 0;
                i11 = 0;
                z12 = false;
            } else {
                int D = b0Var.D();
                boolean z15 = (D & 128) != 0;
                boolean z16 = (D & 64) != 0;
                boolean z17 = (D & 32) != 0;
                long F2 = z16 ? b0Var.F() : -9223372036854775807L;
                if (!z16) {
                    int D2 = b0Var.D();
                    ArrayList arrayList3 = new ArrayList(D2);
                    for (int i12 = 0; i12 < D2; i12++) {
                        arrayList3.add(new b(b0Var.D(), b0Var.F(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z17) {
                    long D3 = b0Var.D();
                    boolean z18 = (128 & D3) != 0;
                    j12 = ((((D3 & 1) << 32) | b0Var.F()) * 1000) / 90;
                    z13 = z18;
                } else {
                    z13 = false;
                    j12 = -9223372036854775807L;
                }
                int J = b0Var.J();
                int D4 = b0Var.D();
                z12 = z16;
                i11 = b0Var.D();
                j11 = j12;
                arrayList = arrayList2;
                long j13 = F2;
                i9 = J;
                i10 = D4;
                j10 = j13;
                boolean z19 = z15;
                z11 = z13;
                z10 = z19;
            }
            return new c(F, z14, z10, z12, arrayList, j10, z11, j11, i9, i10, i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(Parcel parcel) {
            parcel.writeLong(this.f6334a);
            parcel.writeByte(this.f6335b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f6336c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f6337d ? (byte) 1 : (byte) 0);
            int size = this.f6339f.size();
            parcel.writeInt(size);
            for (int i9 = 0; i9 < size; i9++) {
                this.f6339f.get(i9).d(parcel);
            }
            parcel.writeLong(this.f6338e);
            parcel.writeByte(this.f6340g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f6341h);
            parcel.writeInt(this.f6342i);
            parcel.writeInt(this.f6343j);
            parcel.writeInt(this.f6344k);
        }

        private c(Parcel parcel) {
            this.f6334a = parcel.readLong();
            this.f6335b = parcel.readByte() == 1;
            this.f6336c = parcel.readByte() == 1;
            this.f6337d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i9 = 0; i9 < readInt; i9++) {
                arrayList.add(b.c(parcel));
            }
            this.f6339f = Collections.unmodifiableList(arrayList);
            this.f6338e = parcel.readLong();
            this.f6340g = parcel.readByte() == 1;
            this.f6341h = parcel.readLong();
            this.f6342i = parcel.readInt();
            this.f6343j = parcel.readInt();
            this.f6344k = parcel.readInt();
        }
    }
}
