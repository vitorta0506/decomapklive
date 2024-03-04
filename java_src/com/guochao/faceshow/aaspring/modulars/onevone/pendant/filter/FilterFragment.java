package com.guochao.faceshow.aaspring.modulars.onevone.pendant.filter;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.BeautyItemCache;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.pusher.base.ILivePusher;
import com.guochao.pusher.beauty.FilterItem;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class FilterFragment extends BaseFragment {

    /* renamed from: c  reason: collision with root package name */
    private int f21043c;
    @BindView
    RecyclerView content;

    /* renamed from: d  reason: collision with root package name */
    private boolean f21044d;
    @BindView
    SeekBar filterSeekbar;

    /* renamed from: g  reason: collision with root package name */
    private BeautyItemCache f21047g;
    @BindView
    TextView tvFilterLevel;

    /* renamed from: a  reason: collision with root package name */
    private int f21041a = -1;

    /* renamed from: b  reason: collision with root package name */
    private FilterItem f21042b = null;

    /* renamed from: e  reason: collision with root package name */
    private List<FilterItem> f21045e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private ILivePusher.BeautyManager f21046f = LivePlayerProvider.beautyManager();

    /* loaded from: classes3.dex */
    class a extends RecyclerView.Adapter {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.onevone.pendant.filter.FilterFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0208a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f21049a;

            View$OnClickListenerC0208a(int i9) {
                this.f21049a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FilterFragment.this.X1(this.f21049a);
            }
        }

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FilterFragment.this.f21045e.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            if (viewHolder instanceof FilterItemHolder) {
                FilterItemHolder filterItemHolder = (FilterItemHolder) viewHolder;
                filterItemHolder.d(i9, (FilterItem) FilterFragment.this.f21045e.get(i9));
                filterItemHolder.c(FilterFragment.this.f21041a == i9);
                filterItemHolder.itemView.setOnClickListener(new View$OnClickListenerC0208a(i9));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new FilterItemHolder(FilterFragment.this.getContext(), viewGroup);
        }
    }

    /* loaded from: classes3.dex */
    class b implements SeekBar.OnSeekBarChangeListener {
        b() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i9, boolean z10) {
            if (!z10 || FilterFragment.this.f21042b == null) {
                return;
            }
            File file = new File(BeautyItemCacheManager.getFilterPath(FilterFragment.this.f21042b));
            if (file.exists()) {
                FilterFragment.this.f21046f.setFilter(file.getAbsolutePath(), i9);
            }
            FilterFragment.this.f21042b.setCurrentValue(i9);
            FilterFragment.this.tvFilterLevel.setText(String.valueOf(i9));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            if (FilterFragment.this.f21042b != null) {
                FilterFragment.this.f21047g.setLastFilterStrength(FilterFragment.this.f21042b.getCurrentValue());
            }
            FilterFragment.this.Y1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1(int i9) {
        FilterItemHolder filterItemHolder;
        int i10 = this.f21041a;
        if (i10 != i9 && i9 != -1) {
            this.filterSeekbar.setEnabled(true);
            this.filterSeekbar.setThumb(getResources().getDrawable(R.mipmap.icon_lvjing_pull));
            FilterItem filterItem = this.f21045e.get(i9);
            this.f21042b = filterItem;
            this.filterSeekbar.setProgress((int) filterItem.getCurrentValue());
            this.tvFilterLevel.setText(String.valueOf((int) this.f21042b.getCurrentValue()));
            File file = new File(BeautyItemCacheManager.getFilterPath(this.f21042b));
            if (file.exists()) {
                this.f21046f.setFilter(file.getAbsolutePath(), this.f21042b.getCurrentValue());
            }
            int i11 = this.f21041a;
            if (i11 >= 0 && (filterItemHolder = (FilterItemHolder) this.content.findViewHolderForAdapterPosition(i11)) != null) {
                filterItemHolder.c(false);
                filterItemHolder.mTextViewName.setSelected(false);
            }
            this.f21041a = i9;
            FilterItemHolder filterItemHolder2 = (FilterItemHolder) this.content.findViewHolderForAdapterPosition(i9);
            if (filterItemHolder2 != null) {
                filterItemHolder2.c(true);
                filterItemHolder2.mTextViewName.setSelected(true);
            }
            this.f21047g.setLastFilter(file.getAbsolutePath());
            this.f21047g.setLastFilterStrength(this.f21042b.getCurrentValue());
            Y1();
            return;
        }
        this.f21042b = null;
        FilterItemHolder filterItemHolder3 = (FilterItemHolder) this.content.findViewHolderForAdapterPosition(i10);
        if (filterItemHolder3 != null) {
            filterItemHolder3.c(false);
            filterItemHolder3.mTextViewName.setSelected(false);
        }
        this.f21041a = -1;
        this.tvFilterLevel.setText("0");
        this.filterSeekbar.setProgress(0);
        this.filterSeekbar.setEnabled(false);
        this.filterSeekbar.setThumb(getResources().getDrawable(R.mipmap.seekbar_disable));
        this.f21046f.setFilter(null, 0.0f);
        this.f21047g.setLastFilterStrength(0.0f);
        this.f21047g.setLastFilter(null);
        Y1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1() {
        BeautyItemCacheManager.saveLast(this.f21043c, this.f21047g);
        if (getParentFragment() instanceof q9.a) {
            ((q9.a) getParentFragment()).t1(this.f21047g);
        }
    }

    public void W1() {
        if (this.f21045e == null) {
            return;
        }
        for (int i9 = 0; i9 < this.f21045e.size(); i9++) {
            FilterItem filterItem = this.f21045e.get(i9);
            filterItem.setCurrentValue(filterItem.getDefaultValue());
        }
        X1(-1);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_filter;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f21043c = arguments.getInt("type");
        boolean z10 = arguments.getBoolean("isTrtc", false);
        this.f21044d = z10;
        if (z10) {
            this.f21043c = 1005;
        }
        this.f21047g = BeautyItemCacheManager.getLast(this.f21043c);
        this.filterSeekbar.setEnabled(false);
        this.f21045e.addAll(this.f21046f.getFilterItems());
        if (this.f21047g.getLastFilter() != null) {
            int i9 = 0;
            while (true) {
                if (i9 >= this.f21045e.size()) {
                    break;
                } else if (Objects.equals(BeautyItemCacheManager.getFilterPath(this.f21045e.get(i9)), this.f21047g.getLastFilter())) {
                    this.f21041a = i9;
                    this.filterSeekbar.setEnabled(true);
                    this.filterSeekbar.setThumb(getResources().getDrawable(R.mipmap.icon_lvjing_pull));
                    this.filterSeekbar.setProgress((int) this.f21047g.getLastFilterStrength());
                    this.tvFilterLevel.setText(String.valueOf((int) this.f21047g.getLastFilterStrength()));
                    break;
                } else {
                    i9++;
                }
            }
        }
        FontUtils.setFont(this.tvFilterLevel, 1);
        this.content.setLayoutManager(new GridLayoutManager(getContext(), 5, 1, false));
        this.content.setAdapter(new a());
        this.filterSeekbar.setOnSeekBarChangeListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }
}
