package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.x1;
/* loaded from: classes.dex */
public abstract class SpliceCommand implements Metadata.Entry {
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

    public String toString() {
        return "SCTE-35 splice command: type=" + getClass().getSimpleName();
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void y0(x1.b bVar) {
        o2.a.c(this, bVar);
    }
}
