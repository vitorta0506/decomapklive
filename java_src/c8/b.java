package c8;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ActivityGift;
import com.guochao.faceshow.aaspring.beans.ActivityGiftEntity;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveActivityMessage;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityDialog;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.bean.LiveActivityDialogBean;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.promotion.data.PromotionData;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: f  reason: collision with root package name */
    private static b f1643f;

    /* renamed from: a  reason: collision with root package name */
    protected PromotionData f1644a;

    /* renamed from: b  reason: collision with root package name */
    private LiveActivityDialogBean f1645b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1646c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1647d;

    /* renamed from: e  reason: collision with root package name */
    private List<c> f1648e = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends SimpleObserver<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Fragment f1649a;

        a(Fragment fragment) {
            this.f1649a = fragment;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(Drawable drawable) {
            super.onNext(drawable);
            if (b.this.f1647d) {
                b.this.f1647d = false;
                if (b.this.f1646c || b.this.p(2) || !b.this.l() || this.f1649a.isDetached() || !this.f1649a.isVisible() || this.f1649a.getActivity() == null || this.f1649a.getActivity().isFinishing()) {
                    return;
                }
                b.this.f1646c = true;
                SpUtils.setStr(BaseApplication.getInstance(), "localActivityTime2", i.u().s().getToday());
                String str = FilePathProvider.getPrivateRootPathV2() + File.separator + "live_activity.png";
                b.this.i(drawable, str);
                LiveActivityDialog.Y1(this.f1649a.getChildFragmentManager(), b.this.f1645b.getLiveFrame(), str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c8.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0026b extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveActivityDialogBean> {
        C0026b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveActivityDialogBean liveActivityDialogBean, @NonNull FaceCastBaseResponse<LiveActivityDialogBean> faceCastBaseResponse) {
            List<LiveActivityDialogBean.LiveItemBean> liveFrame;
            if (liveActivityDialogBean != null && (liveFrame = liveActivityDialogBean.getLiveFrame()) != null) {
                for (LiveActivityDialogBean.LiveItemBean liveItemBean : liveFrame) {
                    int id2 = liveItemBean.getId();
                    if (i.u().s().getBlackShow() == 0 && (id2 == 3 || id2 == 4)) {
                        liveFrame.remove(liveItemBean);
                        break;
                    }
                }
            }
            b.this.f1645b = liveActivityDialogBean;
            b.k().z();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveActivityDialogBean> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void w();
    }

    private b() {
    }

    public static b k() {
        if (f1643f == null) {
            synchronized (b.class) {
                if (f1643f == null) {
                    f1643f = new b();
                }
            }
        }
        return f1643f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p(int i9) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("localActivityTime");
        sb2.append(i9);
        return i.u().s().getToday() != null && i.u().s().getToday().equals(SpUtils.getStr(baseApplication, sb2.toString()));
    }

    private void r() {
        PromotionData.PromotionResult promotionResult;
        List<PromotionData.ResultItem> normalLive;
        List<PromotionData.ActivityGiftEntity> list;
        PromotionData promotionData = this.f1644a;
        if (promotionData == null || (promotionResult = promotionData.result) == null || (normalLive = promotionResult.getNormalLive()) == null) {
            return;
        }
        for (PromotionData.ResultItem resultItem : normalLive) {
            if (resultItem != null && (list = resultItem.appActivityGiftEntityList) != null) {
                for (PromotionData.ActivityGiftEntity activityGiftEntity : list) {
                    if (activityGiftEntity != null) {
                        t(activityGiftEntity.getGiftUrl());
                    }
                }
                String str = resultItem.backgroundImg;
                if (str != null) {
                    t(str);
                }
                String str2 = resultItem.floatIconUrl;
                if (str2 != null) {
                    t(str2);
                }
            }
        }
    }

    private void t(String str) {
        try {
            com.bumptech.glide.c.u(BaseApplication.getInstance()).r(str).c1();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void v(String str, int i9, int i10) {
        for (PromotionData.ResultItem resultItem : k().j().result.getFullScreenLive()) {
            if (String.valueOf(resultItem.f26120id).equals(str)) {
                for (PromotionData.ActivityGiftEntity activityGiftEntity : resultItem.appActivityGiftEntityList) {
                    if (i9 == activityGiftEntity.getGiftId()) {
                        activityGiftEntity.setSendCount(i10);
                    }
                }
            }
        }
    }

    public void A(LiveActivityMessage liveActivityMessage) {
        if (k().m()) {
            List<ActivityGift> otherAppActivityGiftList = liveActivityMessage.getOtherAppActivityGiftList();
            if (otherAppActivityGiftList == null) {
                otherAppActivityGiftList = new ArrayList<>();
            }
            for (PromotionData.ResultItem resultItem : k().j().result.getFullScreenLive()) {
                for (ActivityGift activityGift : otherAppActivityGiftList) {
                    if (activityGift.getAppActivityGiftEntityList() != null && String.valueOf(resultItem.f26120id).equals(activityGift.getId())) {
                        for (PromotionData.ActivityGiftEntity activityGiftEntity : resultItem.appActivityGiftEntityList) {
                            Iterator<ActivityGiftEntity> it = activityGift.getAppActivityGiftEntityList().iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    ActivityGiftEntity next = it.next();
                                    if (next.getGiftId() == activityGiftEntity.getGiftId()) {
                                        activityGiftEntity.setSendCount(next.getSendCount());
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public boolean h(LiveRoomModel liveRoomModel) {
        return (liveRoomModel.isPrivateLiveRoom() || liveRoomModel.isMultiLiveRoom() || !liveRoomModel.isFullScreenActivity()) ? false : true;
    }

    public void i(Drawable drawable, String str) {
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        File file = new File(str);
        try {
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 20, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public PromotionData j() {
        return this.f1644a;
    }

    public boolean l() {
        LiveActivityDialogBean liveActivityDialogBean = this.f1645b;
        return (liveActivityDialogBean == null || liveActivityDialogBean.getLiveFrame() == null || this.f1645b.getLiveFrame().isEmpty()) ? false : true;
    }

    public boolean m() {
        PromotionData.PromotionResult promotionResult;
        PromotionData promotionData = this.f1644a;
        return !(promotionData == null || (promotionResult = promotionData.result) == null || promotionResult.getFullScreenLive() == null || this.f1644a.result.getFullScreenLive().isEmpty());
    }

    public boolean n() {
        PromotionData.PromotionResult promotionResult;
        PromotionData promotionData = this.f1644a;
        return !(promotionData == null || (promotionResult = promotionData.result) == null || promotionResult.getNormalLive() == null || this.f1644a.result.getNormalLive().isEmpty());
    }

    public boolean o(int i9) {
        PromotionData.PromotionResult promotionResult;
        PromotionData promotionData = this.f1644a;
        return (promotionData == null || (promotionResult = promotionData.result) == null || promotionResult.getNormalLive() == null || this.f1644a.result.getNormalLive().isEmpty() || this.f1644a.result.getNormalLive().size() <= i9 || this.f1644a.result.getNormalLive().get(i9) == null) ? false : true;
    }

    public void q() {
        new PostRequest("api/appactivity/findFrameList").M(new C0026b());
    }

    public void registerChangeListener(c cVar) {
        if (this.f1648e.contains(cVar)) {
            return;
        }
        this.f1648e.add(cVar);
    }

    public void s() {
        for (c cVar : this.f1648e) {
            cVar.w();
        }
    }

    public void u() {
        this.f1647d = false;
    }

    public void unRegisterChangeListener(c cVar) {
        this.f1648e.remove(cVar);
    }

    public void w(List<ActivityGift> list) {
        if (list == null || list.isEmpty() || !k().m()) {
            return;
        }
        for (ActivityGift activityGift : list) {
            List<ActivityGiftEntity> appActivityGiftEntityList = activityGift.getAppActivityGiftEntityList();
            if (appActivityGiftEntityList != null && !appActivityGiftEntityList.isEmpty()) {
                String id2 = activityGift.getId();
                for (ActivityGiftEntity activityGiftEntity : appActivityGiftEntityList) {
                    v(id2, activityGiftEntity.getGiftId(), activityGiftEntity.getSendCount());
                }
            }
        }
    }

    public void x(PromotionData promotionData) {
        this.f1644a = promotionData;
        r();
    }

    public void y(Fragment fragment) {
        if (UserBean.isFirstRegist || this.f1646c || p(2) || !l()) {
            return;
        }
        String img = this.f1645b.getLiveFrame().get(0).getImg();
        if (TextUtils.isEmpty(img) || this.f1647d) {
            return;
        }
        this.f1647d = true;
        TextDrawableUtil.urlToDrawable(BaseApplication.getInstance(), img, new a(fragment));
    }

    public void z() {
    }
}
