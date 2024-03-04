package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.utils.MediaFileFinder;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.activity.TCVideoRecordActivity;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class SelectUploadVideoFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    List<LocalImageOrVideoBean> f20509a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    int f20510b = -1;

    /* renamed from: c  reason: collision with root package name */
    boolean f20511c = true;

    /* renamed from: d  reason: collision with root package name */
    d f20512d;

    /* renamed from: e  reason: collision with root package name */
    private int f20513e;
    @BindView
    RecyclerView mRecyclerView;

    /* loaded from: classes3.dex */
    class a implements d {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.fragment.SelectUploadVideoFragment.d
        public /* synthetic */ void A(SelectUploadVideoFragment selectUploadVideoFragment) {
            com.guochao.faceshow.aaspring.modulars.login.fragment.d.a(this, selectUploadVideoFragment);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.fragment.SelectUploadVideoFragment.d
        public /* synthetic */ void P0(LocalImageOrVideoBean localImageOrVideoBean, int i9, SelectUploadVideoFragment selectUploadVideoFragment) {
            com.guochao.faceshow.aaspring.modulars.login.fragment.d.b(this, localImageOrVideoBean, i9, selectUploadVideoFragment);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.fragment.SelectUploadVideoFragment.d
        public /* synthetic */ boolean U() {
            return com.guochao.faceshow.aaspring.modulars.login.fragment.d.c(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Observer<List<LocalImageOrVideoBean>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends RecyclerView.Adapter<BaseViewHolder> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.guochao.faceshow.aaspring.modulars.login.fragment.SelectUploadVideoFragment$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public class View$OnClickListenerC0197a implements View.OnClickListener {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ int f20517a;

                View$OnClickListenerC0197a(int i9) {
                    this.f20517a = i9;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    int i9 = this.f20517a;
                    SelectUploadVideoFragment selectUploadVideoFragment = SelectUploadVideoFragment.this;
                    if (selectUploadVideoFragment.f20511c) {
                        if (i9 == 0) {
                            selectUploadVideoFragment.f20512d.A(selectUploadVideoFragment);
                            SelectUploadVideoFragment.this.startActivity(new Intent(SelectUploadVideoFragment.this.getActivity(), TCVideoRecordActivity.class).putExtra("from", SelectUploadVideoFragment.this.f20513e));
                            return;
                        }
                        i9--;
                    }
                    if (BaseConfig.isChinese()) {
                        long duration = SelectUploadVideoFragment.this.f20509a.get(i9).getDuration();
                        if (duration < 3000 || duration > 16000) {
                            SelectUploadVideoFragment.this.showToast(R.string.video_upload_self_video_sub_toast);
                            return;
                        }
                    }
                    SelectUploadVideoFragment selectUploadVideoFragment2 = SelectUploadVideoFragment.this;
                    selectUploadVideoFragment2.f20510b = this.f20517a;
                    selectUploadVideoFragment2.f20512d.P0(selectUploadVideoFragment2.f20509a.get(i9), i9, SelectUploadVideoFragment.this);
                    a.this.notifyDataSetChanged();
                }
            }

            a() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                SelectUploadVideoFragment selectUploadVideoFragment = SelectUploadVideoFragment.this;
                if (selectUploadVideoFragment.f20511c) {
                    return selectUploadVideoFragment.f20509a.size() + 1;
                }
                return selectUploadVideoFragment.f20509a.size();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i9) {
                if (SelectUploadVideoFragment.this.f20511c && i9 == 0) {
                    return 1;
                }
                return super.getItemViewType(i9);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(@NonNull @NotNull BaseViewHolder baseViewHolder, int i9) {
                int i10;
                baseViewHolder.itemView.setOnClickListener(new View$OnClickListenerC0197a(i9));
                if (!SelectUploadVideoFragment.this.f20511c) {
                    i10 = i9;
                } else if (i9 == 0) {
                    return;
                } else {
                    i10 = i9 - 1;
                }
                ImageView imageView = (ImageView) baseViewHolder.getView(R.id.img);
                ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.check);
                TextView textView = (TextView) baseViewHolder.getView(R.id.seconds);
                imageView2.setVisibility(SelectUploadVideoFragment.this.f20510b == i9 ? 0 : 8);
                hc.a.g(imageView, SelectUploadVideoFragment.this.f20509a.get(i10).getDisplayUri());
                textView.setText(StringUtils.formatTime(SelectUploadVideoFragment.this.f20509a.get(i10).getDuration()));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            @NonNull
            public BaseViewHolder onCreateViewHolder(@NonNull @NotNull ViewGroup viewGroup, int i9) {
                if (i9 == 1) {
                    return new BaseViewHolder(SelectUploadVideoFragment.this.getLayoutInflater().inflate(R.layout.grid_item_record, viewGroup, false));
                }
                return new BaseViewHolder(SelectUploadVideoFragment.this.getLayoutInflater().inflate(R.layout.grid_item_select_upload_video, viewGroup, false));
            }
        }

        b() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<LocalImageOrVideoBean> list) {
            SelectUploadVideoFragment.this.mRecyclerView.setAdapter(new a());
        }
    }

    /* loaded from: classes3.dex */
    class c implements aa.b<LocalImageOrVideoBean> {
        c() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(LocalImageOrVideoBean localImageOrVideoBean) {
            return localImageOrVideoBean.getFileType() == 2;
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void A(SelectUploadVideoFragment selectUploadVideoFragment);

        void P0(LocalImageOrVideoBean localImageOrVideoBean, int i9, SelectUploadVideoFragment selectUploadVideoFragment);

        boolean U();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_select_upload_video;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f20513e = arguments.getInt("from");
        }
        MediaFileFinder.getInstance().observeAllMedia(this, new b(), new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull @NotNull Context context) {
        super.onAttach(context);
        if (getParentFragment() instanceof d) {
            this.f20512d = (d) getParentFragment();
        } else if (getActivity() instanceof d) {
            this.f20512d = (d) getActivity();
        } else {
            this.f20512d = new a();
        }
        this.f20511c = this.f20512d.U();
    }
}
