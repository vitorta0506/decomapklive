package com.guochao.faceshow.mine.model;

import java.util.List;
/* loaded from: classes4.dex */
public class RecordBean {
    public int code;
    public PageBean page;
    public ResultBean result;

    /* loaded from: classes4.dex */
    public static class PageBean {
        public int currPage;
        public List<RecordDetails> list;
        public int pageSize;
        public int totalCount;
        public int totalPage;

        /* loaded from: classes4.dex */
        public static class RecordDetails {
            public int account;
            public String accountUserName;
            public int applyState;
            public String createTime;
            public String gname;
            public int isType;
            public int numbers;
            public int payState;
            public int price;
            public int types;
            public int userId;
            public String userName;
        }
    }

    /* loaded from: classes4.dex */
    public static class ResultBean {
        public int Income;
        public int payPrice;
        public String time;
    }
}
