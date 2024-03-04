package com.squareup.picasso;

import android.content.Context;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.u;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class g extends u {

    /* renamed from: a  reason: collision with root package name */
    final Context f29936a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context) {
        this.f29936a = context;
    }

    @Override // com.squareup.picasso.u
    public boolean c(s sVar) {
        return "content".equals(sVar.f29997d.getScheme());
    }

    @Override // com.squareup.picasso.u
    public u.a f(s sVar, int i9) throws IOException {
        return new u.a(j(sVar), Picasso.LoadedFrom.DISK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputStream j(s sVar) throws FileNotFoundException {
        return this.f29936a.getContentResolver().openInputStream(sVar.f29997d);
    }
}
