package com.guochao.faceshow.aaspring.modulars.ugc.base;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.view.GestureDetectorCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.PublishUgcBean;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DynamicVideoListActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.ImageDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.viewholder.VideoDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.DynamicImageZoomHelper;
import com.guochao.faceshow.aaspring.utils.DynamicVideoPlayer;
import com.guochao.faceshow.aaspring.utils.OnItemTouchListenerImp;
import com.guochao.faceshow.aaspring.utils.VideoPlayer;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.AppContentFilter;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.Tool;
import com.guochao.faceshow.views.Love;
import com.guochao.faceshow.views.e;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public abstract class BaseDynamicListFragment extends BaseRecyclerViewFragment<DynamicBean, BaseDynamicViewHolder> implements aa.e, p7.f {
    public static final int DEFAULT_PAGE_SIZE = 20;
    private static final int REQUEST_PLAY_VIDEO = 500;
    private static final String TAG = "DynamicList";
    protected BaseDynamicViewHolder mCurrentDynamicHolder;
    protected VideoDynamicViewHolder mCurrentHolder;
    DynamicImageZoomHelper mDynamicImageZoomHelper;
    protected View mEmptyView;
    protected int mFriendId;
    LinearLayoutManager mLayoutManager;
    private Love mLove;
    RecyclerView.RecycledViewPool mRecycledViewPool;
    private int mLastPlayPosition = -1;
    RecyclerView.OnScrollListener mOnScrollListener = new a();
    private List<VideoPlayer> mVideoPlayers = new CopyOnWriteArrayList();

    /* loaded from: classes3.dex */
    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            if (i9 == 0) {
                BaseDynamicListFragment.this.findNextPlay(BaseDynamicListFragment.this.mLayoutManager.findFirstVisibleItemPosition(), BaseDynamicListFragment.this.mLayoutManager.findLastVisibleItemPosition());
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            View findChildViewUnder = BaseDynamicListFragment.this.getRecyclerView().findChildViewUnder(motionEvent.getX(), motionEvent.getY());
            if (findChildViewUnder == null) {
                return false;
            }
            RecyclerView.ViewHolder findContainingViewHolder = BaseDynamicListFragment.this.getRecyclerView().findContainingViewHolder(findChildViewUnder);
            if (findContainingViewHolder instanceof BaseDynamicViewHolder) {
                ((BaseDynamicViewHolder) findContainingViewHolder).q();
                if (BaseDynamicListFragment.this.mLove != null) {
                    BaseDynamicListFragment.this.mLove.a(MotionEvent.obtain(0L, 0L, 1, motionEvent.getRawX(), motionEvent.getRawY(), 0));
                }
                return super.onDoubleTap(motionEvent);
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ y7.e f22539a;

        c(y7.e eVar) {
            this.f22539a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseDynamicListFragment.this.getList() == null || BaseDynamicListFragment.this.getList().size() <= 0) {
                return;
            }
            for (int i9 = 0; i9 < BaseDynamicListFragment.this.getList().size(); i9++) {
                DynamicBean dynamicBean = BaseDynamicListFragment.this.getList().get(i9);
                if (this.f22539a.a().equalsIgnoreCase(dynamicBean.getUserId())) {
                    int userAttentStatus = dynamicBean.getUserAttentStatus();
                    if (this.f22539a.c()) {
                        if (userAttentStatus < 3) {
                            dynamicBean.setUserAttentStatus(userAttentStatus + 2);
                        }
                    } else if (userAttentStatus > 2) {
                        dynamicBean.setUserAttentStatus(userAttentStatus - 2);
                    }
                    if (BaseDynamicListFragment.this.getRecyclerView() != null && BaseDynamicListFragment.this.getRecyclerView().getAdapter() != null) {
                        BaseDynamicListFragment.this.getRecyclerView().getAdapter().notifyDataSetChanged();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseDynamicListFragment.this.reload();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseDynamicListFragment.this.findNextPlay(((LinearLayoutManager) BaseDynamicListFragment.this.getRecyclerView().getLayoutManager()).findFirstVisibleItemPosition(), BaseDynamicListFragment.this.getList().size());
        }
    }

    /* loaded from: classes3.dex */
    class f implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DynamicBean f22543a;

        f(DynamicBean dynamicBean) {
            this.f22543a = dynamicBean;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10 && DisableDoubleClickUtils.canClick(dialog.getWindow().getDecorView())) {
                dialog.dismiss();
                ba.a.r().w(PublishUgcBean.fromDynamic(this.f22543a));
                BaseDynamicListFragment.this.getList().addAll(0, BaseDynamicListFragment.this.resetList(false));
                BaseDynamicListFragment.this.notifyDataLoaded(true);
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements aa.b<PublishUgcBean> {
        g() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(PublishUgcBean publishUgcBean) {
            return publishUgcBean.getPublishStatus() == 3 || publishUgcBean.getPublishStatus() == 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findNextPlay(int i9, int i10) {
        if (!autoPlayVideos()) {
            stopCurrentPlay();
            return;
        }
        preLoadVideos(i9);
        VideoDynamicViewHolder videoDynamicViewHolder = null;
        if (i9 < 0) {
            stopCurrentPlay();
            return;
        }
        while (true) {
            if (i9 > i10) {
                break;
            }
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = getRecyclerView().findViewHolderForAdapterPosition(i9);
            if (findViewHolderForAdapterPosition instanceof VideoDynamicViewHolder) {
                VideoDynamicViewHolder videoDynamicViewHolder2 = (VideoDynamicViewHolder) findViewHolderForAdapterPosition;
                if (videoDynamicViewHolder2.b0(getActivity(), getRecyclerView())) {
                    videoDynamicViewHolder = videoDynamicViewHolder2;
                    break;
                }
            }
            i9++;
        }
        if (videoDynamicViewHolder == null) {
            stopCurrentPlay();
        } else if (this.mCurrentHolder != null && this.mLastPlayPosition == videoDynamicViewHolder.getAdapterPosition()) {
            if (videoDynamicViewHolder.c0()) {
                return;
            }
            videoDynamicViewHolder.d0();
            stopCurrentPlay();
            this.mCurrentHolder = videoDynamicViewHolder;
            this.mLastPlayPosition = videoDynamicViewHolder.getAdapterPosition();
        } else {
            stopCurrentPlay();
            videoDynamicViewHolder.d0();
            this.mCurrentHolder = videoDynamicViewHolder;
            this.mLastPlayPosition = videoDynamicViewHolder.getAdapterPosition();
        }
    }

    private void preLoadVideos(int i9) {
        if (i9 < 0) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        int i10 = 0;
        while (i9 < getList().size() && i10 < DynamicVideoPlayer.getAutoCacheCount()) {
            DynamicBean dynamicBean = getList().get(i9);
            if (dynamicBean.getItemViewType() == 2) {
                i10++;
                copyOnWriteArrayList.add(DynamicVideoPlayer.getInstance().cacheVideo(dynamicBean.getUrl()));
            }
            i9++;
        }
        for (int i11 = 0; i11 < this.mVideoPlayers.size(); i11++) {
            if (!copyOnWriteArrayList.contains(this.mVideoPlayers.get(i11))) {
                DynamicVideoPlayer.getInstance().stop(this.mVideoPlayers.get(i11).getVideoUrl());
            }
        }
        this.mVideoPlayers.clear();
        this.mVideoPlayers.addAll(copyOnWriteArrayList);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void addDatas(List<DynamicBean> list) {
        AppContentFilter.INSTANCE.filterList(list);
        super.addDatas(list);
    }

    public boolean autoPlayVideos() {
        return true;
    }

    protected List<DynamicBean> filter(List<DynamicBean> list) {
        AppContentFilter.INSTANCE.filterList(list);
        return list;
    }

    @Override // aa.e
    public RecyclerView.RecycledViewPool getImageRecyclerViewPool() {
        if (this.mRecycledViewPool == null) {
            this.mRecycledViewPool = new RecyclerView.RecycledViewPool();
        }
        return this.mRecycledViewPool;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public int getItemViewType(int i9) {
        return getList().get(i9).getItemViewType();
    }

    public void hideSoftKeyboard() {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method");
            if (getActivity().getCurrentFocus() == null || inputMethodManager == null) {
                return;
            }
            inputMethodManager.hideSoftInputFromWindow(getActivity().getCurrentFocus().getWindowToken(), 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        Love love = new Love(getContext());
        this.mLove = love;
        love.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        FragmentActivity activity = getActivity();
        if (activity instanceof BaseActivity) {
            ((ViewGroup) activity.getWindow().getDecorView()).addView(this.mLove);
        }
        this.mLayoutManager = (LinearLayoutManager) getRecyclerView().getLayoutManager();
        getRecyclerView().addOnScrollListener(this.mOnScrollListener);
        getRecyclerView().addOnItemTouchListener(new OnItemTouchListenerImp(new GestureDetectorCompat(getContext(), new b())));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void notifyDataLoaded(boolean z10) {
        super.notifyDataLoaded(z10);
        if (!z10) {
            showEmptyView();
        } else {
            View view = this.mEmptyView;
            if (view != null) {
                removeHeaderView(view);
            }
        }
        if (getRecyclerView() != null) {
            stopCurrentPlay();
            if (autoPlayVideos()) {
                getRecyclerView().post(new e());
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, Intent intent) {
        VideoDynamicViewHolder videoDynamicViewHolder;
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1 && i9 == 500 && (videoDynamicViewHolder = this.mCurrentHolder) != null) {
            videoDynamicViewHolder.d0();
        }
    }

    @Override // aa.e
    public void onAvatarClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
        UserHomePageAct.start((Activity) getActivity(), dynamicBean.getUserId(), 10);
    }

    @Override // aa.e
    public void onBlackStateChanged(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, boolean z10) {
        Iterator<DynamicBean> it = getList().iterator();
        while (it.hasNext()) {
            if (it.next().getUserId().equals(dynamicBean.getUserId())) {
                it.remove();
            }
        }
        notifyDataLoaded();
    }

    @Override // aa.e
    public void onCommentButtonClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
        if (baseDynamicViewHolder != null) {
            this.mCurrentDynamicHolder = baseDynamicViewHolder;
            this.mFriendId = dynamicBean.getFriendId();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (EventBus.getDefault().isRegistered(this)) {
            return;
        }
        EventBus.getDefault().register(this);
    }

    @Override // aa.e
    public void onDeleteDynamic(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
        RecyclerView.Adapter adapter = getRecyclerView().getAdapter();
        if (adapter != null) {
            if (baseDynamicViewHolder instanceof VideoDynamicViewHolder) {
                ((VideoDynamicViewHolder) baseDynamicViewHolder).e0();
                if (this.mCurrentHolder == baseDynamicViewHolder) {
                    this.mCurrentHolder = null;
                }
            }
            getList().remove(dynamicBean);
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        stopCurrentPlay();
        if (getRecyclerView() != null) {
            getRecyclerView().removeOnScrollListener(this.mOnScrollListener);
        }
        super.onDestroy();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDynamicCommentEvent(DynamicCommentEvent dynamicCommentEvent) {
        if (dynamicCommentEvent == null || dynamicCommentEvent.getDynamicCommentId() != this.mFriendId) {
            return;
        }
        this.mCurrentDynamicHolder.I(dynamicCommentEvent.getCommentType());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFocusEvent(y7.e eVar) {
        if (TextUtils.isEmpty(eVar.a())) {
            return;
        }
        HandlerGetter.getMainHandler().postDelayed(new c(eVar), ib.b.f41005a);
    }

    @Override // aa.e
    public void onFocusStateChanged(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, boolean z10) {
        for (int i9 = 0; i9 < getList().size(); i9++) {
            DynamicBean dynamicBean2 = getList().get(i9);
            if (dynamicBean2.getUserId().equalsIgnoreCase(dynamicBean.getUserId())) {
                dynamicBean2.setUserAttentStatus(dynamicBean.getUserAttentStatus());
            }
        }
        notifyDataLoaded();
    }

    @Override // aa.e
    public void onImageClick(ImageDynamicViewHolder imageDynamicViewHolder, DynamicBean dynamicBean, int i9, RecyclerView recyclerView, View view) {
        if (this.mDynamicImageZoomHelper == null) {
            this.mDynamicImageZoomHelper = new DynamicImageZoomHelper(getActivity());
        }
        this.mDynamicImageZoomHelper.startZoom(imageDynamicViewHolder, dynamicBean, i9, recyclerView, view);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    public void onItemClick(BaseDynamicViewHolder baseDynamicViewHolder, int i9, DynamicBean dynamicBean) {
    }

    @Override // aa.e
    public /* synthetic */ void onLikeClick(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, int i9) {
        aa.d.a(this, baseDynamicViewHolder, dynamicBean, i9);
    }

    @Override // aa.e
    public void onResendClicked(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
        alert(getString(R.string.ugc_are_you_sure_to_repost), null, new f(dynamicBean), false);
    }

    @Override // aa.e
    public void onVideoClick(VideoDynamicViewHolder videoDynamicViewHolder, DynamicBean dynamicBean) {
        ArrayList arrayList = new ArrayList(getList());
        ArrayList arrayList2 = new ArrayList();
        VideoDynamicViewHolder videoDynamicViewHolder2 = this.mCurrentHolder;
        if (videoDynamicViewHolder2 != null && videoDynamicViewHolder2 != videoDynamicViewHolder) {
            videoDynamicViewHolder2.e0();
            this.mCurrentHolder = videoDynamicViewHolder;
        }
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            DynamicBean dynamicBean2 = (DynamicBean) arrayList.get(i9);
            if (((DynamicBean) arrayList.get(i9)).getItemViewType() == 2) {
                VideoItem videoItem = new VideoItem();
                videoItem.setUgcId(String.valueOf(dynamicBean2.getFriendId()));
                videoItem.setVideoId(dynamicBean2.getVideoId());
                videoItem.setUserImg(dynamicBean2.getAvatarUrl());
                videoItem.setUserNickName(dynamicBean2.getNickName());
                videoItem.setVideoUrl(dynamicBean2.getUrl());
                videoItem.setVideoImg(dynamicBean2.getImg());
                videoItem.setUserId(dynamicBean2.getUserId());
                videoItem.setLiveState(String.valueOf(dynamicBean2.getLiveState()));
                videoItem.setAvatar(dynamicBean2.getAvatar());
                videoItem.setHeight(String.valueOf(dynamicBean2.getHeight()));
                videoItem.setWidth(String.valueOf(dynamicBean2.getWidth()));
                videoItem.setVideoCollectionNum(dynamicBean2.getLikeNum());
                videoItem.setVideoCommentNum(dynamicBean2.getCommentNum());
                videoItem.setVideoIntroductionContent(dynamicBean2.getContent());
                arrayList2.add(videoItem);
            }
        }
        Tool.mDataList = arrayList2;
        int i10 = 0;
        while (true) {
            if (i10 >= arrayList2.size()) {
                i10 = 0;
                break;
            } else if (TextUtils.equals(((VideoItem) arrayList2.get(i10)).getVideoId(), dynamicBean.getVideoId()) && TextUtils.equals(((VideoItem) arrayList2.get(i10)).getUgcId(), String.valueOf(dynamicBean.getFriendId()))) {
                break;
            } else {
                i10++;
            }
        }
        View view = videoDynamicViewHolder.getView(R.id.video_content);
        ActivityOptionsCompat makeScaleUpAnimation = ActivityOptionsCompat.makeScaleUpAnimation(view, view.getWidth() / 2, view.getHeight() / 2, 0, 0);
        Intent intent = new Intent(getActivity(), DynamicVideoListActivity.class);
        intent.putExtra("type", 2);
        intent.putExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE, 1);
        intent.putExtra("current", videoDynamicViewHolder.f23053r.getCurrentPlaybackTime());
        intent.putExtra("position", i10);
        intent.putExtra("playing", videoDynamicViewHolder.f23058w);
        intent.putExtra("pause", videoDynamicViewHolder.f23057v);
        startActivityForResult(intent, 500, makeScaleUpAnimation.toBundle());
    }

    public void onVideoPlayButtonClicked(VideoDynamicViewHolder videoDynamicViewHolder, DynamicBean dynamicBean) {
        VideoDynamicViewHolder videoDynamicViewHolder2 = this.mCurrentHolder;
        if (videoDynamicViewHolder2 != null) {
            videoDynamicViewHolder2.e0();
        }
        this.mCurrentHolder = videoDynamicViewHolder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<DynamicBean> resetList(boolean z10) {
        ArrayList arrayList = new ArrayList();
        Iterator<DynamicBean> it = getList().iterator();
        while (it.hasNext()) {
            if (it.next().isPublishable()) {
                it.remove();
            }
        }
        if (z10) {
            getList().clear();
        }
        List<PublishUgcBean> t10 = ba.a.r().t(new g());
        if (t10 != null && !t10.isEmpty()) {
            for (int size = t10.size() - 1; size >= 0; size--) {
                DynamicBean dynamic = PublishUgcBean.toDynamic(t10.get(size));
                if (!getList().contains(dynamic)) {
                    arrayList.add(0, dynamic);
                }
            }
        }
        Collections.sort(arrayList);
        AppContentFilter.INSTANCE.filterList(arrayList);
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void setDatas(List<DynamicBean> list) {
        AppContentFilter.INSTANCE.filterList(list);
        super.setDatas(list);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z10) {
        super.setUserVisibleHint(z10);
        if (this.mCurrentHolder == null) {
            return;
        }
        if (z10 && isAdded()) {
            this.mCurrentHolder.d0();
        } else {
            this.mCurrentHolder.e0();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void showEmptyView() {
        if (getList().isEmpty()) {
            View view = this.mEmptyView;
            if (view == null) {
                View inflate = getLayoutInflater().inflate(R.layout.layout_live_list_empty, (ViewGroup) getRecyclerView(), false);
                this.mEmptyView = inflate;
                inflate.setOnClickListener(new d());
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mEmptyView.getLayoutParams();
                if (marginLayoutParams != null) {
                    marginLayoutParams.height = -1;
                    marginLayoutParams.setMargins(0, 0, 0, 0);
                    this.mEmptyView.setLayoutParams(marginLayoutParams);
                    View view2 = this.mEmptyView;
                    view2.setPadding(view2.getPaddingLeft(), DensityUtil.dp2px(getActivity(), 64.0f), this.mEmptyView.getRight(), this.mEmptyView.getPaddingBottom());
                }
                this.mEmptyView.setBackgroundResource(R.color.white);
            } else {
                removeHeaderView(view);
            }
            addHeaderView(this.mEmptyView, 1002);
            setFooterView(8);
            return;
        }
        View view3 = this.mEmptyView;
        if (view3 != null) {
            removeHeaderView(view3);
        }
    }

    public void stopCurrentPlay() {
        VideoDynamicViewHolder videoDynamicViewHolder = this.mCurrentHolder;
        if (videoDynamicViewHolder != null) {
            videoDynamicViewHolder.e0();
            this.mLastPlayPosition = -1;
            this.mCurrentHolder = null;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void convertItem(BaseDynamicViewHolder baseDynamicViewHolder, int i9, DynamicBean dynamicBean) {
        baseDynamicViewHolder.o(dynamicBean);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseDynamicViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseDynamicViewHolder a10 = y9.a.a(getActivity(), getLayoutInflater(), viewGroup, i9);
        a10.setOnDynamicOperationListener(this);
        return a10;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public void onViewRecycled(@NonNull BaseDynamicViewHolder baseDynamicViewHolder) {
        super.onViewRecycled((BaseDynamicListFragment) baseDynamicViewHolder);
        if (baseDynamicViewHolder instanceof VideoDynamicViewHolder) {
            ((VideoDynamicViewHolder) baseDynamicViewHolder).e0();
        }
    }
}
