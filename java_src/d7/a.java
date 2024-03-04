package d7;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import java.util.List;
/* loaded from: classes3.dex */
public interface a<T, VH extends BaseViewHolder> extends BaseRecyclerAdapter.a<VH> {
    void addData(T t10);

    void addDatas(List<T> list);

    void clearAll();

    void convertItem(VH vh2, int i9, T t10);

    View getFooterView();

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    int getItemCount();

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    int getItemViewType(int i9);

    List<T> getList();

    RecyclerView getRecyclerView();

    void hideFooterView();

    void init(Context context, View view);

    void onBindViewHolder(@NonNull VH vh2, int i9);

    RecyclerView.Adapter<VH> onCreateAdapter(RecyclerView recyclerView);

    RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView);

    void reload();

    void setDatas(List<T> list);

    void setFooterView(int i9);

    void showEmptyView();
}
