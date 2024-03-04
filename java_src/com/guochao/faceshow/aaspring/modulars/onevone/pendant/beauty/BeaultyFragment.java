package com.guochao.faceshow.aaspring.modulars.onevone.pendant.beauty;

import android.os.Bundle;
import android.util.ArrayMap;
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
import com.guochao.pusher.beauty.BeautyItem;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class BeaultyFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private int f20990a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f20991b;
    @BindView
    RecyclerView content;

    /* renamed from: e  reason: collision with root package name */
    private BeautyItemCache f20994e;
    @BindView
    ViewGroup filterSeekLay;
    @BindView
    SeekBar filterSeekbar;
    @BindView
    TextView tvFilterLevel;

    /* renamed from: c  reason: collision with root package name */
    private final List<BeautyItem> f20992c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    ILivePusher.BeautyManager f20993d = LivePlayerProvider.beautyManager();

    /* renamed from: f  reason: collision with root package name */
    private BeautyItem f20995f = null;

    /* renamed from: g  reason: collision with root package name */
    private int f20996g = 0;

    /* loaded from: classes3.dex */
    class a extends RecyclerView.Adapter {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.onevone.pendant.beauty.BeaultyFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0204a implements View.OnClickListener {
            View$OnClickListenerC0204a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BeaultyFragment.this.W1(((Integer) view.getTag()).intValue());
            }
        }

        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return BeaultyFragment.this.f20992c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            if (viewHolder instanceof BeautyHolder) {
                BeautyHolder beautyHolder = (BeautyHolder) viewHolder;
                beautyHolder.itemView.setTag(Integer.valueOf(i9));
                beautyHolder.c((BeautyItem) BeaultyFragment.this.f20992c.get(i9), i9);
                beautyHolder.itemView.setSelected(BeaultyFragment.this.f20996g == i9);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            BeautyHolder beautyHolder = new BeautyHolder(viewGroup);
            beautyHolder.itemView.setOnClickListener(new View$OnClickListenerC0204a());
            return beautyHolder;
        }
    }

    /* loaded from: classes3.dex */
    class b implements SeekBar.OnSeekBarChangeListener {
        b() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i9, boolean z10) {
            if (!z10 || BeaultyFragment.this.f20995f == null) {
                return;
            }
            BeaultyFragment beaultyFragment = BeaultyFragment.this;
            float f10 = i9;
            beaultyFragment.tvFilterLevel.setText(String.valueOf((int) (beaultyFragment.f20995f.getMinValue() + f10)));
            BeaultyFragment.this.f20995f.setCurrentValue(f10 + BeaultyFragment.this.f20995f.getMinValue());
            BeaultyFragment beaultyFragment2 = BeaultyFragment.this;
            beaultyFragment2.f20993d.update(beaultyFragment2.f20995f);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            if (BeaultyFragment.this.f20995f != null) {
                BeaultyFragment.this.f20994e.getLastBeautyValue().put(BeaultyFragment.this.f20995f.getEffectKey(), Float.valueOf(BeaultyFragment.this.f20995f.getCurrentValue()));
                BeautyItemCacheManager.saveLast(BeaultyFragment.this.f20990a, BeaultyFragment.this.f20994e);
                if (BeaultyFragment.this.getParentFragment() instanceof q9.a) {
                    ((q9.a) BeaultyFragment.this.getParentFragment()).t1(BeaultyFragment.this.f20994e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W1(int i9) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        BeautyItem beautyItem = this.f20992c.get(i9);
        this.f20995f = beautyItem;
        if (beautyItem != null) {
            this.filterSeekbar.setEnabled(true);
            this.filterSeekbar.setMax((int) (this.f20995f.getMaxValue() - this.f20995f.getMinValue()));
            this.filterSeekbar.setProgress((int) (this.f20995f.getCurrentValue() - this.f20995f.getMinValue()));
            this.tvFilterLevel.setText(String.valueOf((int) this.f20995f.getCurrentValue()));
        }
        int i10 = this.f20996g;
        if (i10 >= 0 && (findViewHolderForAdapterPosition = this.content.findViewHolderForAdapterPosition(i10)) != null) {
            findViewHolderForAdapterPosition.itemView.setSelected(false);
            ((BeautyHolder) findViewHolderForAdapterPosition).beautyName.setSelected(false);
        }
        this.f20996g = i9;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition2 = this.content.findViewHolderForAdapterPosition(i9);
        if (findViewHolderForAdapterPosition2 != null) {
            findViewHolderForAdapterPosition2.itemView.setSelected(true);
            ((BeautyHolder) findViewHolderForAdapterPosition2).beautyName.setSelected(true);
        }
    }

    public void V1() {
        this.f20995f = null;
        this.f20994e.getLastBeautyValue().clear();
        this.f20992c.clear();
        this.f20992c.addAll(this.f20993d.getBeautyItems());
        this.f20994e.getLastBeautyValue().clear();
        for (int i9 = 0; i9 < this.f20992c.size(); i9++) {
            this.f20993d.update(this.f20992c.get(i9));
        }
        BeautyItemCacheManager.saveLast(this.f20990a, this.f20994e);
        W1(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_beauty;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Float f10;
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f20990a = arguments.getInt("type");
        boolean z10 = arguments.getBoolean("isTrtc", false);
        this.f20991b = z10;
        if (z10) {
            this.f20990a = 1005;
        }
        this.f20994e = BeautyItemCacheManager.getLast(this.f20990a);
        this.f20992c.addAll(this.f20993d.getBeautyItems());
        ArrayMap<String, Float> lastBeautyValue = this.f20994e.getLastBeautyValue();
        if (!lastBeautyValue.isEmpty()) {
            for (int i9 = 0; i9 < this.f20992c.size(); i9++) {
                BeautyItem beautyItem = this.f20992c.get(i9);
                if (lastBeautyValue.containsKey(beautyItem.getEffectKey()) && (f10 = lastBeautyValue.get(beautyItem.getEffectKey())) != null) {
                    beautyItem.setCurrentValue(f10.floatValue());
                }
            }
        }
        W1(0);
        FontUtils.setFont(this.tvFilterLevel, 1);
        this.content.setLayoutManager(new GridLayoutManager(getContext(), 5, 1, false));
        this.content.setAdapter(new a());
        this.filterSeekbar.setOnSeekBarChangeListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }
}
