package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.Comment;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.utils.TCConstants;
/* loaded from: classes3.dex */
public class SingleVideoPlayFragment extends BaseShortVideoFragment {
    int L;
    int M;
    private String N;
    private Comment O;
    private boolean P;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements GCRequestJava.d<VideoItem> {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.main.fragment.SingleVideoPlayFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0203a implements Runnable {
            RunnableC0203a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SingleVideoPlayFragment singleVideoPlayFragment = SingleVideoPlayFragment.this;
                singleVideoPlayFragment.H2(singleVideoPlayFragment.N);
                SingleVideoPlayFragment singleVideoPlayFragment2 = SingleVideoPlayFragment.this;
                singleVideoPlayFragment2.K2(singleVideoPlayFragment2.O, SingleVideoPlayFragment.this.P);
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<VideoItem> response) {
            SingleVideoPlayFragment.this.addData(response.getData());
            SingleVideoPlayFragment.this.notifyDataLoaded();
            SingleVideoPlayFragment.this.getRecyclerView().post(new RunnableC0203a());
        }
    }

    public static SingleVideoPlayFragment U2(int i9, int i10, String str, Comment comment, boolean z10) {
        SingleVideoPlayFragment singleVideoPlayFragment = new SingleVideoPlayFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("videoId", i10);
        bundle.putInt("type", i9);
        bundle.putString("commentId", str);
        bundle.putBoolean("withComment", z10);
        MemoryCache.getInstance().put(comment);
        singleVideoPlayFragment.setArguments(bundle);
        return singleVideoPlayFragment;
    }

    private void V2() {
        new GCRequestJava("api/token/social/video/getVideoDetail").putBody("is_private", this.M == 1 ? "0" : "1").putBody(TCConstants.PLAYER_VIDEO_ID, Integer.valueOf(this.L)).j(new a()).request();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().d(false).c(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        super.loadData(i9);
        V2();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.L = getArguments().getInt("videoId");
            this.M = getArguments().getInt("type");
            this.N = getArguments().getString("commentId");
            this.O = (Comment) MemoryCache.getInstance().clear(Comment.class);
            this.P = getArguments().getBoolean("withComment");
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment, com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
    public void onDelete() {
        super.onDelete();
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment
    public boolean x2() {
        return this.M != 1;
    }
}
