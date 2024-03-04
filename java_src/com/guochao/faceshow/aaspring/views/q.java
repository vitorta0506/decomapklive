package com.guochao.faceshow.aaspring.views;

import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import com.guochao.faceshow.aaspring.views.q;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class q {

    /* loaded from: classes3.dex */
    public interface a<T> {
        void a(T t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b implements io.reactivex.n<View> {

        /* renamed from: a  reason: collision with root package name */
        private View f24435a;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ io.reactivex.m f24436a;

            a(io.reactivex.m mVar) {
                this.f24436a = mVar;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f24436a.isDisposed()) {
                    return;
                }
                this.f24436a.onNext(b.this.f24435a);
            }
        }

        public b(View view) {
            this.f24435a = view;
        }

        @Override // io.reactivex.n
        public void a(io.reactivex.m<View> mVar) throws Exception {
            o.b();
            this.f24435a.setOnClickListener(new a(mVar));
        }
    }

    public static void c(final a<View> aVar, @NonNull View... viewArr) {
        for (View view : viewArr) {
            onClick(view).throttleFirst(500L, TimeUnit.MILLISECONDS).subscribe(new vh.g() { // from class: com.guochao.faceshow.aaspring.views.p
                @Override // vh.g
                public final void accept(Object obj) {
                    q.a.this.a((View) obj);
                }
            });
        }
    }

    @NonNull
    @CheckResult
    private static io.reactivex.k<View> onClick(@NonNull View view) {
        o.a(view, "view == null");
        return io.reactivex.k.create(new b(view));
    }
}
