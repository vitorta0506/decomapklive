package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class GameShareFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private GameShareFragment f19527b;

    /* renamed from: c  reason: collision with root package name */
    private View f19528c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameShareFragment f19529a;

        a(GameShareFragment gameShareFragment) {
            this.f19529a = gameShareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19529a.onViewClicked();
        }
    }

    @UiThread
    public GameShareFragment_ViewBinding(GameShareFragment gameShareFragment, View view) {
        this.f19527b = gameShareFragment;
        gameShareFragment.recyclerView = (RecyclerView) c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        View c10 = c.c(view, R.id.cancel, "method 'onViewClicked'");
        this.f19528c = c10;
        c10.setOnClickListener(new a(gameShareFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GameShareFragment gameShareFragment = this.f19527b;
        if (gameShareFragment != null) {
            this.f19527b = null;
            gameShareFragment.recyclerView = null;
            this.f19528c.setOnClickListener(null);
            this.f19528c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
