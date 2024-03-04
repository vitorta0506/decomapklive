package wa;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.mine.model.BankBean;
import java.util.List;
/* loaded from: classes4.dex */
public class a extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<BankBean> f59393a;

    /* renamed from: b  reason: collision with root package name */
    private Context f59394b;

    /* renamed from: wa.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0676a {

        /* renamed from: a  reason: collision with root package name */
        ImageView f59395a;

        /* renamed from: b  reason: collision with root package name */
        TextView f59396b;

        /* renamed from: c  reason: collision with root package name */
        RelativeLayout f59397c;

        C0676a() {
        }
    }

    public a(Context context, List<BankBean> list) {
        this.f59394b = context;
        this.f59393a = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f59393a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i9) {
        return this.f59393a.get(i9);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i9) {
        return i9;
    }

    @Override // android.widget.Adapter
    public View getView(int i9, View view, ViewGroup viewGroup) {
        View view2;
        C0676a c0676a;
        if (view == null) {
            c0676a = new C0676a();
            view2 = LayoutInflater.from(this.f59394b).inflate(R.layout.bank_list_item, (ViewGroup) null);
            c0676a.f59395a = (ImageView) view2.findViewById(R.id.ivBankImg);
            c0676a.f59396b = (TextView) view2.findViewById(R.id.tvBankName);
            c0676a.f59397c = (RelativeLayout) view2.findViewById(R.id.rlItemLayout);
            view2.setTag(c0676a);
        } else {
            view2 = view;
            c0676a = (C0676a) view.getTag();
        }
        BankBean bankBean = this.f59393a.get(i9);
        hc.a.h(c0676a.f59395a, bankBean.getLogo(), R.mipmap.default_head);
        c0676a.f59396b.setText(bankBean.getBank_name());
        return view2;
    }
}
