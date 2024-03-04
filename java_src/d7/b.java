package d7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class b<T, VH extends BaseViewHolder> implements d7.a<T, VH> {

    /* renamed from: a  reason: collision with root package name */
    private View f37947a;

    /* renamed from: b  reason: collision with root package name */
    private Context f37948b;

    /* renamed from: c  reason: collision with root package name */
    RecyclerView f37949c;

    /* renamed from: d  reason: collision with root package name */
    private d7.a<T, VH> f37950d;

    /* renamed from: e  reason: collision with root package name */
    public BaseRecyclerAdapter<T, VH> f37951e;

    /* renamed from: f  reason: collision with root package name */
    public View f37952f;

    /* renamed from: g  reason: collision with root package name */
    protected ViewPager2 f37953g;

    /* renamed from: h  reason: collision with root package name */
    private final List<T> f37954h = new ArrayList();

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                b.this.f37950d.reload();
            }
        }
    }

    public b(d7.a<T, VH> aVar) {
        this.f37950d = aVar;
    }

    @Override // d7.a
    public void addData(T t10) {
        this.f37954h.add(t10);
    }

    @Override // d7.a
    public void addDatas(List<T> list) {
        if (list != null) {
            this.f37954h.addAll(list);
        }
    }

    @Override // d7.a
    public void clearAll() {
        this.f37954h.clear();
    }

    @Override // d7.a
    public abstract void convertItem(VH vh2, int i9, T t10);

    public Context e() {
        return this.f37948b;
    }

    /* JADX WARN: Incorrect return type in method signature: <T:Landroid/view/View;>(I)TT; */
    public View g(int i9) {
        return this.f37947a.findViewById(i9);
    }

    @Override // d7.a, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public int getItemCount() {
        return this.f37954h.size();
    }

    @Override // d7.a, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public int getItemViewType(int i9) {
        return this.f37950d.getItemViewType(i9);
    }

    @Override // d7.a
    public List<T> getList() {
        return this.f37954h;
    }

    @Override // d7.a
    public RecyclerView getRecyclerView() {
        return this.f37949c;
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: h */
    public VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return (VH) this.f37950d.onCreateViewHolder(viewGroup, i9);
    }

    @Override // d7.a
    public void init(Context context, View view) {
        this.f37948b = context;
        this.f37947a = view;
        View findViewById = view.findViewById(R.id.recycler_view);
        if (findViewById instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) findViewById;
            this.f37949c = recyclerView;
            this.f37949c.setLayoutManager(onCreateLayoutManager(recyclerView));
        }
        if (findViewById instanceof ViewPager2) {
            ViewPager2 viewPager2 = (ViewPager2) findViewById;
            this.f37953g = viewPager2;
            this.f37949c = (RecyclerView) viewPager2.getChildAt(0);
        }
        if (this.f37949c != null) {
            View findViewById2 = view.findViewById(R.id.empty_view);
            this.f37952f = findViewById2;
            if (findViewById2 == null) {
                ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.recycler_content_area);
                View inflate = LayoutInflater.from(context).inflate(R.layout.layout_empty_view, viewGroup, false);
                this.f37952f = inflate;
                if (viewGroup != null) {
                    viewGroup.addView(inflate);
                }
            }
            View view2 = this.f37952f;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            RecyclerView recyclerView2 = this.f37949c;
            recyclerView2.setAdapter(onCreateAdapter(recyclerView2));
            View view3 = this.f37952f;
            if (view3 != null) {
                view3.setOnClickListener(new a());
                return;
            }
            return;
        }
        throw new IllegalStateException("RecyclerViewDelegateImpl must have a recyclerView or a viewPager2 id is @+id/recycler_view");
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    /* renamed from: j */
    public void onViewRecycled(@NonNull VH vh2) {
        this.f37950d.onViewRecycled(vh2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull Object obj, int i9) {
        onBindViewHolder((b<T, VH>) ((BaseViewHolder) obj), i9);
    }

    @Override // d7.a
    public RecyclerView.Adapter<VH> onCreateAdapter(RecyclerView recyclerView) {
        BaseRecyclerAdapter<T, VH> baseRecyclerAdapter = new BaseRecyclerAdapter<>(this.f37948b, this.f37954h, this.f37950d);
        this.f37951e = baseRecyclerAdapter;
        return baseRecyclerAdapter;
    }

    @Override // d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        return this.f37950d.onCreateLayoutManager(recyclerView);
    }

    @Override // d7.a
    public void setDatas(List<T> list) {
        this.f37954h.clear();
        if (list != null) {
            this.f37954h.addAll(list);
        }
    }

    @Override // d7.a
    public void onBindViewHolder(@NonNull VH vh2, int i9) {
        T t10 = getList().get(i9);
        this.f37950d.convertItem(vh2, i9, t10);
        convertItem(vh2, i9, t10);
    }
}
