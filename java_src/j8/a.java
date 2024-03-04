package j8;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.a;
import com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils;
import com.tencent.qgame.animplayer.AnimView;
import java.io.File;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup f53164a;

    /* renamed from: b  reason: collision with root package name */
    private List<Integer> f53165b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f53166c;

    /* renamed from: d  reason: collision with root package name */
    private int f53167d;

    /* renamed from: e  reason: collision with root package name */
    private AnimView f53168e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j8.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0538a extends a.j<File> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: j8.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0539a extends VaPlayerUtils.IAnimListenerImp {
            C0539a(AnimView animView) {
                super(animView);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils.IAnimListenerImp
            public void onVideoComplete(@Nullable AnimView animView) {
                if (animView != null && (animView.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) animView.getParent()).removeView(animView);
                }
                if (!a.this.f53165b.isEmpty()) {
                    a.this.f53165b.remove(0);
                }
                a.this.h();
            }
        }

        C0538a() {
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.j, com.guochao.faceshow.aaspring.manager.a.k
        public void b(int i9, String str, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean) {
            a.this.f53166c = false;
            if (!a.this.f53165b.isEmpty()) {
                a.this.f53165b.remove(0);
            }
            a.this.h();
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.j, com.guochao.faceshow.aaspring.manager.a.k
        /* renamed from: d */
        public void c(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, @Nullable File file) {
            if (file == null || !file.getPath().endsWith("mp4") || a.this.f53164a == null) {
                if (file != null) {
                    a.this.f53166c = false;
                    if (!a.this.f53165b.isEmpty()) {
                        a.this.f53165b.remove(0);
                    }
                    a.this.h();
                    return;
                }
                return;
            }
            a.this.f53164a.removeAllViews();
            AnimView animView = new AnimView(a.this.f53164a.getContext());
            a.this.f53168e = animView;
            a.this.f53164a.addView(animView);
            animView.setTag("im");
            animView.setLoop(1);
            VaPlayerUtils.startPlay(animView, file, new C0539a(animView));
        }
    }

    public a(Context context, ViewGroup viewGroup) {
        this.f53165b = new CopyOnWriteArrayList();
        this.f53166c = false;
        this.f53167d = 4;
        if (viewGroup != null) {
            this.f53164a = viewGroup;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.f53165b.isEmpty()) {
            this.f53166c = false;
            return;
        }
        this.f53166c = true;
        this.f53164a.setVisibility(0);
        com.guochao.faceshow.aaspring.manager.a.g().j(0, this.f53165b.get(0).intValue(), new C0538a(), this.f53167d, 15);
    }

    public void f(Integer num) {
        this.f53165b.add(num);
        if (this.f53166c) {
            return;
        }
        h();
    }

    public void g() {
        AnimView animView;
        if (this.f53166c && (animView = this.f53168e) != null) {
            animView.stopPlay();
        }
        this.f53165b.clear();
        this.f53166c = false;
    }

    public a(Context context, ViewGroup viewGroup, int i9) {
        this(context, viewGroup);
        this.f53167d = i9;
    }
}
