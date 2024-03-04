package com.squareup.picasso;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.u;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class v extends u {

    /* renamed from: a  reason: collision with root package name */
    private final Context f30044a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(Context context) {
        this.f30044a = context;
    }

    private static Bitmap j(Resources resources, int i9, s sVar) {
        BitmapFactory.Options d10 = u.d(sVar);
        if (u.g(d10)) {
            BitmapFactory.decodeResource(resources, i9, d10);
            u.b(sVar.f30001h, sVar.f30002i, d10, sVar);
        }
        return BitmapFactory.decodeResource(resources, i9, d10);
    }

    @Override // com.squareup.picasso.u
    public boolean c(s sVar) {
        if (sVar.f29998e != 0) {
            return true;
        }
        return "android.resource".equals(sVar.f29997d.getScheme());
    }

    @Override // com.squareup.picasso.u
    public u.a f(s sVar, int i9) throws IOException {
        Resources o10 = c0.o(this.f30044a, sVar);
        return new u.a(j(o10, c0.n(o10, sVar), sVar), Picasso.LoadedFrom.DISK);
    }
}
