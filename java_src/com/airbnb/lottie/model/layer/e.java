package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j.j;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class e extends a {
    private final e.d B;
    private final b C;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(com.airbnb.lottie.f fVar, Layer layer, b bVar) {
        super(fVar, layer);
        this.C = bVar;
        e.d dVar = new e.d(fVar, this, new j("__container", layer.n(), false));
        this.B = dVar;
        dVar.b(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.airbnb.lottie.model.layer.a
    protected void G(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        this.B.e(dVar, i9, list, dVar2);
    }

    @Override // com.airbnb.lottie.model.layer.a, e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        this.B.d(rectF, this.f3835m, z10);
    }

    @Override // com.airbnb.lottie.model.layer.a
    void t(@NonNull Canvas canvas, Matrix matrix, int i9) {
        this.B.g(canvas, matrix, i9);
    }

    @Override // com.airbnb.lottie.model.layer.a
    @Nullable
    public j.a v() {
        j.a v10 = super.v();
        return v10 != null ? v10 : this.C.v();
    }

    @Override // com.airbnb.lottie.model.layer.a
    @Nullable
    public l.j x() {
        l.j x10 = super.x();
        return x10 != null ? x10 : this.C.x();
    }
}
