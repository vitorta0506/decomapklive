package com.guochao.faceshow.aaspring.views;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.views.loopView.LoopView;
import java.util.List;
/* loaded from: classes3.dex */
public class SelectRecordTypeFragmentDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private String f24006a;

    /* renamed from: b  reason: collision with root package name */
    private int f24007b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f24008c;

    /* renamed from: d  reason: collision with root package name */
    private c f24009d;
    @BindView
    LoopView loopView;
    @BindView
    TextView mCancel;
    @BindView
    TextView mConfirm;

    /* loaded from: classes3.dex */
    class a implements na.a {
        a() {
        }

        @Override // na.a
        public void a(LoopView loopView, int i9, int i10, int i11, int i12) {
        }

        @Override // na.a
        public void b(LoopView loopView, int i9, int i10, int i11) {
            LogUtils.e("loopView", i10 + "");
            SelectRecordTypeFragmentDialog.this.mConfirm.setEnabled(false);
        }
    }

    /* loaded from: classes3.dex */
    class b implements na.b {
        b() {
        }

        @Override // na.b
        public void a(int i9) {
            SelectRecordTypeFragmentDialog.this.mConfirm.setEnabled(true);
            LogUtils.e("loopView", i9 + "ItemSelected");
            SelectRecordTypeFragmentDialog selectRecordTypeFragmentDialog = SelectRecordTypeFragmentDialog.this;
            selectRecordTypeFragmentDialog.f24006a = (String) selectRecordTypeFragmentDialog.f24008c.get(i9);
            SelectRecordTypeFragmentDialog.this.f24007b = i9;
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(Dialog dialog, String str, int i9);

        void b(Dialog dialog);
    }

    public static SelectRecordTypeFragmentDialog S1(List<String> list, String str) {
        SelectRecordTypeFragmentDialog selectRecordTypeFragmentDialog = new SelectRecordTypeFragmentDialog();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        selectRecordTypeFragmentDialog.setArguments(bundle);
        MemoryCache.getInstance().put("mTypeList", list);
        return selectRecordTypeFragmentDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_select_record_type;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getArguments() != null) {
            this.f24006a = getArguments().getString("type");
        }
        List<String> list = (List) MemoryCache.getInstance().remove("mTypeList");
        this.f24008c = list;
        this.loopView.setItems(list);
        this.loopView.setItemsVisibleCount(4);
        this.loopView.setTextSize(16.0f);
        this.loopView.setInitPosition(this.f24008c.indexOf(this.f24006a));
        this.loopView.setOnItemScrollListener(new a());
        this.loopView.setListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @OnClick
    public void onClick(View view) {
        c cVar;
        int id2 = view.getId();
        if (id2 != R.id.common_dialog_cancel) {
            if (id2 == R.id.common_dialog_submit && (cVar = this.f24009d) != null) {
                cVar.a(getDialog(), this.f24006a, this.f24007b);
                return;
            }
            return;
        }
        c cVar2 = this.f24009d;
        if (cVar2 != null) {
            cVar2.b(getDialog());
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog_FullScreen);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        createBottomDialog.setCanceledOnTouchOutside(true);
        return createBottomDialog;
    }

    public void setOnSelectItemListener(c cVar) {
        this.f24009d = cVar;
    }
}
