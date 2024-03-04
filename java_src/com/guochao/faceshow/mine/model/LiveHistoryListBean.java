package com.guochao.faceshow.mine.model;

import java.util.ArrayList;
/* loaded from: classes4.dex */
public class LiveHistoryListBean {
    public int code;
    public Page page;

    /* loaded from: classes4.dex */
    public class Page {
        public int currPage;
        public ArrayList<LiveHistoryBean> list;
        public int pageSize;
        public int totalCount;
        public Integer totalPage;

        public Page() {
        }
    }
}
