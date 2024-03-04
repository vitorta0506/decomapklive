package com.guochao.faceshow.aaspring.modulars.live.area;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.CountryStateBean;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LiveAreaMoreActivity$setContentLay$1 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ List<CountryStateBean.Country> $contentData;
    final /* synthetic */ String $name;
    final /* synthetic */ LiveAreaMoreActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public LiveAreaMoreActivity$setContentLay$1(List<? extends CountryStateBean.Country> list, LiveAreaMoreActivity liveAreaMoreActivity, String str) {
        this.$contentData = list;
        this.this$0 = liveAreaMoreActivity;
        this.$name = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-2  reason: not valid java name */
    public static final void m460onCreateViewHolder$lambda2(List list, LiveAreaMoreActivity this$0, String name, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(name, "$name");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        final CountryStateBean.Country country = (CountryStateBean.Country) list.get(((Integer) tag).intValue());
        ArrayList arrayList = new ArrayList();
        int i9 = 1;
        if (this$0.getDataList() != null) {
            LiveRoomPageData.LiveCountry liveCountry = new LiveRoomPageData.LiveCountry();
            liveCountry.setCountryId(String.valueOf(country.countryId));
            liveCountry.setCountryName(country.countryName);
            arrayList.add(0, liveCountry);
            ArrayList<LiveRoomPageData.LiveCountry> dataList = this$0.getDataList();
            Intrinsics.checkNotNull(dataList);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : dataList) {
                if (((LiveRoomPageData.LiveCountry) obj).getIsMoreTen() == 1) {
                    arrayList2.add(obj);
                }
            }
            arrayList.addAll(arrayList2);
        }
        int i10 = country.countryId;
        int size = arrayList.size();
        while (true) {
            if (i9 >= size) {
                break;
            } else if (((LiveRoomPageData.LiveCountry) arrayList.get(i9)).getCountryId().equals(String.valueOf(i10))) {
                arrayList.remove(i9);
                break;
            } else {
                i9++;
            }
        }
        CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.k
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                int m461onCreateViewHolder$lambda2$lambda1;
                m461onCreateViewHolder$lambda2$lambda1 = LiveAreaMoreActivity$setContentLay$1.m461onCreateViewHolder$lambda2$lambda1(CountryStateBean.Country.this, (LiveRoomPageData.LiveCountry) obj2, (LiveRoomPageData.LiveCountry) obj3);
                return m461onCreateViewHolder$lambda2$lambda1;
            }
        });
        LiveAreaActivity.start(this$0.getActivity(), arrayList);
        Bundle bundle = new Bundle();
        bundle.putString(UserDataStore.COUNTRY, country.countryName);
        bundle.putString("asia", name);
        EventTrackingUtils.getInstance().track(EventTrackingUtils.COUNTRY_ASIA_CLICK, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-2$lambda-1  reason: not valid java name */
    public static final int m461onCreateViewHolder$lambda2$lambda1(CountryStateBean.Country country, LiveRoomPageData.LiveCountry liveCountry, LiveRoomPageData.LiveCountry liveCountry2) {
        Intrinsics.checkNotNullParameter(country, "$country");
        return liveCountry.getCountryName().equals(country.countryName) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.$contentData.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        CountryStateBean.Country country = this.$contentData.get(i9);
        ((TextView) holder.itemView.findViewById(R.id.country_name)).setText(country.countryName);
        if (country.isHot == 1) {
            holder.getView(R.id.hot_tag).setVisibility(0);
        } else {
            holder.getView(R.id.hot_tag).setVisibility(8);
        }
        holder.itemView.setTag(Integer.valueOf(i9));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_country_live, parent, false));
        View view = baseViewHolder.itemView;
        final List<CountryStateBean.Country> list = this.$contentData;
        final LiveAreaMoreActivity liveAreaMoreActivity = this.this$0;
        final String str = this.$name;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LiveAreaMoreActivity$setContentLay$1.m460onCreateViewHolder$lambda2(list, liveAreaMoreActivity, str, view2);
            }
        });
        return baseViewHolder;
    }
}
