package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import com.google.common.base.l;
import com.google.common.collect.e3;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
public final class SlowMotionData implements Metadata.Entry {
    public static final Parcelable.Creator<SlowMotionData> CREATOR = new a();
    public final List<Segment> segments;

    /* loaded from: classes.dex */
    public static final class Segment implements Parcelable {
        public static final Comparator<Segment> BY_START_THEN_END_THEN_DIVISOR = new Comparator() { // from class: t2.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int b10;
                b10 = SlowMotionData.Segment.b((SlowMotionData.Segment) obj, (SlowMotionData.Segment) obj2);
                return b10;
            }
        };
        public static final Parcelable.Creator<Segment> CREATOR = new a();
        public final long endTimeMs;
        public final int speedDivisor;
        public final long startTimeMs;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<Segment> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Segment createFromParcel(Parcel parcel) {
                return new Segment(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public Segment[] newArray(int i9) {
                return new Segment[i9];
            }
        }

        public Segment(long j10, long j11, int i9) {
            com.google.android.exoplayer2.util.a.a(j10 < j11);
            this.startTimeMs = j10;
            this.endTimeMs = j11;
            this.speedDivisor = i9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(Segment segment, Segment segment2) {
            return e3.k().e(segment.startTimeMs, segment2.startTimeMs).e(segment.endTimeMs, segment2.endTimeMs).d(segment.speedDivisor, segment2.speedDivisor).j();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Segment.class != obj.getClass()) {
                return false;
            }
            Segment segment = (Segment) obj;
            return this.startTimeMs == segment.startTimeMs && this.endTimeMs == segment.endTimeMs && this.speedDivisor == segment.speedDivisor;
        }

        public int hashCode() {
            return l.b(Long.valueOf(this.startTimeMs), Long.valueOf(this.endTimeMs), Integer.valueOf(this.speedDivisor));
        }

        public String toString() {
            return l0.z("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.startTimeMs), Long.valueOf(this.endTimeMs), Integer.valueOf(this.speedDivisor));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeLong(this.startTimeMs);
            parcel.writeLong(this.endTimeMs);
            parcel.writeInt(this.speedDivisor);
        }
    }

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<SlowMotionData> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SlowMotionData createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, Segment.class.getClassLoader());
            return new SlowMotionData(arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SlowMotionData[] newArray(int i9) {
            return new SlowMotionData[i9];
        }
    }

    public SlowMotionData(List<Segment> list) {
        this.segments = list;
        com.google.android.exoplayer2.util.a.a(!a(list));
    }

    private static boolean a(List<Segment> list) {
        if (list.isEmpty()) {
            return false;
        }
        long j10 = list.get(0).endTimeMs;
        for (int i9 = 1; i9 < list.size(); i9++) {
            if (list.get(i9).startTimeMs < j10) {
                return true;
            }
            j10 = list.get(i9).endTimeMs;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ k1 N() {
        return o2.a.b(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] e1() {
        return o2.a.a(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SlowMotionData.class != obj.getClass()) {
            return false;
        }
        return this.segments.equals(((SlowMotionData) obj).segments);
    }

    public int hashCode() {
        return this.segments.hashCode();
    }

    public String toString() {
        return "SlowMotion: segments=" + this.segments;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeList(this.segments);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void y0(x1.b bVar) {
        o2.a.c(this, bVar);
    }
}
