package com.guochao.faceshow.aaspring.modulars.user.view;

import android.view.View;
import android.widget.ImageView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.WhoSawMeBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class UserPhotoWhoSaw {

    /* renamed from: a  reason: collision with root package name */
    private View f23265a;

    /* renamed from: b  reason: collision with root package name */
    private List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> f23266b;

    /* renamed from: c  reason: collision with root package name */
    public View[] f23267c = new View[3];

    /* renamed from: d  reason: collision with root package name */
    private a f23268d;
    @BindView
    ImageView firstPhoto;
    @BindView
    ImageView secondPhoto;
    @BindView
    ImageView thirdPhoto;
    @BindView
    View view2;
    @BindView
    View view3;

    /* loaded from: classes3.dex */
    public interface a {
        void a(View view, List<String> list, int i9);
    }

    public UserPhotoWhoSaw(View view) {
        this.f23265a = view;
        ButterKnife.c(this, view);
        View[] viewArr = this.f23267c;
        viewArr[0] = this.firstPhoto;
        viewArr[1] = this.secondPhoto;
        viewArr[2] = this.thirdPhoto;
    }

    public void a(WhoSawMeBean.ListBean.Bean bean) {
        this.f23266b = new ArrayList();
        ArrayList arrayList = new ArrayList();
        if (bean.getImages() != null && !bean.getImages().isEmpty()) {
            for (WhoSawMeBean.ListBean.Bean.ImagePhotoWall imagePhotoWall : bean.getImages()) {
                if (imagePhotoWall.getImgUrl() != null && !imagePhotoWall.getImgUrl().equals(bean.getImg())) {
                    arrayList.add(imagePhotoWall);
                }
            }
        }
        if (arrayList.isEmpty()) {
            this.f23265a.setVisibility(8);
            return;
        }
        this.f23265a.setVisibility(0);
        this.f23266b.addAll(arrayList);
        if (arrayList.size() == 1) {
            this.firstPhoto.setVisibility(0);
            this.secondPhoto.setVisibility(4);
            this.thirdPhoto.setVisibility(4);
            this.view2.setVisibility(8);
            this.view3.setVisibility(8);
            hc.a.r(this.firstPhoto, ((WhoSawMeBean.ListBean.Bean.ImagePhotoWall) arrayList.get(0)).getSmallImg(), R.mipmap.default_pic_round_14, 14);
        } else if (arrayList.size() == 2) {
            this.firstPhoto.setVisibility(0);
            this.secondPhoto.setVisibility(0);
            this.thirdPhoto.setVisibility(4);
            this.view2.setVisibility(0);
            this.view3.setVisibility(8);
            hc.a.r(this.firstPhoto, ((WhoSawMeBean.ListBean.Bean.ImagePhotoWall) arrayList.get(0)).getSmallImg(), R.mipmap.default_pic_round_14, 14);
            hc.a.r(this.secondPhoto, ((WhoSawMeBean.ListBean.Bean.ImagePhotoWall) arrayList.get(1)).getSmallImg(), R.mipmap.default_pic_round_14, 14);
        } else {
            this.firstPhoto.setVisibility(0);
            this.secondPhoto.setVisibility(0);
            this.thirdPhoto.setVisibility(0);
            this.view2.setVisibility(0);
            this.view3.setVisibility(0);
            hc.a.r(this.firstPhoto, ((WhoSawMeBean.ListBean.Bean.ImagePhotoWall) arrayList.get(0)).getSmallImg(), R.mipmap.default_pic_round_14, 14);
            hc.a.r(this.secondPhoto, ((WhoSawMeBean.ListBean.Bean.ImagePhotoWall) arrayList.get(1)).getSmallImg(), R.mipmap.default_pic_round_14, 14);
            hc.a.r(this.thirdPhoto, ((WhoSawMeBean.ListBean.Bean.ImagePhotoWall) arrayList.get(2)).getSmallImg(), R.mipmap.default_pic_round_14, 14);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.first_photo) {
            if (this.f23268d != null) {
                ArrayList arrayList = new ArrayList();
                List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> list = this.f23266b;
                if (list != null) {
                    for (WhoSawMeBean.ListBean.Bean.ImagePhotoWall imagePhotoWall : list) {
                        arrayList.add(imagePhotoWall.getImgUrl());
                    }
                }
                this.f23268d.a(view, arrayList, 0);
            }
        } else if (id2 != R.id.second_photo) {
            if (id2 == R.id.third_photo && this.f23268d != null) {
                ArrayList arrayList2 = new ArrayList();
                List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> list2 = this.f23266b;
                if (list2 != null) {
                    for (WhoSawMeBean.ListBean.Bean.ImagePhotoWall imagePhotoWall2 : list2) {
                        arrayList2.add(imagePhotoWall2.getImgUrl());
                    }
                }
                this.f23268d.a(view, arrayList2, 2);
            }
        } else if (this.f23268d != null) {
            ArrayList arrayList3 = new ArrayList();
            List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> list3 = this.f23266b;
            if (list3 != null) {
                for (WhoSawMeBean.ListBean.Bean.ImagePhotoWall imagePhotoWall3 : list3) {
                    arrayList3.add(imagePhotoWall3.getImgUrl());
                }
            }
            this.f23268d.a(view, arrayList3, 1);
        }
    }

    public void setOnClickImageListener(a aVar) {
        this.f23268d = aVar;
    }
}
