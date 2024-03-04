package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.guochao.faceshow.aaspring.utils.Language;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class MyItemAnimator extends SimpleItemAnimator {

    /* renamed from: l  reason: collision with root package name */
    private static TimeInterpolator f18189l;

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<RecyclerView.ViewHolder> f18190a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<RecyclerView.ViewHolder> f18191b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<j> f18192c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<i> f18193d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    ArrayList<ArrayList<RecyclerView.ViewHolder>> f18194e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    ArrayList<ArrayList<j>> f18195f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    ArrayList<ArrayList<i>> f18196g = new ArrayList<>();

    /* renamed from: h  reason: collision with root package name */
    ArrayList<RecyclerView.ViewHolder> f18197h = new ArrayList<>();

    /* renamed from: i  reason: collision with root package name */
    ArrayList<RecyclerView.ViewHolder> f18198i = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    ArrayList<RecyclerView.ViewHolder> f18199j = new ArrayList<>();

    /* renamed from: k  reason: collision with root package name */
    ArrayList<RecyclerView.ViewHolder> f18200k = new ArrayList<>();

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f18201a;

        a(ArrayList arrayList) {
            this.f18201a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f18201a.iterator();
            while (it.hasNext()) {
                j jVar = (j) it.next();
                MyItemAnimator.this.animateMoveImpl(jVar.f18236a, jVar.f18237b, jVar.f18238c, jVar.f18239d, jVar.f18240e);
            }
            this.f18201a.clear();
            MyItemAnimator.this.f18195f.remove(this.f18201a);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f18203a;

        b(ArrayList arrayList) {
            this.f18203a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f18203a.iterator();
            while (it.hasNext()) {
                MyItemAnimator.this.b((i) it.next());
            }
            this.f18203a.clear();
            MyItemAnimator.this.f18196g.remove(this.f18203a);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f18205a;

        c(ArrayList arrayList) {
            this.f18205a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f18205a.iterator();
            while (it.hasNext()) {
                MyItemAnimator.this.animateAddImpl((RecyclerView.ViewHolder) it.next());
            }
            this.f18205a.clear();
            MyItemAnimator.this.f18194e.remove(this.f18205a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView.ViewHolder f18207a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f18208b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f18209c;

        d(RecyclerView.ViewHolder viewHolder, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f18207a = viewHolder;
            this.f18208b = viewPropertyAnimator;
            this.f18209c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f18208b.setListener(null);
            this.f18209c.setAlpha(1.0f);
            this.f18209c.setTranslationX(0.0f);
            MyItemAnimator.this.dispatchRemoveFinished(this.f18207a);
            MyItemAnimator.this.f18199j.remove(this.f18207a);
            MyItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MyItemAnimator.this.dispatchRemoveStarting(this.f18207a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView.ViewHolder f18211a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f18212b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f18213c;

        e(RecyclerView.ViewHolder viewHolder, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f18211a = viewHolder;
            this.f18212b = view;
            this.f18213c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f18212b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f18213c.setListener(null);
            MyItemAnimator.this.dispatchAddFinished(this.f18211a);
            MyItemAnimator.this.f18197h.remove(this.f18211a);
            MyItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MyItemAnimator.this.dispatchAddStarting(this.f18211a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView.ViewHolder f18215a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f18216b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f18217c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f18218d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f18219e;

        f(RecyclerView.ViewHolder viewHolder, int i9, View view, int i10, ViewPropertyAnimator viewPropertyAnimator) {
            this.f18215a = viewHolder;
            this.f18216b = i9;
            this.f18217c = view;
            this.f18218d = i10;
            this.f18219e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f18216b != 0) {
                this.f18217c.setTranslationX(0.0f);
            }
            if (this.f18218d != 0) {
                this.f18217c.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f18219e.setListener(null);
            MyItemAnimator.this.dispatchMoveFinished(this.f18215a);
            MyItemAnimator.this.f18198i.remove(this.f18215a);
            MyItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MyItemAnimator.this.dispatchMoveStarting(this.f18215a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f18221a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f18222b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f18223c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ View f18224d;

        g(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view, View view2) {
            this.f18221a = iVar;
            this.f18222b = viewPropertyAnimator;
            this.f18223c = view;
            this.f18224d = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f18222b.setListener(null);
            this.f18223c.setAlpha(1.0f);
            this.f18223c.setTranslationX(0.0f);
            MyItemAnimator.this.dispatchChangeFinished(this.f18221a.f18230a, true);
            MyItemAnimator.this.f18200k.remove(this.f18221a.f18230a);
            MyItemAnimator.this.dispatchFinishedWhenDone();
            MyItemAnimator.this.c(this.f18221a, this.f18224d);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MyItemAnimator.this.dispatchChangeStarting(this.f18221a.f18230a, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f18226a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f18227b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f18228c;

        h(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f18226a = iVar;
            this.f18227b = viewPropertyAnimator;
            this.f18228c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f18227b.setListener(null);
            this.f18228c.setAlpha(1.0f);
            this.f18228c.setTranslationX(0.0f);
            this.f18228c.setTranslationY(0.0f);
            MyItemAnimator.this.dispatchChangeFinished(this.f18226a.f18231b, false);
            MyItemAnimator.this.f18200k.remove(this.f18226a.f18231b);
            MyItemAnimator.this.dispatchFinishedWhenDone();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            MyItemAnimator.this.dispatchChangeStarting(this.f18226a.f18231b, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class j {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.ViewHolder f18236a;

        /* renamed from: b  reason: collision with root package name */
        public int f18237b;

        /* renamed from: c  reason: collision with root package name */
        public int f18238c;

        /* renamed from: d  reason: collision with root package name */
        public int f18239d;

        /* renamed from: e  reason: collision with root package name */
        public int f18240e;

        j(RecyclerView.ViewHolder viewHolder, int i9, int i10, int i11, int i12) {
            this.f18236a = viewHolder;
            this.f18237b = i9;
            this.f18238c = i10;
            this.f18239d = i11;
            this.f18240e = i12;
        }
    }

    private void animateRemoveImpl(RecyclerView.ViewHolder viewHolder) {
        int i9;
        View view = viewHolder.itemView;
        ViewPropertyAnimator animate = view.animate();
        this.f18199j.add(viewHolder);
        if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
            i9 = viewHolder.itemView.getWidth();
        } else {
            i9 = -viewHolder.itemView.getWidth();
        }
        animate.setDuration(getRemoveDuration()).alpha(0.0f).translationX(i9).setListener(new d(viewHolder, animate, view)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(i iVar, View view) {
        if (view != null) {
            ViewPropertyAnimator animate = view.animate();
            this.f18200k.add(iVar.f18231b);
            animate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration() / 2).alpha(1.0f).setListener(new h(iVar, animate, view)).start();
        }
    }

    private void d(i iVar) {
        RecyclerView.ViewHolder viewHolder = iVar.f18230a;
        if (viewHolder != null) {
            e(iVar, viewHolder);
        }
        RecyclerView.ViewHolder viewHolder2 = iVar.f18231b;
        if (viewHolder2 != null) {
            e(iVar, viewHolder2);
        }
    }

    private boolean e(i iVar, RecyclerView.ViewHolder viewHolder) {
        boolean z10 = false;
        if (iVar.f18231b == viewHolder) {
            iVar.f18231b = null;
        } else if (iVar.f18230a != viewHolder) {
            return false;
        } else {
            iVar.f18230a = null;
            z10 = true;
        }
        viewHolder.itemView.setAlpha(1.0f);
        viewHolder.itemView.setTranslationX(0.0f);
        viewHolder.itemView.setTranslationY(0.0f);
        dispatchChangeFinished(viewHolder, z10);
        return true;
    }

    private void endChangeAnimation(List<i> list, RecyclerView.ViewHolder viewHolder) {
        for (int size = list.size() - 1; size >= 0; size--) {
            i iVar = list.get(size);
            if (e(iVar, viewHolder) && iVar.f18230a == null && iVar.f18231b == null) {
                list.remove(iVar);
            }
        }
    }

    private void resetAnimation(RecyclerView.ViewHolder viewHolder) {
        if (f18189l == null) {
            f18189l = new ValueAnimator().getInterpolator();
        }
        viewHolder.itemView.animate().setInterpolator(f18189l);
        endAnimation(viewHolder);
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateAdd(RecyclerView.ViewHolder viewHolder) {
        resetAnimation(viewHolder);
        viewHolder.itemView.setAlpha(0.0f);
        this.f18191b.add(viewHolder);
        return true;
    }

    void animateAddImpl(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        ViewPropertyAnimator animate = view.animate();
        this.f18197h.add(viewHolder);
        animate.alpha(1.0f).setDuration(getAddDuration()).setListener(new e(viewHolder, view, animate)).start();
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i9, int i10, int i11, int i12) {
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, i9, i10, i11, i12);
        }
        float translationX = viewHolder.itemView.getTranslationX();
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        resetAnimation(viewHolder);
        int i13 = (int) ((i11 - i9) - translationX);
        int i14 = (int) ((i12 - i10) - translationY);
        viewHolder.itemView.setTranslationX(translationX);
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        if (viewHolder2 != null) {
            resetAnimation(viewHolder2);
            viewHolder2.itemView.setTranslationX(-i13);
            viewHolder2.itemView.setTranslationY(-i14);
            viewHolder2.itemView.setAlpha(0.0f);
        }
        this.f18193d.add(new i(viewHolder, viewHolder2, i9, i10, i11, i12));
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateMove(RecyclerView.ViewHolder viewHolder, int i9, int i10, int i11, int i12) {
        View view = viewHolder.itemView;
        int translationX = i9 + ((int) view.getTranslationX());
        int translationY = i10 + ((int) viewHolder.itemView.getTranslationY());
        resetAnimation(viewHolder);
        int i13 = i11 - translationX;
        int i14 = i12 - translationY;
        if (i13 == 0 && i14 == 0) {
            dispatchMoveFinished(viewHolder);
            return false;
        }
        if (i13 != 0) {
            view.setTranslationX(-i13);
        }
        if (i14 != 0) {
            view.setTranslationY(-i14);
        }
        this.f18192c.add(new j(viewHolder, translationX, translationY, i11, i12));
        return true;
    }

    void animateMoveImpl(RecyclerView.ViewHolder viewHolder, int i9, int i10, int i11, int i12) {
        View view = viewHolder.itemView;
        int i13 = i11 - i9;
        int i14 = i12 - i10;
        if (i13 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i14 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator animate = view.animate();
        this.f18198i.add(viewHolder);
        animate.setDuration(getMoveDuration()).setListener(new f(viewHolder, i13, view, i14, animate)).start();
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateRemove(RecyclerView.ViewHolder viewHolder) {
        resetAnimation(viewHolder);
        this.f18190a.add(viewHolder);
        viewHolder.itemView.setTranslationX(0.0f);
        return true;
    }

    void b(i iVar) {
        int i9;
        RecyclerView.ViewHolder viewHolder = iVar.f18230a;
        View view = viewHolder == null ? null : viewHolder.itemView;
        RecyclerView.ViewHolder viewHolder2 = iVar.f18231b;
        View view2 = viewHolder2 != null ? viewHolder2.itemView : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(getChangeDuration() / 2);
            this.f18200k.add(iVar.f18230a);
            if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                i9 = viewHolder.itemView.getWidth();
            } else {
                i9 = -viewHolder.itemView.getWidth();
            }
            duration.alpha(0.0f).translationX(i9).setListener(new g(iVar, duration, view, view2)).start();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<Object> list) {
        return !list.isEmpty() || super.canReuseUpdatedViewHolder(viewHolder, list);
    }

    void cancelAll(List<RecyclerView.ViewHolder> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    void dispatchFinishedWhenDone() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        view.animate().cancel();
        int size = this.f18192c.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else if (this.f18192c.get(size).f18236a == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchMoveFinished(viewHolder);
                this.f18192c.remove(size);
            }
        }
        endChangeAnimation(this.f18193d, viewHolder);
        if (this.f18190a.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchRemoveFinished(viewHolder);
        }
        if (this.f18191b.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchAddFinished(viewHolder);
        }
        for (int size2 = this.f18196g.size() - 1; size2 >= 0; size2--) {
            ArrayList<i> arrayList = this.f18196g.get(size2);
            endChangeAnimation(arrayList, viewHolder);
            if (arrayList.isEmpty()) {
                this.f18196g.remove(size2);
            }
        }
        for (int size3 = this.f18195f.size() - 1; size3 >= 0; size3--) {
            ArrayList<j> arrayList2 = this.f18195f.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).f18236a == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(viewHolder);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f18195f.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f18194e.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.ViewHolder> arrayList3 = this.f18194e.get(size5);
            if (arrayList3.remove(viewHolder)) {
                view.setAlpha(1.0f);
                dispatchAddFinished(viewHolder);
                if (arrayList3.isEmpty()) {
                    this.f18194e.remove(size5);
                }
            }
        }
        if (!this.f18199j.remove(viewHolder)) {
            if (!this.f18197h.remove(viewHolder)) {
                if (!this.f18200k.remove(viewHolder)) {
                    if (!this.f18198i.remove(viewHolder)) {
                        dispatchFinishedWhenDone();
                        return;
                    }
                    throw new IllegalStateException("after animation is cancelled, item should not be in mMoveAnimations list");
                }
                throw new IllegalStateException("after animation is cancelled, item should not be in mChangeAnimations list");
            }
            throw new IllegalStateException("after animation is cancelled, item should not be in mAddAnimations list");
        }
        throw new IllegalStateException("after animation is cancelled, item should not be in mRemoveAnimations list");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimations() {
        int size = this.f18192c.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            j jVar = this.f18192c.get(size);
            View view = jVar.f18236a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(jVar.f18236a);
            this.f18192c.remove(size);
        }
        for (int size2 = this.f18190a.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished(this.f18190a.get(size2));
            this.f18190a.remove(size2);
        }
        int size3 = this.f18191b.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.ViewHolder viewHolder = this.f18191b.get(size3);
            viewHolder.itemView.setAlpha(1.0f);
            dispatchAddFinished(viewHolder);
            this.f18191b.remove(size3);
        }
        for (int size4 = this.f18193d.size() - 1; size4 >= 0; size4--) {
            d(this.f18193d.get(size4));
        }
        this.f18193d.clear();
        if (isRunning()) {
            for (int size5 = this.f18195f.size() - 1; size5 >= 0; size5--) {
                ArrayList<j> arrayList = this.f18195f.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    j jVar2 = arrayList.get(size6);
                    View view2 = jVar2.f18236a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    dispatchMoveFinished(jVar2.f18236a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f18195f.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f18194e.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.ViewHolder> arrayList2 = this.f18194e.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.ViewHolder viewHolder2 = arrayList2.get(size8);
                    viewHolder2.itemView.setAlpha(1.0f);
                    dispatchAddFinished(viewHolder2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f18194e.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f18196g.size() - 1; size9 >= 0; size9--) {
                ArrayList<i> arrayList3 = this.f18196g.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    d(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f18196g.remove(arrayList3);
                    }
                }
            }
            cancelAll(this.f18199j);
            cancelAll(this.f18198i);
            cancelAll(this.f18197h);
            cancelAll(this.f18200k);
            dispatchAnimationsFinished();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean isRunning() {
        return (this.f18191b.isEmpty() && this.f18193d.isEmpty() && this.f18192c.isEmpty() && this.f18190a.isEmpty() && this.f18198i.isEmpty() && this.f18199j.isEmpty() && this.f18197h.isEmpty() && this.f18200k.isEmpty() && this.f18195f.isEmpty() && this.f18194e.isEmpty() && this.f18196g.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void runPendingAnimations() {
        boolean z10 = !this.f18190a.isEmpty();
        boolean z11 = !this.f18192c.isEmpty();
        boolean z12 = !this.f18193d.isEmpty();
        boolean z13 = !this.f18191b.isEmpty();
        if (z10 || z11 || z13 || z12) {
            Iterator<RecyclerView.ViewHolder> it = this.f18190a.iterator();
            while (it.hasNext()) {
                animateRemoveImpl(it.next());
            }
            this.f18190a.clear();
            if (z11) {
                ArrayList<j> arrayList = new ArrayList<>();
                arrayList.addAll(this.f18192c);
                this.f18195f.add(arrayList);
                this.f18192c.clear();
                a aVar = new a(arrayList);
                if (z10) {
                    ViewCompat.postOnAnimationDelayed(arrayList.get(0).f18236a.itemView, aVar, getRemoveDuration());
                } else {
                    aVar.run();
                }
            }
            if (z12) {
                ArrayList<i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f18193d);
                this.f18196g.add(arrayList2);
                this.f18193d.clear();
                b bVar = new b(arrayList2);
                if (z10) {
                    ViewCompat.postOnAnimationDelayed(arrayList2.get(0).f18230a.itemView, bVar, getRemoveDuration());
                } else {
                    bVar.run();
                }
            }
            if (z13) {
                ArrayList<RecyclerView.ViewHolder> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f18191b);
                this.f18194e.add(arrayList3);
                this.f18191b.clear();
                c cVar = new c(arrayList3);
                if (!z10 && !z11 && !z12) {
                    cVar.run();
                } else {
                    ViewCompat.postOnAnimationDelayed(arrayList3.get(0).itemView, cVar, (z10 ? getRemoveDuration() : 0L) + Math.max(z11 ? getMoveDuration() : 0L, z12 ? getChangeDuration() : 0L));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class i {

        /* renamed from: a  reason: collision with root package name */
        public RecyclerView.ViewHolder f18230a;

        /* renamed from: b  reason: collision with root package name */
        public RecyclerView.ViewHolder f18231b;

        /* renamed from: c  reason: collision with root package name */
        public int f18232c;

        /* renamed from: d  reason: collision with root package name */
        public int f18233d;

        /* renamed from: e  reason: collision with root package name */
        public int f18234e;

        /* renamed from: f  reason: collision with root package name */
        public int f18235f;

        private i(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            this.f18230a = viewHolder;
            this.f18231b = viewHolder2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f18230a + ", newHolder=" + this.f18231b + ", fromX=" + this.f18232c + ", fromY=" + this.f18233d + ", toX=" + this.f18234e + ", toY=" + this.f18235f + '}';
        }

        i(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i9, int i10, int i11, int i12) {
            this(viewHolder, viewHolder2);
            this.f18232c = i9;
            this.f18233d = i10;
            this.f18234e = i11;
            this.f18235f = i12;
        }
    }
}
