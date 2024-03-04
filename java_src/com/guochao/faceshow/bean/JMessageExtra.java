package com.guochao.faceshow.bean;
/* loaded from: classes3.dex */
public class JMessageExtra {
    private String msg_id;
    private String n_content;
    private NExtrasBean n_extras;
    private String n_title;
    private byte rom_type;

    /* loaded from: classes3.dex */
    public static class NExtrasBean {
        private String key1;
        private String key2;

        public String getKey1() {
            return this.key1;
        }

        public String getKey2() {
            return this.key2;
        }

        public void setKey1(String str) {
            this.key1 = str;
        }

        public void setKey2(String str) {
            this.key2 = str;
        }
    }

    public String getMsg_id() {
        return this.msg_id;
    }

    public String getN_content() {
        return this.n_content;
    }

    public NExtrasBean getN_extras() {
        return this.n_extras;
    }

    public String getN_title() {
        return this.n_title;
    }

    public byte getRom_type() {
        return this.rom_type;
    }

    public void setMsg_id(String str) {
        this.msg_id = str;
    }

    public void setN_content(String str) {
        this.n_content = str;
    }

    public void setN_extras(NExtrasBean nExtrasBean) {
        this.n_extras = nExtrasBean;
    }

    public void setN_title(String str) {
        this.n_title = str;
    }

    public void setRom_type(byte b10) {
        this.rom_type = b10;
    }
}
