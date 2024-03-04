package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.x1;
import o2.a;
/* loaded from: classes.dex */
public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: id  reason: collision with root package name */
    public final String f6328id;

    public Id3Frame(String str) {
        this.f6328id = str;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ k1 N() {
        return a.b(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] e1() {
        return a.a(this);
    }

    public String toString() {
        return this.f6328id;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void y0(x1.b bVar) {
        a.c(this, bVar);
    }
}
