package com.guochao.faceshow.aaspring.modulars.ugc.publish;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.aaspring.beans.DynamicFile;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.beans.MediaLocalData;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DynamicFullscreenImageActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.SimpleMediaActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.ItemPublishImage;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class PublishImageSelector {

    /* renamed from: a  reason: collision with root package name */
    private Context f22909a;

    /* renamed from: e  reason: collision with root package name */
    private boolean f22913e;

    /* renamed from: f  reason: collision with root package name */
    private ItemTouchHelper f22914f;

    /* renamed from: i  reason: collision with root package name */
    private c f22917i;
    @BindView
    RecyclerView rvContent;

    /* renamed from: b  reason: collision with root package name */
    private int f22910b = 3;

    /* renamed from: c  reason: collision with root package name */
    private List<MediaLocalData> f22911c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private int f22912d = 9;

    /* renamed from: g  reason: collision with root package name */
    private ItemTouchHelper.Callback f22915g = new a();

    /* renamed from: h  reason: collision with root package name */
    private RecyclerView.Adapter f22916h = new b();

    /* loaded from: classes3.dex */
    class a extends ItemTouchHelper.Callback {
        a() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition >= 0 && adapterPosition < PublishImageSelector.this.f22911c.size()) {
                if (((MediaLocalData) PublishImageSelector.this.f22911c.get(adapterPosition)).getMediaType() >= 104) {
                    return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
                }
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                return ItemTouchHelper.Callback.makeMovementFlags(((layoutManager instanceof GridLayoutManager) || (layoutManager instanceof StaggeredGridLayoutManager)) ? 15 : 3, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
            int adapterPosition = viewHolder.getAdapterPosition();
            int adapterPosition2 = viewHolder2.getAdapterPosition();
            if (((MediaLocalData) PublishImageSelector.this.f22911c.get(adapterPosition)).getMediaType() != ((MediaLocalData) PublishImageSelector.this.f22911c.get(adapterPosition2)).getMediaType()) {
                return false;
            }
            if (adapterPosition < adapterPosition2) {
                int i9 = adapterPosition;
                while (i9 < adapterPosition2) {
                    int i10 = i9 + 1;
                    Collections.swap(PublishImageSelector.this.f22911c, i9, i10);
                    i9 = i10;
                }
            } else {
                for (int i11 = adapterPosition; i11 > adapterPosition2; i11--) {
                    Collections.swap(PublishImageSelector.this.f22911c, i11, i11 - 1);
                }
            }
            PublishImageSelector.this.f22916h.notifyItemMoved(adapterPosition, adapterPosition2);
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            LogUtils.i("zune", "onSwiped");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.Adapter {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements ItemPublishImage.c {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.ugc.publish.PublishImageSelector$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0225a extends SimpleObserver<te.a> {
                C0225a() {
                }

                @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                public void onNext(te.a aVar) {
                    if (aVar.f58133b) {
                        b.this.notifyDataSetChanged();
                        ArrayList arrayList = new ArrayList();
                        PublishImageSelector.this.m(arrayList);
                        SimpleMediaActivity.g0((Activity) PublishImageSelector.this.f22909a, arrayList, 211);
                    }
                }
            }

            a() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.ItemPublishImage.c
            public void a(MediaLocalData mediaLocalData) {
                PublishImageSelector.this.f22913e = true;
                b.this.notifyDataSetChanged();
            }

            @Override // com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.ItemPublishImage.c
            public void b(MediaLocalData mediaLocalData) {
                int i9 = -1;
                for (int i10 = 0; i10 < PublishImageSelector.this.f22911c.size(); i10++) {
                    if (((MediaLocalData) PublishImageSelector.this.f22911c.get(i10)).getId() == mediaLocalData.getId() && ((MediaLocalData) PublishImageSelector.this.f22911c.get(i10)).getMediaType() < 104) {
                        i9 = i10;
                    }
                }
                if (i9 >= 0) {
                    PublishImageSelector.this.f22911c.remove(i9);
                }
                if (PublishImageSelector.this.f22911c.size() == PublishImageSelector.this.f22912d - 1 && ((MediaLocalData) PublishImageSelector.this.f22911c.get((PublishImageSelector.this.f22912d - 1) - 1)).getMediaType() <= 102) {
                    MediaLocalData mediaLocalData2 = new MediaLocalData();
                    mediaLocalData2.setMediaType(106);
                    PublishImageSelector.this.f22911c.add(mediaLocalData2);
                }
                b.this.notifyDataSetChanged();
                if (PublishImageSelector.this.f22917i != null) {
                    PublishImageSelector.this.f22917i.a();
                }
            }

            @Override // com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.ItemPublishImage.c
            public void c(MediaLocalData mediaLocalData, View view, int i9) {
                Intent intent = new Intent(view.getContext(), DynamicFullscreenImageActivity.class);
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                for (int i10 = 0; i10 < PublishImageSelector.this.f22911c.size(); i10++) {
                    MediaLocalData mediaLocalData2 = (MediaLocalData) PublishImageSelector.this.f22911c.get(i10);
                    if (mediaLocalData2.getMediaType() == 101) {
                        DynamicFile dynamicFile = new DynamicFile();
                        dynamicFile.setFileSmallUrl(mediaLocalData2.getThumb());
                        dynamicFile.setFileUrl(mediaLocalData2.getThumb());
                        dynamicFile.setHeight(mediaLocalData2.getHeight());
                        dynamicFile.setWidth(mediaLocalData2.getWidth());
                        dynamicFile.setFileId("" + mediaLocalData2.getId());
                        arrayList.add(dynamicFile);
                    }
                }
                intent.putParcelableArrayListExtra("data", arrayList);
                intent.putExtra("position", i9);
                String str = "img" + mediaLocalData.getThumb();
                view.setTransitionName(str);
                intent.putExtra("transitionName", str);
                try {
                    ContextCompat.startActivity(view.getContext(), intent, ActivityOptionsCompat.makeSceneTransitionAnimation((Activity) view.getContext(), view, str).toBundle());
                } catch (IllegalArgumentException e10) {
                    e10.printStackTrace();
                    view.getContext().startActivity(intent);
                }
            }

            @Override // com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.ItemPublishImage.c
            public void d(MediaLocalData mediaLocalData) {
                new com.tbruyelle.rxpermissions2.a((FragmentActivity) PublishImageSelector.this.f22909a).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new C0225a());
            }
        }

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PublishImageSelector.this.f22911c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9) {
            if (viewHolder instanceof ItemPublishImage) {
                ((ItemPublishImage) viewHolder).e((MediaLocalData) PublishImageSelector.this.f22911c.get(i9), PublishImageSelector.this.f22913e);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
            ItemPublishImage itemPublishImage = new ItemPublishImage(viewGroup);
            itemPublishImage.setOnItemClickListener(new a());
            return itemPublishImage;
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a();
    }

    public PublishImageSelector(View view) {
        this.f22909a = view.getContext();
        ButterKnife.c(this, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(List<String> list) {
        for (int i9 = 0; i9 < this.f22911c.size(); i9++) {
            if (!TextUtils.isEmpty(this.f22911c.get(i9).getThumb())) {
                list.add(this.f22911c.get(i9).getThumb());
            }
        }
    }

    public List<MediaLocalData> i() {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < this.f22911c.size(); i9++) {
            if (!TextUtils.isEmpty(this.f22911c.get(i9).getThumb())) {
                arrayList.add(this.f22911c.get(i9));
            }
        }
        return arrayList;
    }

    public void j(@Nullable Bundle bundle) {
        if (bundle != null) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("save_data");
            if (parcelableArrayList != null) {
                this.f22911c.addAll(parcelableArrayList);
            } else {
                MediaLocalData mediaLocalData = new MediaLocalData();
                mediaLocalData.setMediaType(106);
                this.f22911c.add(mediaLocalData);
            }
        } else {
            MediaLocalData mediaLocalData2 = new MediaLocalData();
            mediaLocalData2.setMediaType(106);
            this.f22911c.add(mediaLocalData2);
        }
        this.rvContent.setLayoutManager(new GridLayoutManager(this.f22909a, this.f22910b, 1, false));
        this.rvContent.setAdapter(this.f22916h);
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(this.f22915g);
        this.f22914f = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.rvContent);
    }

    public void k(int i9, int i10, Intent intent) {
        boolean z10 = (i9 == 211 || i9 == 201) ? false : true;
        ArrayList arrayList = (ArrayList) MemoryCache.getInstance().remove(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
        if ((intent == null && arrayList == null) || z10) {
            return;
        }
        if (arrayList == null) {
            arrayList = intent.getParcelableArrayListExtra(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
        }
        if (arrayList == null) {
            return;
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            MediaLocalData mediaLocalData = new MediaLocalData();
            if (((LocalImageOrVideoBean) arrayList.get(i11)).getFileType() == 1) {
                mediaLocalData.setMediaType(101);
                mediaLocalData.setThumb(((LocalImageOrVideoBean) arrayList.get(i11)).getPath());
                mediaLocalData.setUri(((LocalImageOrVideoBean) arrayList.get(i11)).getDisplayUri());
            } else {
                mediaLocalData.setMediaType(102);
                mediaLocalData.setVideoPath(((LocalImageOrVideoBean) arrayList.get(i11)).getPath());
                mediaLocalData.setUri(((LocalImageOrVideoBean) arrayList.get(i11)).getDisplayUri());
            }
            if (this.f22911c.size() > this.f22912d) {
                return;
            }
            int size = this.f22911c.size() - 1;
            mediaLocalData.setId(size);
            this.f22911c.add(size, mediaLocalData);
            if (this.f22911c.size() > this.f22912d) {
                List<MediaLocalData> list = this.f22911c;
                list.remove(list.get(list.size() - 1));
            }
        }
        this.f22916h.notifyDataSetChanged();
    }

    public void l(Bundle bundle) {
        bundle.putParcelableArrayList("save_data", (ArrayList) this.f22911c);
    }

    public void n(c cVar) {
        this.f22917i = cVar;
    }
}
