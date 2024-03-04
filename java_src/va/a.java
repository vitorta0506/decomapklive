package va;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.bean.CountryCacheData;
import com.guochao.faceshow.bean.CountryData;
import java.util.List;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: va.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0669a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<CountryData>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f59072a;

        C0669a(c cVar) {
            this.f59072a = cVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<CountryData>> aVar) {
            if (this.f59072a == null || CountryCacheData.countryDataList.size() != 0) {
                return;
            }
            this.f59072a.onResponse(null);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<CountryData> list, @NonNull FaceCastBaseResponse<List<CountryData>> faceCastBaseResponse) {
            if (CountryCacheData.countryDataList.size() == 0) {
                this.f59072a.onResponse(list);
            }
            if (list != null) {
                CountryCacheData.countryDataList.clear();
                CountryCacheData.countryDataList.addAll(list);
            }
        }
    }

    /* loaded from: classes4.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<CountryData> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ d f59073a;

        b(d dVar) {
            this.f59073a = dVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<CountryData> aVar) {
            d dVar = this.f59073a;
            if (dVar != null) {
                dVar.onResponse(null);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable CountryData countryData, @NonNull FaceCastBaseResponse<CountryData> faceCastBaseResponse) {
            d dVar = this.f59073a;
            if (dVar != null) {
                dVar.onResponse(countryData);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void onResponse(@Nullable List<CountryData> list);
    }

    /* loaded from: classes4.dex */
    public interface d {
        void onResponse(@Nullable CountryData countryData);
    }

    public static void a(Context context, c cVar) {
        if (CountryCacheData.countryDataList.size() > 0) {
            cVar.onResponse(CountryCacheData.countryDataList);
        }
        new PostRequest("api/countrynamemultilingual/list").O(context).M(new C0669a(cVar));
    }

    public static void b(Context context, d dVar) {
        new PostRequest("api/Country/getCountryMsg").O(context).M(new b(dVar));
    }
}
