package com.guochao.faceshow.aaspring.modulars.live.area;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.CountryStateBean;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaDialog;
import com.guochao.faceshow.aaspring.modulars.live.area.LiveDiscoveryHeader;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.PushUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class LiveDiscoveryHeader extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private final View f18293a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<LifecycleOwner> f18294b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<LiveRoomPageData.LiveCountry> f18295c;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<LiveRoomPageData.LiveCountry> f18296d;

    /* renamed from: e  reason: collision with root package name */
    private CountryStateBean.Country f18297e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.Adapter<com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            LiveRoomPageData.LiveCountry liveCountry = (LiveRoomPageData.LiveCountry) LiveDiscoveryHeader.this.f18295c.get(intValue);
            LiveDiscoveryHeader.this.f18297e = CountryStateBean.Country.obtain(liveCountry);
            notifyDataSetChanged();
            Bundle bundle = new Bundle();
            bundle.putString(UserDataStore.COUNTRY, liveCountry.getCountryName());
            EventTrackingUtils.getInstance().track(EventTrackingUtils.DISCOVERY_COUNTRY, bundle);
            if (LiveDiscoveryHeader.this.f18294b.get() instanceof LiveListFragment) {
                ((LiveListFragment) LiveDiscoveryHeader.this.f18294b.get()).setMCurrentCountry((LiveRoomPageData.LiveCountry) LiveDiscoveryHeader.this.f18295c.get(intValue));
                ((LiveListFragment) LiveDiscoveryHeader.this.f18294b.get()).reload();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LiveDiscoveryHeader.this.f18295c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder baseViewHolder, int i9) {
            baseViewHolder.itemView.setTag(Integer.valueOf(i9));
            ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.country_flag);
            ((ViewGroup) imageView.getParent()).setSelected(Objects.equals(((LiveRoomPageData.LiveCountry) LiveDiscoveryHeader.this.f18295c.get(i9)).getCountryId(), LiveDiscoveryHeader.this.f18297e == null ? "" : String.valueOf(LiveDiscoveryHeader.this.f18297e.countryId)));
            TextView textView = (TextView) baseViewHolder.itemView.findViewById(R.id.country_name);
            if (PushUtils.CHAT_PUSH_TYPE.equals(((LiveRoomPageData.LiveCountry) LiveDiscoveryHeader.this.f18295c.get(i9)).getCountryId())) {
                imageView.setImageResource(R.mipmap.icon_discovery_earth);
                textView.setText(R.string.worldhot);
                return;
            }
            hc.a.r(imageView, ((LiveRoomPageData.LiveCountry) LiveDiscoveryHeader.this.f18295c.get(i9)).getCountryLogo(), R.mipmap.icon_discovery_earth, 3);
            textView.setText(((LiveRoomPageData.LiveCountry) LiveDiscoveryHeader.this.f18295c.get(i9)).getCountryName());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder baseViewHolder = new com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_live_discovery, viewGroup, false));
            baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LiveDiscoveryHeader.a.this.b(view);
                }
            });
            return baseViewHolder;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements LiveAreaDialog.OnDismissListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DisTouchRecyclerView f18299a;

        b(DisTouchRecyclerView disTouchRecyclerView) {
            this.f18299a = disTouchRecyclerView;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaDialog.OnDismissListener
        public void dismissWithItem(@NonNull CountryStateBean.Country country) {
            LiveDiscoveryHeader.this.f18297e = country;
            this.f18299a.getAdapter().notifyDataSetChanged();
            if (LiveDiscoveryHeader.this.f18294b.get() instanceof LiveListFragment) {
                ((LiveListFragment) LiveDiscoveryHeader.this.f18294b.get()).setCurrentCountry(LiveRoomPageData.LiveCountry.obtain(country));
                ((LiveListFragment) LiveDiscoveryHeader.this.f18294b.get()).reload();
            }
        }
    }

    public LiveDiscoveryHeader(WeakReference<LifecycleOwner> weakReference, View view) {
        super(view);
        this.f18295c = new ArrayList<>();
        this.f18296d = new ArrayList<>();
        this.f18293a = view;
        this.f18294b = weakReference;
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(DisTouchRecyclerView disTouchRecyclerView, View view) {
        if (view.getContext() instanceof GCCoreActivity) {
            LiveAreaDialog.showDialog(((GCCoreActivity) view.getContext()).getSupportFragmentManager(), this.f18297e).setOnDismissListener(new b(disTouchRecyclerView));
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.DISCOVERY_MORE);
    }

    private void j() {
        RecyclerView.Adapter adapter;
        View view = this.f18293a;
        if (view == null || !(view.findViewById(R.id.discovery_content) instanceof RecyclerView) || (adapter = ((RecyclerView) this.f18293a.findViewById(R.id.discovery_content)).getAdapter()) == null) {
            return;
        }
        adapter.notifyDataSetChanged();
    }

    public View h() {
        LiveRoomPageData.LiveCountry mCurrentCountry;
        this.f18293a.setVisibility(0);
        if ((this.f18294b.get() instanceof LiveListFragment) && (mCurrentCountry = ((LiveListFragment) this.f18294b.get()).getMCurrentCountry()) != null) {
            this.f18297e = CountryStateBean.Country.obtain(mCurrentCountry);
        }
        final DisTouchRecyclerView disTouchRecyclerView = (DisTouchRecyclerView) this.f18293a.findViewById(R.id.discovery_content);
        disTouchRecyclerView.setLayoutManager(new GridLayoutManager(this.f18293a.getContext(), 5, 1, false));
        disTouchRecyclerView.setAdapter(new a());
        this.f18293a.findViewById(R.id.discovery_more).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveDiscoveryHeader.this.i(disTouchRecyclerView, view);
            }
        });
        return this.f18293a;
    }

    public void k(List<LiveRoomPageData.LiveCountry> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f18296d.clear();
        for (LiveRoomPageData.LiveCountry liveCountry : list) {
            if (!PushUtils.CHAT_PUSH_TYPE.equals(liveCountry.getCountryId())) {
                this.f18296d.add(liveCountry);
            }
        }
        LiveRoomPageData.LiveCountry liveCountry2 = new LiveRoomPageData.LiveCountry();
        liveCountry2.setCountryId(PushUtils.CHAT_PUSH_TYPE);
        this.f18296d.add(0, liveCountry2);
        this.f18295c.clear();
        this.f18295c.addAll(this.f18296d.size() > 5 ? this.f18296d.subList(0, 5) : this.f18296d);
        j();
    }
}
