package ic;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.Priority;
import com.bumptech.glide.i;
import com.bumptech.glide.load.engine.j;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import e0.h;
import java.io.File;
/* loaded from: classes4.dex */
public class c<TranscodeType> extends com.bumptech.glide.g<TranscodeType> {
    c(@NonNull Class<TranscodeType> cls, @NonNull com.bumptech.glide.g<?> gVar) {
        super(cls, gVar);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: A1 */
    public c<TranscodeType> Y0(@Nullable Object obj) {
        return (c) super.Y0(obj);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: B1 */
    public c<TranscodeType> Z0(@Nullable String str) {
        return (c) super.Z0(str);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    /* renamed from: C1 */
    public c<TranscodeType> T() {
        return (c) super.T();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: D1 */
    public c<TranscodeType> U() {
        return (c) super.U();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: E1 */
    public c<TranscodeType> V() {
        return (c) super.V();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: F1 */
    public c<TranscodeType> W() {
        return (c) super.W();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: G1 */
    public c<TranscodeType> Z(int i9) {
        return (c) super.Z(i9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: H1 */
    public c<TranscodeType> a0(int i9, int i10) {
        return (c) super.a0(i9, i10);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: I1 */
    public c<TranscodeType> b0(@DrawableRes int i9) {
        return (c) super.b0(i9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: J1 */
    public c<TranscodeType> d0(@Nullable Drawable drawable) {
        return (c) super.d0(drawable);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: K1 */
    public c<TranscodeType> e0(@NonNull Priority priority) {
        return (c) super.e0(priority);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: L1 */
    public <Y> c<TranscodeType> k0(@NonNull e0.d<Y> dVar, @NonNull Y y10) {
        return (c) super.k0(dVar, y10);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: M1 */
    public c<TranscodeType> l0(@NonNull e0.b bVar) {
        return (c) super.l0(bVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: N1 */
    public c<TranscodeType> m0(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return (c) super.m0(f10);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: O1 */
    public c<TranscodeType> n0(boolean z10) {
        return (c) super.n0(z10);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: P1 */
    public c<TranscodeType> g1(@Nullable com.bumptech.glide.g<TranscodeType> gVar) {
        return (c) super.g1(gVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: Q1 */
    public c<TranscodeType> q0(@NonNull h<Bitmap> hVar) {
        return (c) super.q0(hVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    @Deprecated
    /* renamed from: R1 */
    public c<TranscodeType> u0(@NonNull h<Bitmap>... hVarArr) {
        return (c) super.u0(hVarArr);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: S1 */
    public c<TranscodeType> h1(@NonNull i<?, ? super TranscodeType> iVar) {
        return (c) super.h1(iVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: T1 */
    public c<TranscodeType> v0(boolean z10) {
        return (c) super.v0(z10);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: i1 */
    public c<TranscodeType> x0(@Nullable com.bumptech.glide.request.g<TranscodeType> gVar) {
        return (c) super.x0(gVar);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: k1 */
    public c<TranscodeType> y0(@NonNull com.bumptech.glide.request.a<?> aVar) {
        return (c) super.a(aVar);
    }

    @NonNull
    @CheckResult
    public c<TranscodeType> l1() {
        return (c) super.d();
    }

    @Override // com.bumptech.glide.g, com.bumptech.glide.request.a
    @CheckResult
    /* renamed from: m1 */
    public c<TranscodeType> f() {
        return (c) super.f();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: n1 */
    public c<TranscodeType> g(@NonNull Class<?> cls) {
        return (c) super.g(cls);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: o1 */
    public c<TranscodeType> h(@NonNull j jVar) {
        return (c) super.h(jVar);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: p1 */
    public c<TranscodeType> i() {
        return (c) super.i();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: q1 */
    public c<TranscodeType> j() {
        return (c) super.j();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: r1 */
    public c<TranscodeType> k(@NonNull DownsampleStrategy downsampleStrategy) {
        return (c) super.k(downsampleStrategy);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: s1 */
    public c<TranscodeType> l(@DrawableRes int i9) {
        return (c) super.l(i9);
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: t1 */
    public c<TranscodeType> m() {
        return (c) super.m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: u1 */
    public c<File> J0() {
        return new c(File.class, this).y0(com.bumptech.glide.g.O);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: v1 */
    public c<TranscodeType> T0(@Nullable com.bumptech.glide.request.g<TranscodeType> gVar) {
        return (c) super.T0(gVar);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: w1 */
    public c<TranscodeType> U0(@Nullable Drawable drawable) {
        return (c) super.U0(drawable);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: x1 */
    public c<TranscodeType> V0(@Nullable Uri uri) {
        return (c) super.V0(uri);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: y1 */
    public c<TranscodeType> W0(@Nullable File file) {
        return (c) super.W0(file);
    }

    @Override // com.bumptech.glide.g
    @NonNull
    @CheckResult
    /* renamed from: z1 */
    public c<TranscodeType> X0(@Nullable @DrawableRes @RawRes Integer num) {
        return (c) super.X0(num);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull com.bumptech.glide.c cVar, @NonNull com.bumptech.glide.h hVar, @NonNull Class<TranscodeType> cls, @NonNull Context context) {
        super(cVar, hVar, cls, context);
    }
}
