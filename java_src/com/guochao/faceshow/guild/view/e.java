package com.guochao.faceshow.guild.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.g;
import com.guochao.faceshow.guild.R$mipmap;
import s0.k;
/* loaded from: classes4.dex */
public class e implements bd.a {

    /* loaded from: classes4.dex */
    class a implements g<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bd.b f25422a;

        a(bd.b bVar) {
            this.f25422a = bVar;
        }

        @Override // com.bumptech.glide.request.g
        public boolean b(@Nullable GlideException glideException, Object obj, k<Drawable> kVar, boolean z10) {
            this.f25422a.onLoadFailed(null);
            return false;
        }

        @Override // com.bumptech.glide.request.g
        /* renamed from: c */
        public boolean a(Drawable drawable, Object obj, k<Drawable> kVar, DataSource dataSource, boolean z10) {
            this.f25422a.a();
            return false;
        }
    }

    /* loaded from: classes4.dex */
    class b implements g<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ bd.b f25424a;

        b(bd.b bVar) {
            this.f25424a = bVar;
        }

        @Override // com.bumptech.glide.request.g
        public boolean b(@Nullable GlideException glideException, Object obj, k<Drawable> kVar, boolean z10) {
            this.f25424a.onLoadFailed(null);
            return false;
        }

        @Override // com.bumptech.glide.request.g
        /* renamed from: c */
        public boolean a(Drawable drawable, Object obj, k<Drawable> kVar, DataSource dataSource, boolean z10) {
            this.f25424a.a();
            return false;
        }
    }

    @Override // bd.a
    public void a(@NonNull Context context) {
        com.bumptech.glide.c.c(context).b();
    }

    @Override // bd.a
    public void b(@NonNull Fragment fragment) {
        com.bumptech.glide.c.w(fragment).onStop();
    }

    @Override // bd.a
    public void c(Fragment fragment, String str, ImageView imageView, bd.b bVar) {
        com.bumptech.glide.c.w(fragment).r(str).T0(new a(bVar)).Q0(imageView);
    }

    @Override // bd.a
    public void d(@NonNull Fragment fragment, @NonNull String str, ImageView imageView, @NonNull bd.b bVar) {
        com.bumptech.glide.g<Drawable> r10 = com.bumptech.glide.c.w(fragment).r(str);
        int i9 = R$mipmap.default_short_bg;
        r10.b0(i9).l(i9).i().T0(new b(bVar)).Q0(imageView);
    }
}
