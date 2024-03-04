package com.guochao.faceshow.utils;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.More;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import java.util.ArrayList;
import java.util.List;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class ShareVideoHelper {
    private View mContentView;
    RecyclerView mRecyclerView;
    private ShareContentBean mShareContentBean;
    private final List<SharePlatformBean> mSharePlatformBeans = new ArrayList();

    /* loaded from: classes4.dex */
    private class MyAdapter extends RecyclerView.Adapter<ZZ_RecycleAdapter.ViewHolder> {
        private MyAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startShareMore() {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setFlags(3);
            intent.setType("text/*");
            intent.putExtra("android.intent.extra.TITLE", eb.b.y());
            intent.putExtra("android.intent.extra.TEXT", ShareVideoHelper.this.mShareContentBean.getContent() + IOUtils.LINE_SEPARATOR_UNIX + ShareVideoHelper.this.mShareContentBean.getShortUrl());
            ShareVideoHelper.this.mContentView.getContext().startActivity(Intent.createChooser(intent, ""));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ShareVideoHelper.this.mSharePlatformBeans.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(ZZ_RecycleAdapter.ViewHolder viewHolder, final int i9) {
            ImageView imageView = (ImageView) viewHolder.itemView;
            imageView.setImageResource(((SharePlatformBean) ShareVideoHelper.this.mSharePlatformBeans.get(i9)).getIcon());
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.utils.ShareVideoHelper.MyAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (More.NAME.equals(((SharePlatformBean) ShareVideoHelper.this.mSharePlatformBeans.get(i9)).getSharePlatformName())) {
                        MyAdapter.this.startShareMore();
                    } else {
                        v9.c.g((Activity) ShareVideoHelper.this.mContentView.getContext(), ((SharePlatformBean) ShareVideoHelper.this.mSharePlatformBeans.get(i9)).getSharePlatformName(), ShareVideoHelper.this.mShareContentBean.getTitle(), ShareVideoHelper.this.mShareContentBean.getContent(), ShareVideoHelper.this.mShareContentBean.getImgUrl(), ShareVideoHelper.this.mShareContentBean.getShortUrl(), 0, null);
                    }
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public ZZ_RecycleAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
            return new ZZ_RecycleAdapter.ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_share_platform, viewGroup, false));
        }
    }

    public ShareVideoHelper(View view) {
        this.mContentView = view;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recycler_view);
        this.mRecyclerView = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        this.mRecyclerView.setAdapter(new MyAdapter());
    }

    public void setPlatformList(List<SharePlatformBean> list) {
        this.mSharePlatformBeans.clear();
        this.mSharePlatformBeans.addAll(list);
        this.mRecyclerView.getAdapter().notifyDataSetChanged();
    }

    public void setShareContentBean(ShareContentBean shareContentBean) {
        this.mShareContentBean = shareContentBean;
    }
}
