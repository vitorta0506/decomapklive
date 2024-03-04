package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class PollNumberLayout {

    /* renamed from: b  reason: collision with root package name */
    private DisTouchRecyclerView f19616b;

    /* renamed from: c  reason: collision with root package name */
    private DisTouchRecyclerView f19617c;

    /* renamed from: d  reason: collision with root package name */
    private DisTouchRecyclerView f19618d;
    @IntRange(from = 0, to = 999)

    /* renamed from: e  reason: collision with root package name */
    private int f19619e;

    /* renamed from: f  reason: collision with root package name */
    private View f19620f;

    /* renamed from: a  reason: collision with root package name */
    private List<String> f19615a = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private Handler f19621g = new Handler(Looper.getMainLooper());

    /* loaded from: classes3.dex */
    public class MyAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f19622a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f19623b;

        /* renamed from: c  reason: collision with root package name */
        private String f19624c;

        /* renamed from: d  reason: collision with root package name */
        private int f19625d;

        /* loaded from: classes3.dex */
        class a extends RecyclerView.ViewHolder {
            a(View view) {
                super(view);
            }
        }

        public MyAdapter() {
        }

        public void c(TextView textView, int i9) {
            Typeface createFromAsset = Typeface.createFromAsset(BaseApplication.getInstance().getAssets(), "font/DIN_Alternate_Bold.ttf");
            if (createFromAsset != null) {
                textView.setTypeface(createFromAsset, i9);
            }
            textView.setIncludeFontPadding(true);
        }

        public void d(int i9) {
            this.f19625d = i9;
        }

        public void e(String str) {
            this.f19624c = str;
        }

        public void f(boolean z10) {
            this.f19622a = z10;
        }

        public void g(boolean z10) {
            this.f19623b = z10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 100;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            if (PollNumberLayout.this.f19615a.isEmpty()) {
                return;
            }
            String str = (String) PollNumberLayout.this.f19615a.get(i9 % PollNumberLayout.this.f19615a.size());
            if (str == null) {
                str = "0";
            }
            ((TextView) viewHolder.itemView).setText(str);
            if (!this.f19622a) {
                View view = viewHolder.itemView;
                ((TextView) view).setTextColor(ContextCompat.getColor(view.getContext(), R.color.color_ugc_text_level_1));
            } else if (str.equals(this.f19624c)) {
                View view2 = viewHolder.itemView;
                ((TextView) view2).setTextColor(ContextCompat.getColor(view2.getContext(), R.color.color_ugc_app_tips));
            } else {
                View view3 = viewHolder.itemView;
                ((TextView) view3).setTextColor(ContextCompat.getColor(view3.getContext(), R.color.color_ugc_text_level_1));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            a aVar = new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_poll_number, viewGroup, false));
            TextView textView = (TextView) aVar.itemView;
            c(textView, textView.getTypeface().getStyle());
            return aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            if (i9 == 0) {
                if (adapter instanceof MyAdapter) {
                    RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                    if (layoutManager instanceof ScrollSpeedLinearLayoutManger) {
                        MyAdapter myAdapter = (MyAdapter) adapter;
                        if (myAdapter.f19625d != ((ScrollSpeedLinearLayoutManger) layoutManager).findFirstVisibleItemPosition() + 1) {
                            recyclerView.smoothScrollToPosition(myAdapter.f19625d);
                            return;
                        }
                    }
                    ((MyAdapter) adapter).f(true);
                    adapter.notifyDataSetChanged();
                    b9.a.a().c();
                }
            } else if (adapter instanceof MyAdapter) {
                MyAdapter myAdapter2 = (MyAdapter) adapter;
                myAdapter2.f(false);
                if (myAdapter2.f19623b) {
                    b9.a.a().e();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PollNumberLayout.this.f19620f != null) {
                PollNumberLayout.this.f19620f.setAlpha(1.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends d {
        c(int i9, boolean z10) {
            super(i9, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.PollNumberLayout.d
        public void b(int i9, boolean z10) {
            int indexOf;
            int indexOf2;
            int indexOf3;
            if (PollNumberLayout.this.f19616b == null || PollNumberLayout.this.f19617c == null || PollNumberLayout.this.f19618d == null) {
                return;
            }
            for (int i10 = 3; i10 > 0; i10--) {
                int size = PollNumberLayout.this.f19615a.size() * 3;
                String str = "0";
                if (i10 == 1) {
                    if (i9 == 0) {
                        indexOf = size + 10;
                    } else {
                        str = String.valueOf(i9 % 10);
                        indexOf = size + 10 + PollNumberLayout.this.f19615a.indexOf(str);
                    }
                    if (z10) {
                        PollNumberLayout.this.f19618d.smoothScrollToPosition(indexOf);
                    } else {
                        PollNumberLayout.this.f19618d.smoothScrollToPosition(indexOf - size);
                    }
                    RecyclerView.Adapter adapter = PollNumberLayout.this.f19618d.getAdapter();
                    if (adapter instanceof MyAdapter) {
                        MyAdapter myAdapter = (MyAdapter) adapter;
                        if (!z10) {
                            indexOf -= size;
                        }
                        myAdapter.d(indexOf);
                        myAdapter.e(str);
                        myAdapter.g(z10);
                    }
                } else if (i10 == 2) {
                    if (i9 < 10) {
                        indexOf2 = size + 10;
                    } else {
                        str = String.valueOf((i9 / 10) % 10);
                        indexOf2 = size + 10 + PollNumberLayout.this.f19615a.indexOf(str);
                    }
                    if (z10) {
                        PollNumberLayout.this.f19617c.smoothScrollToPosition(indexOf2);
                    } else {
                        PollNumberLayout.this.f19617c.smoothScrollToPosition(indexOf2 - size);
                    }
                    RecyclerView.Adapter adapter2 = PollNumberLayout.this.f19617c.getAdapter();
                    if (adapter2 instanceof MyAdapter) {
                        MyAdapter myAdapter2 = (MyAdapter) adapter2;
                        if (!z10) {
                            indexOf2 -= size;
                        }
                        myAdapter2.d(indexOf2);
                        myAdapter2.e(str);
                        myAdapter2.g(z10);
                    }
                } else if (i10 == 3) {
                    if (i9 < 100) {
                        indexOf3 = size + 10;
                    } else {
                        str = String.valueOf(i9 / 100);
                        indexOf3 = size + 10 + PollNumberLayout.this.f19615a.indexOf(str);
                    }
                    if (z10) {
                        PollNumberLayout.this.f19616b.smoothScrollToPosition(indexOf3);
                    } else {
                        PollNumberLayout.this.f19616b.smoothScrollToPosition(indexOf3 - size);
                    }
                    RecyclerView.Adapter adapter3 = PollNumberLayout.this.f19616b.getAdapter();
                    if (adapter3 instanceof MyAdapter) {
                        MyAdapter myAdapter3 = (MyAdapter) adapter3;
                        if (!z10) {
                            indexOf3 -= size;
                        }
                        myAdapter3.d(indexOf3);
                        myAdapter3.e(str);
                        myAdapter3.g(z10);
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f19631a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f19632b;

        public d(int i9, boolean z10) {
            this.f19631a = i9;
            this.f19632b = z10;
        }

        public abstract void b(int i9, boolean z10);

        @Override // java.lang.Runnable
        public void run() {
            b(this.f19631a, this.f19632b);
        }
    }

    public PollNumberLayout(View view) {
        this.f19620f = view;
        g(view);
    }

    private void f(DisTouchRecyclerView disTouchRecyclerView) {
        disTouchRecyclerView.setLayoutManager(new ScrollSpeedLinearLayoutManger(disTouchRecyclerView.getContext()));
        disTouchRecyclerView.setAdapter(new MyAdapter());
        disTouchRecyclerView.addOnScrollListener(new a());
    }

    private void g(View view) {
        this.f19616b = (DisTouchRecyclerView) view.findViewById(R.id.first_item_view);
        this.f19617c = (DisTouchRecyclerView) view.findViewById(R.id.second_item_view);
        this.f19618d = (DisTouchRecyclerView) view.findViewById(R.id.third_item_view);
        for (int i9 = 0; i9 < 10; i9++) {
            this.f19615a.add(String.valueOf(i9));
        }
        f(this.f19616b);
        f(this.f19617c);
        f(this.f19618d);
        this.f19616b.scrollToPosition(10);
        this.f19617c.scrollToPosition(10);
        this.f19618d.scrollToPosition(10);
        if (this.f19616b.getAdapter() != null) {
            this.f19616b.getAdapter().notifyDataSetChanged();
        }
        if (this.f19617c.getAdapter() != null) {
            this.f19617c.getAdapter().notifyDataSetChanged();
        }
        if (this.f19618d.getAdapter() != null) {
            this.f19618d.getAdapter().notifyDataSetChanged();
        }
        b9.a.a().b();
    }

    public void h() {
        b9.a.a().d();
        Handler handler = this.f19621g;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void i(@IntRange(from = 0, to = 999) int i9, boolean z10, boolean z11) {
        if (this.f19619e == i9 && z10 && !z11) {
            return;
        }
        if (!z10) {
            this.f19620f.setAlpha(0.0f);
            this.f19621g.postDelayed(new b(), 300L);
        }
        int min = Math.min(999, Math.max(0, i9));
        this.f19619e = min;
        this.f19616b.scrollToPosition(10);
        this.f19617c.scrollToPosition(10);
        this.f19618d.scrollToPosition(10);
        this.f19620f.post(new c(min, z10));
    }
}
