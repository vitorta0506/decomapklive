package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import h0.a;
import java.io.File;
/* loaded from: classes.dex */
class e<DataType> implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private final e0.a<DataType> f4273a;

    /* renamed from: b  reason: collision with root package name */
    private final DataType f4274b;

    /* renamed from: c  reason: collision with root package name */
    private final e0.e f4275c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(e0.a<DataType> aVar, DataType datatype, e0.e eVar) {
        this.f4273a = aVar;
        this.f4274b = datatype;
        this.f4275c = eVar;
    }

    @Override // h0.a.b
    public boolean a(@NonNull File file) {
        return this.f4273a.a(this.f4274b, file, this.f4275c);
    }
}
