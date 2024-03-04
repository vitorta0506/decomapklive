package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.i0;
import java.nio.ByteBuffer;
import o2.d;
import o2.f;
/* loaded from: classes.dex */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f6345a = new b0();

    /* renamed from: b  reason: collision with root package name */
    private final a0 f6346b = new a0();

    /* renamed from: c  reason: collision with root package name */
    private i0 f6347c;

    @Override // o2.f
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        i0 i0Var = this.f6347c;
        if (i0Var == null || dVar.f55490i != i0Var.e()) {
            i0 i0Var2 = new i0(dVar.f5710e);
            this.f6347c = i0Var2;
            i0Var2.a(dVar.f5710e - dVar.f55490i);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f6345a.N(array, limit);
        this.f6346b.o(array, limit);
        this.f6346b.r(39);
        long h10 = (this.f6346b.h(1) << 32) | this.f6346b.h(32);
        this.f6346b.r(20);
        int h11 = this.f6346b.h(12);
        int h12 = this.f6346b.h(8);
        Metadata.Entry entry = null;
        this.f6345a.Q(14);
        if (h12 == 0) {
            entry = new SpliceNullCommand();
        } else if (h12 == 255) {
            entry = PrivateCommand.a(this.f6345a, h11, h10);
        } else if (h12 == 4) {
            entry = SpliceScheduleCommand.a(this.f6345a);
        } else if (h12 == 5) {
            entry = SpliceInsertCommand.a(this.f6345a, h10, this.f6347c);
        } else if (h12 == 6) {
            entry = TimeSignalCommand.a(this.f6345a, h10, this.f6347c);
        }
        return entry == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(entry);
    }
}
