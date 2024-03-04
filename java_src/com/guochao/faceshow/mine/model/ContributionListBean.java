package com.guochao.faceshow.mine.model;

import java.util.ArrayList;
/* loaded from: classes4.dex */
public class ContributionListBean {
    public int code;
    public Page page;

    /* loaded from: classes4.dex */
    public static class Page {
        public int currPage;
        public ArrayList<ContributionBean> list;
        public int pageSize;
        public int totalCount;
        public int totalPage;
    }
}
