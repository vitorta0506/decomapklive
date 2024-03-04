package cn.jpush.android.api;

import java.io.Serializable;
import java.util.Set;
/* loaded from: classes.dex */
public class JPushMessage implements Serializable {
    private static final long serialVersionUID = 1;

    /* renamed from: a  reason: collision with root package name */
    private String f2918a;

    /* renamed from: b  reason: collision with root package name */
    private Set<String> f2919b;

    /* renamed from: c  reason: collision with root package name */
    private String f2920c;

    /* renamed from: d  reason: collision with root package name */
    private int f2921d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2922e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2923f;

    /* renamed from: g  reason: collision with root package name */
    private int f2924g;

    /* renamed from: h  reason: collision with root package name */
    private String f2925h;

    public String getAlias() {
        return this.f2918a;
    }

    public String getCheckTag() {
        return this.f2920c;
    }

    public int getErrorCode() {
        return this.f2921d;
    }

    public String getMobileNumber() {
        return this.f2925h;
    }

    public int getSequence() {
        return this.f2924g;
    }

    public boolean getTagCheckStateResult() {
        return this.f2922e;
    }

    public Set<String> getTags() {
        return this.f2919b;
    }

    public boolean isTagCheckOperator() {
        return this.f2923f;
    }

    public void setAlias(String str) {
        this.f2918a = str;
    }

    public void setCheckTag(String str) {
        this.f2920c = str;
    }

    public void setErrorCode(int i9) {
        this.f2921d = i9;
    }

    public void setMobileNumber(String str) {
        this.f2925h = str;
    }

    public void setSequence(int i9) {
        this.f2924g = i9;
    }

    public void setTagCheckOperator(boolean z10) {
        this.f2923f = z10;
    }

    public void setTagCheckStateResult(boolean z10) {
        this.f2922e = z10;
    }

    public void setTags(Set<String> set) {
        this.f2919b = set;
    }

    public String toString() {
        return "JPushMessage{alias='" + this.f2918a + "', tags=" + this.f2919b + ", checkTag='" + this.f2920c + "', errorCode=" + this.f2921d + ", tagCheckStateResult=" + this.f2922e + ", isTagCheckOperator=" + this.f2923f + ", sequence=" + this.f2924g + ", mobileNumber=" + this.f2925h + '}';
    }
}
