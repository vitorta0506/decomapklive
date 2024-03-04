package com.guochao.faceshow.bean;

import java.util.Map;
/* loaded from: classes3.dex */
public class JMessageExtraBean {
    private JMessageExtra JMessageExtra;

    /* loaded from: classes3.dex */
    public static class JMessageExtra {
        private long _jmsgid_;
        private MContentBean m_content;
        private int show_type;

        /* loaded from: classes3.dex */
        public static class MContentBean {
            private String n_content;
            private Map<String, Object> n_extras;
            private String n_title;

            public String getN_content() {
                return this.n_content;
            }

            public Map<String, Object> getN_extras() {
                return this.n_extras;
            }

            public String getN_title() {
                return this.n_title;
            }

            public void setN_content(String str) {
                this.n_content = str;
            }

            public void setN_extras(Map<String, Object> map) {
                this.n_extras = map;
            }

            public void setN_title(String str) {
                this.n_title = str;
            }

            public String toString() {
                return "MContentBean{n_content='" + this.n_content + "', n_extras=" + this.n_extras + ", n_title='" + this.n_title + "'}";
            }
        }

        public MContentBean getM_content() {
            return this.m_content;
        }

        public int getShow_type() {
            return this.show_type;
        }

        public long get_jmsgid_() {
            return this._jmsgid_;
        }

        public void setM_content(MContentBean mContentBean) {
            this.m_content = mContentBean;
        }

        public void setShow_type(int i9) {
            this.show_type = i9;
        }

        public void set_jmsgid_(long j10) {
            this._jmsgid_ = j10;
        }

        public String toString() {
            return "JMessageExtra{_jmsgid_=" + this._jmsgid_ + ", m_content=" + this.m_content + ", show_type=" + this.show_type + '}';
        }
    }

    public JMessageExtra getJMessageExtra() {
        return this.JMessageExtra;
    }

    public void setJMessageExtra(JMessageExtra jMessageExtra) {
        this.JMessageExtra = jMessageExtra;
    }

    public String toString() {
        return "JMessageExtraBean{JMessageExtra=" + this.JMessageExtra + '}';
    }
}
