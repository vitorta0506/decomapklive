package com.guochao.faceshow.views;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import com.guochao.faceshow.views.e;
/* loaded from: classes4.dex */
public class h {

    /* loaded from: classes4.dex */
    class a implements e.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements e.a {
        b() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            d.a(this, eVar);
        }
    }

    public static void a(Context context, String str) {
        d(context, "", str, new a());
    }

    public static void b(Context context, String str, e.a aVar) {
        d(context, "", str, aVar);
    }

    public static void c(Context context, String str, String str2) {
        d(context, str, str2, new b());
    }

    public static void d(Context context, String str, String str2, e.a aVar) {
        if (context == null || !(context instanceof Activity)) {
            return;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return;
        }
        e eVar = new e(context, aVar);
        eVar.setCanceledOnTouchOutside(false);
        eVar.j();
        eVar.b(str);
        eVar.f(str2);
        eVar.show();
    }

    @Deprecated
    public static void e(Context context, String str, String str2) {
        c(context, str, str2);
    }

    public static void f(Context context, String str, String str2, boolean z10, e.a aVar) {
        if (context == null || !(context instanceof Activity)) {
            return;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return;
        }
        e eVar = new e(context, aVar);
        eVar.setCanceledOnTouchOutside(false);
        if (z10) {
            eVar.j();
        }
        eVar.b(str);
        eVar.f(str2);
        eVar.show();
    }
}
