package v2;

import androidx.annotation.Nullable;
import java.io.IOException;
/* loaded from: classes.dex */
public final class b implements x {

    /* renamed from: a  reason: collision with root package name */
    private final c2.r f58691a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private c2.l f58692b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private c2.m f58693c;

    public b(c2.r rVar) {
        this.f58691a = rVar;
    }

    @Override // v2.x
    public void a(long j10, long j11) {
        ((c2.l) com.google.android.exoplayer2.util.a.e(this.f58692b)).a(j10, j11);
    }

    @Override // v2.x
    public void b() {
        c2.l lVar = this.f58692b;
        if (lVar instanceof j2.f) {
            ((j2.f) lVar).j();
        }
    }

    @Override // v2.x
    public int c(c2.a0 a0Var) throws IOException {
        return ((c2.l) com.google.android.exoplayer2.util.a.e(this.f58692b)).b((c2.m) com.google.android.exoplayer2.util.a.e(this.f58693c), a0Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
        if (r6.getPosition() != r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0062, code lost:
        if (r6.getPosition() != r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0065, code lost:
        r1 = false;
     */
    @Override // v2.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(j3.f r8, android.net.Uri r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, long r11, long r13, c2.n r15) throws java.io.IOException {
        /*
            r7 = this;
            c2.f r6 = new c2.f
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.f58693c = r6
            c2.l r8 = r7.f58692b
            if (r8 == 0) goto L10
            return
        L10:
            c2.r r8 = r7.f58691a
            c2.l[] r8 = r8.a(r9, r10)
            int r10 = r8.length
            r13 = 0
            r14 = 1
            if (r10 != r14) goto L20
            r8 = r8[r13]
            r7.f58692b = r8
            goto L75
        L20:
            int r10 = r8.length
            r0 = 0
        L22:
            if (r0 >= r10) goto L71
            r1 = r8[r0]
            boolean r2 = r1.h(r6)     // Catch: java.lang.Throwable -> L42 java.io.EOFException -> L57
            if (r2 == 0) goto L35
            r7.f58692b = r1     // Catch: java.lang.Throwable -> L42 java.io.EOFException -> L57
            com.google.android.exoplayer2.util.a.f(r14)
            r6.f()
            goto L71
        L35:
            c2.l r1 = r7.f58692b
            if (r1 != 0) goto L67
            long r1 = r6.getPosition()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L65
            goto L67
        L42:
            r8 = move-exception
            c2.l r9 = r7.f58692b
            if (r9 != 0) goto L4f
            long r9 = r6.getPosition()
            int r15 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r15 != 0) goto L50
        L4f:
            r13 = 1
        L50:
            com.google.android.exoplayer2.util.a.f(r13)
            r6.f()
            throw r8
        L57:
            c2.l r1 = r7.f58692b
            if (r1 != 0) goto L67
            long r1 = r6.getPosition()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L65
            goto L67
        L65:
            r1 = 0
            goto L68
        L67:
            r1 = 1
        L68:
            com.google.android.exoplayer2.util.a.f(r1)
            r6.f()
            int r0 = r0 + 1
            goto L22
        L71:
            c2.l r10 = r7.f58692b
            if (r10 == 0) goto L7b
        L75:
            c2.l r8 = r7.f58692b
            r8.f(r15)
            return
        L7b:
            com.google.android.exoplayer2.source.UnrecognizedInputFormatException r10 = new com.google.android.exoplayer2.source.UnrecognizedInputFormatException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "None of the available extractors ("
            r11.append(r12)
            java.lang.String r8 = com.google.android.exoplayer2.util.l0.G(r8)
            r11.append(r8)
            java.lang.String r8 = ") could read the stream."
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            java.lang.Object r9 = com.google.android.exoplayer2.util.a.e(r9)
            android.net.Uri r9 = (android.net.Uri) r9
            r10.<init>(r8, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: v2.b.d(j3.f, android.net.Uri, java.util.Map, long, long, c2.n):void");
    }

    @Override // v2.x
    public long e() {
        c2.m mVar = this.f58693c;
        if (mVar != null) {
            return mVar.getPosition();
        }
        return -1L;
    }

    @Override // v2.x
    public void release() {
        c2.l lVar = this.f58692b;
        if (lVar != null) {
            lVar.release();
            this.f58692b = null;
        }
        this.f58693c = null;
    }
}
