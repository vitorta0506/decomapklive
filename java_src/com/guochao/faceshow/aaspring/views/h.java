package com.guochao.faceshow.aaspring.views;

import android.app.Activity;
import android.view.View;
import android.view.ViewConfiguration;
import com.guochao.faceshow.utils.HandlerGetter;
/* loaded from: classes3.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static long f24371a;

    /* renamed from: b  reason: collision with root package name */
    private static final int f24372b = ViewConfiguration.getDoubleTapTimeout() / 2;

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f24373a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f24374b;

        a(View view, b bVar) {
            this.f24373a = view;
            this.f24374b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar;
            View view = this.f24373a;
            if (view == null || ((Activity) view.getContext()).isDestroyed() || ((Activity) this.f24373a.getContext()).isFinishing() || System.currentTimeMillis() - h.f24371a < h.f24372b || (bVar = this.f24374b) == null) {
                return;
            }
            bVar.onClick(this.f24373a);
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void onClick(View view);

        void onDoubleTabClick(View view);
    }

    public static void c(View view, b bVar) {
        long currentTimeMillis = System.currentTimeMillis() - f24371a;
        int i9 = f24372b;
        if (currentTimeMillis < i9) {
            f24371a = System.currentTimeMillis();
            if (bVar != null) {
                bVar.onDoubleTabClick(view);
                return;
            }
            return;
        }
        f24371a = System.currentTimeMillis();
        HandlerGetter.getMainHandler().postDelayed(new a(view, bVar), i9);
    }
}
