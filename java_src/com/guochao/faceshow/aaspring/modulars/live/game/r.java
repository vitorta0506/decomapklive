package com.guochao.faceshow.aaspring.modulars.live.game;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class r extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    private final View f19648a;

    /* renamed from: b  reason: collision with root package name */
    private Context f19649b;

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f19650c;

    /* renamed from: d  reason: collision with root package name */
    private List<Integer> f19651d;

    /* renamed from: e  reason: collision with root package name */
    private String f19652e;

    /* renamed from: f  reason: collision with root package name */
    private c f19653f;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            r.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* loaded from: classes3.dex */
        class a extends RecyclerView.ViewHolder {
            a(View view) {
                super(view);
            }
        }

        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.game.r$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0187b implements View.OnClickListener {
            View$OnClickListenerC0187b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                r.this.dismiss();
                if (r.this.f19653f != null) {
                    r.this.f19653f.a(((Integer) view.getTag()).intValue());
                }
            }
        }

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return r.this.f19651d.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            ((TextView) viewHolder.itemView).setText(String.format("%s%s%s", r.this.f19651d.get(i9), r.this.f19649b.getString(R.string.no_nextline_space), r.this.f19652e));
            ((TextView) viewHolder.itemView).setTag(Integer.valueOf(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            a aVar = new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_select_popup, viewGroup, false));
            aVar.itemView.getLayoutParams().width = r.this.getWidth();
            aVar.itemView.setOnClickListener(new View$OnClickListenerC0187b());
            return aVar;
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(int i9);
    }

    public r(Context context, int i9, int i10) {
        super(context);
        this.f19651d = new ArrayList();
        this.f19649b = context;
        View inflate = LayoutInflater.from(context).inflate(e(), (ViewGroup) null);
        this.f19648a = inflate;
        this.f19650c = (RecyclerView) inflate.findViewById(R.id.content_recyclerview);
        setContentView(inflate);
        setWidth(i9);
        setHeight(i10);
        setFocusable(true);
        setOutsideTouchable(true);
        setBackgroundDrawable(new ColorDrawable(0));
        inflate.setOnClickListener(new a());
        f();
    }

    private int e() {
        return R.layout.layout_popup_select;
    }

    private void f() {
        this.f19650c.setLayoutManager(new LinearLayoutManager(this.f19649b));
        this.f19650c.setAdapter(new b());
    }

    public void g(List<Integer> list, String str) {
        this.f19651d.clear();
        this.f19651d.addAll(list);
        this.f19652e = str;
        RecyclerView recyclerView = this.f19650c;
        if (recyclerView == null || recyclerView.getAdapter() == null) {
            return;
        }
        this.f19650c.getAdapter().notifyDataSetChanged();
    }

    public void setOnItemClickListener(c cVar) {
        this.f19653f = cVar;
    }
}
