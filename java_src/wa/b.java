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
import com.guochao.faceshow.bean.CountryData;
import java.util.List;
/* loaded from: classes4.dex */
public class b extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<CountryData> f59398a;

    /* renamed from: b  reason: collision with root package name */
    private Context f59399b;

    /* renamed from: c  reason: collision with root package name */
    private CountryData f59400c;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CountryData f59401a;

        a(CountryData countryData) {
            this.f59401a = countryData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.f59400c = this.f59401a;
            b.this.notifyDataSetChanged();
        }
    }

    /* renamed from: wa.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0677b {

        /* renamed from: a  reason: collision with root package name */
        TextView f59403a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f59404b;

        /* renamed from: c  reason: collision with root package name */
        ImageView f59405c;

        /* renamed from: d  reason: collision with root package name */
        RelativeLayout f59406d;

        C0677b() {
        }
    }

    public b(Context context, List<CountryData> list, CountryData countryData) {
        this.f59399b = context;
        this.f59400c = countryData;
        this.f59398a = list;
    }

    public CountryData b() {
        return this.f59400c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f59398a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i9) {
        return this.f59398a.get(i9);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i9) {
        return i9;
    }

    @Override // android.widget.Adapter
    public View getView(int i9, View view, ViewGroup viewGroup) {
        View view2;
        C0677b c0677b;
        if (view == null) {
            c0677b = new C0677b();
            view2 = LayoutInflater.from(this.f59399b).inflate(R.layout.country_list_item, (ViewGroup) null);
            c0677b.f59403a = (TextView) view2.findViewById(R.id.tvName);
            c0677b.f59404b = (ImageView) view2.findViewById(R.id.ivImg);
            c0677b.f59405c = (ImageView) view2.findViewById(R.id.ivRight);
            c0677b.f59406d = (RelativeLayout) view2.findViewById(R.id.rlItemLayout);
            c0677b.f59403a.setTag(this.f59398a.get(i9));
            view2.setTag(c0677b);
        } else {
            view2 = view;
            c0677b = (C0677b) view.getTag();
        }
        CountryData countryData = this.f59398a.get(i9);
        TextView textView = c0677b.f59403a;
        textView.setText("" + countryData.getContent());
        hc.a.j(c0677b.f59404b, countryData.getLogo());
        c0677b.f59405c.setVisibility((this.f59400c == null || countryData.getCountryId() != this.f59400c.getCountryId()) ? 8 : 0);
        c0677b.f59406d.setOnClickListener(new a(countryData));
        return view2;
    }
}
