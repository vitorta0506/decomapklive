package qb;

import android.content.Context;
import android.view.View;
import pb.f;
/* loaded from: classes4.dex */
public class b implements f<View> {

    /* renamed from: a  reason: collision with root package name */
    private final f<?> f57141a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57142b;

    /* renamed from: c  reason: collision with root package name */
    private final int f57143c;

    /* renamed from: d  reason: collision with root package name */
    private final int f57144d;

    /* renamed from: e  reason: collision with root package name */
    private final float f57145e;

    /* renamed from: f  reason: collision with root package name */
    private final float f57146f;

    public b(f<?> fVar, int i9, int i10, int i11, float f10, float f11) {
        this.f57141a = fVar;
        this.f57142b = i9;
        this.f57143c = i10;
        this.f57144d = i11;
        this.f57145e = f10;
        this.f57146f = f11;
    }

    @Override // pb.f
    public float a() {
        return this.f57145e;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View] */
    @Override // pb.f
    public View b(Context context) {
        return this.f57141a.b(context);
    }

    @Override // pb.f
    public float c() {
        return this.f57146f;
    }

    @Override // pb.f
    public int d() {
        return this.f57142b;
    }

    @Override // pb.f
    public int e() {
        return this.f57143c;
    }

    @Override // pb.f
    public int f() {
        return this.f57144d;
    }
}
