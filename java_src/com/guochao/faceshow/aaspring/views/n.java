package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PayoneerData;
import com.guochao.faceshow.aaspring.modulars.personal.PayoneerSelectAdapter;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.List;
/* loaded from: classes3.dex */
public class n extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    private View f24424a;

    /* renamed from: b  reason: collision with root package name */
    private Context f24425b;

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f24426c;

    /* renamed from: d  reason: collision with root package name */
    private List<PayoneerData> f24427d;

    /* renamed from: e  reason: collision with root package name */
    private PayoneerSelectAdapter f24428e;

    /* renamed from: f  reason: collision with root package name */
    private m f24429f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements z9.a {
        a() {
        }

        @Override // z9.a
        public void b(View view, String str, int i9) {
            m mVar = n.this.f24429f;
            n nVar = n.this;
            mVar.a(nVar, (PayoneerData) nVar.f24427d.get(i9));
        }
    }

    public n(Context context, List<PayoneerData> list, m mVar) {
        this.f24425b = context;
        this.f24427d = list;
        this.f24429f = mVar;
        View inflate = LayoutInflater.from(context).inflate(c(), (ViewGroup) null);
        this.f24424a = inflate;
        this.f24426c = (RecyclerView) inflate.findViewById(R.id.rcv_payoneer_account);
        setContentView(this.f24424a);
        setWidth(DensityUtil.dp2px(100.0f));
        setHeight(-2);
        setFocusable(true);
        setOutsideTouchable(true);
        d();
    }

    private int c() {
        return R.layout.layout_popup_select_payoneer;
    }

    private void d() {
        this.f24426c.setLayoutManager(new LinearLayoutManager(this.f24425b));
        PayoneerSelectAdapter payoneerSelectAdapter = new PayoneerSelectAdapter(this.f24425b, this.f24427d);
        this.f24428e = payoneerSelectAdapter;
        this.f24426c.setAdapter(payoneerSelectAdapter);
        this.f24426c.addItemDecoration(new RecycleViewDivider(this.f24425b, 0, DensityUtil.dp2px(1.0f), this.f24425b.getResources().getColor(R.color.color_ugc_divider)));
        this.f24428e.setOnItemClickListener(new a());
    }
}
