package com.guochao.faceshow.signin.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\bS\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 q2\u00020\u0001:\u0001qB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004BÓ\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u001eJ\u000b\u0010Q\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010S\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010$J\u0010\u0010T\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010U\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010$J\u000b\u0010V\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010Y\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010$J\u0010\u0010Z\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010$J\u0010\u0010[\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010$J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010^\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010$J\u000b\u0010_\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010$J\u0011\u0010a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rHÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010$J\u0010\u0010c\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010$J\u000b\u0010d\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0084\u0002\u0010e\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010fJ\b\u0010g\u001a\u00020\tH\u0016J\u0013\u0010h\u001a\u00020i2\b\u0010j\u001a\u0004\u0018\u00010kHÖ\u0003J\t\u0010l\u001a\u00020\tHÖ\u0001J\t\u0010m\u001a\u00020\u0006HÖ\u0001J\u0018\u0010n\u001a\u00020o2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010p\u001a\u00020\tH\u0016R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u0010\n\u0002\u0010,\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010 \"\u0004\b.\u0010\"R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010 \"\u0004\b0\u0010\"R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010 \"\u0004\b2\u0010\"R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010 \"\u0004\b4\u0010\"R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b5\u0010$\"\u0004\b6\u0010&R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b7\u0010$\"\u0004\b8\u0010&R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b9\u0010$\"\u0004\b:\u0010&R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0096\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b;\u0010$\"\u0004\b<\u0010&R\"\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\tX\u0096\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\bA\u0010$\"\u0004\bB\u0010&R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010 \"\u0004\bD\u0010\"R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010 \"\u0004\bF\u0010\"R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010 \"\u0004\bH\u0010\"R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0096\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\bI\u0010$\"\u0004\bJ\u0010&R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010 \"\u0004\bL\u0010\"R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0096\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\bM\u0010$\"\u0004\bN\u0010&R\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0096\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\bO\u0010$\"\u0004\bP\u0010&¨\u0006r"}, d2 = {"Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "taskName", "", "taskIcon", "taskType", "", "taskBelong", RemoteMessageConst.MessageBody.PARAM, "prizeVoList", "", "Lcom/guochao/faceshow/signin/bean/RewardList;", "taskStatus", "taskId", "checkMode", "langDesc", "progresNum", AdUnitActivity.EXTRA_ACTIVITY_ID, "", "activityFlag", "startTime", "activityName", "endTime", "loopType", "loopUnit", "loopNum", "activityData", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getActivityData", "()Ljava/lang/String;", "setActivityData", "(Ljava/lang/String;)V", "getActivityFlag", "()Ljava/lang/Integer;", "setActivityFlag", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getActivityId", "()Ljava/lang/Long;", "setActivityId", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getActivityName", "setActivityName", "getCheckMode", "setCheckMode", "getEndTime", "setEndTime", "getLangDesc", "setLangDesc", "getLoopNum", "setLoopNum", "getLoopType", "setLoopType", "getLoopUnit", "setLoopUnit", "getParam", "setParam", "getPrizeVoList", "()Ljava/util/List;", "setPrizeVoList", "(Ljava/util/List;)V", "getProgresNum", "setProgresNum", "getStartTime", "setStartTime", "getTaskBelong", "setTaskBelong", "getTaskIcon", "setTaskIcon", "getTaskId", "setTaskId", "getTaskName", "setTaskName", "getTaskStatus", "setTaskStatus", "getTaskType", "setTaskType", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GrowTaskBean implements Parcelable {
    @NotNull
    public static final CREATOR CREATOR = new CREATOR(null);
    @Nullable
    private String activityData;
    @Nullable
    private Integer activityFlag;
    @Nullable
    private Long activityId;
    @Nullable
    private String activityName;
    @Nullable
    private String checkMode;
    @Nullable
    private String endTime;
    @Nullable
    private String langDesc;
    @Nullable
    private Integer loopNum;
    @Nullable
    private Integer loopType;
    @Nullable
    private Integer loopUnit;
    @Nullable
    private Integer param;
    @Nullable
    private List<RewardList> prizeVoList;
    @Nullable
    private Integer progresNum;
    @Nullable
    private String startTime;
    @Nullable
    private String taskBelong;
    @Nullable
    private String taskIcon;
    @Nullable
    private Integer taskId;
    @Nullable
    private String taskName;
    @Nullable
    private Integer taskStatus;
    @Nullable
    private Integer taskType;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/signin/bean/GrowTaskBean$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class CREATOR implements Parcelable.Creator<GrowTaskBean> {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public GrowTaskBean createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new GrowTaskBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public GrowTaskBean[] newArray(int i9) {
            return new GrowTaskBean[i9];
        }
    }

    public GrowTaskBean(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable Integer num2, @Nullable List<RewardList> list, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str4, @Nullable String str5, @Nullable Integer num5, @Nullable Long l10, @Nullable Integer num6, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable String str9) {
        this.taskName = str;
        this.taskIcon = str2;
        this.taskType = num;
        this.taskBelong = str3;
        this.param = num2;
        this.prizeVoList = list;
        this.taskStatus = num3;
        this.taskId = num4;
        this.checkMode = str4;
        this.langDesc = str5;
        this.progresNum = num5;
        this.activityId = l10;
        this.activityFlag = num6;
        this.startTime = str6;
        this.activityName = str7;
        this.endTime = str8;
        this.loopType = num7;
        this.loopUnit = num8;
        this.loopNum = num9;
        this.activityData = str9;
    }

    @Nullable
    public final String component1() {
        return getTaskName();
    }

    @Nullable
    public final String component10() {
        return getLangDesc();
    }

    @Nullable
    public final Integer component11() {
        return getProgresNum();
    }

    @Nullable
    public final Long component12() {
        return this.activityId;
    }

    @Nullable
    public final Integer component13() {
        return this.activityFlag;
    }

    @Nullable
    public final String component14() {
        return this.startTime;
    }

    @Nullable
    public final String component15() {
        return this.activityName;
    }

    @Nullable
    public final String component16() {
        return this.endTime;
    }

    @Nullable
    public final Integer component17() {
        return this.loopType;
    }

    @Nullable
    public final Integer component18() {
        return this.loopUnit;
    }

    @Nullable
    public final Integer component19() {
        return this.loopNum;
    }

    @Nullable
    public final String component2() {
        return getTaskIcon();
    }

    @Nullable
    public final String component20() {
        return this.activityData;
    }

    @Nullable
    public final Integer component3() {
        return getTaskType();
    }

    @Nullable
    public final String component4() {
        return getTaskBelong();
    }

    @Nullable
    public final Integer component5() {
        return getParam();
    }

    @Nullable
    public final List<RewardList> component6() {
        return getPrizeVoList();
    }

    @Nullable
    public final Integer component7() {
        return getTaskStatus();
    }

    @Nullable
    public final Integer component8() {
        return getTaskId();
    }

    @Nullable
    public final String component9() {
        return getCheckMode();
    }

    @NotNull
    public final GrowTaskBean copy(@Nullable String str, @Nullable String str2, @Nullable Integer num, @Nullable String str3, @Nullable Integer num2, @Nullable List<RewardList> list, @Nullable Integer num3, @Nullable Integer num4, @Nullable String str4, @Nullable String str5, @Nullable Integer num5, @Nullable Long l10, @Nullable Integer num6, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable Integer num7, @Nullable Integer num8, @Nullable Integer num9, @Nullable String str9) {
        return new GrowTaskBean(str, str2, num, str3, num2, list, num3, num4, str4, str5, num5, l10, num6, str6, str7, str8, num7, num8, num9, str9);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GrowTaskBean) {
            GrowTaskBean growTaskBean = (GrowTaskBean) obj;
            return Intrinsics.areEqual(getTaskName(), growTaskBean.getTaskName()) && Intrinsics.areEqual(getTaskIcon(), growTaskBean.getTaskIcon()) && Intrinsics.areEqual(getTaskType(), growTaskBean.getTaskType()) && Intrinsics.areEqual(getTaskBelong(), growTaskBean.getTaskBelong()) && Intrinsics.areEqual(getParam(), growTaskBean.getParam()) && Intrinsics.areEqual(getPrizeVoList(), growTaskBean.getPrizeVoList()) && Intrinsics.areEqual(getTaskStatus(), growTaskBean.getTaskStatus()) && Intrinsics.areEqual(getTaskId(), growTaskBean.getTaskId()) && Intrinsics.areEqual(getCheckMode(), growTaskBean.getCheckMode()) && Intrinsics.areEqual(getLangDesc(), growTaskBean.getLangDesc()) && Intrinsics.areEqual(getProgresNum(), growTaskBean.getProgresNum()) && Intrinsics.areEqual(this.activityId, growTaskBean.activityId) && Intrinsics.areEqual(this.activityFlag, growTaskBean.activityFlag) && Intrinsics.areEqual(this.startTime, growTaskBean.startTime) && Intrinsics.areEqual(this.activityName, growTaskBean.activityName) && Intrinsics.areEqual(this.endTime, growTaskBean.endTime) && Intrinsics.areEqual(this.loopType, growTaskBean.loopType) && Intrinsics.areEqual(this.loopUnit, growTaskBean.loopUnit) && Intrinsics.areEqual(this.loopNum, growTaskBean.loopNum) && Intrinsics.areEqual(this.activityData, growTaskBean.activityData);
        }
        return false;
    }

    @Nullable
    public final String getActivityData() {
        return this.activityData;
    }

    @Nullable
    public final Integer getActivityFlag() {
        return this.activityFlag;
    }

    @Nullable
    public final Long getActivityId() {
        return this.activityId;
    }

    @Nullable
    public final String getActivityName() {
        return this.activityName;
    }

    @Nullable
    public String getCheckMode() {
        return this.checkMode;
    }

    @Nullable
    public final String getEndTime() {
        return this.endTime;
    }

    @Nullable
    public String getLangDesc() {
        return this.langDesc;
    }

    @Nullable
    public final Integer getLoopNum() {
        return this.loopNum;
    }

    @Nullable
    public final Integer getLoopType() {
        return this.loopType;
    }

    @Nullable
    public final Integer getLoopUnit() {
        return this.loopUnit;
    }

    @Nullable
    public Integer getParam() {
        return this.param;
    }

    @Nullable
    public List<RewardList> getPrizeVoList() {
        return this.prizeVoList;
    }

    @Nullable
    public Integer getProgresNum() {
        return this.progresNum;
    }

    @Nullable
    public final String getStartTime() {
        return this.startTime;
    }

    @Nullable
    public String getTaskBelong() {
        return this.taskBelong;
    }

    @Nullable
    public String getTaskIcon() {
        return this.taskIcon;
    }

    @Nullable
    public Integer getTaskId() {
        return this.taskId;
    }

    @Nullable
    public String getTaskName() {
        return this.taskName;
    }

    @Nullable
    public Integer getTaskStatus() {
        return this.taskStatus;
    }

    @Nullable
    public Integer getTaskType() {
        return this.taskType;
    }

    public int hashCode() {
        int hashCode = (((((((((((((((((((((getTaskName() == null ? 0 : getTaskName().hashCode()) * 31) + (getTaskIcon() == null ? 0 : getTaskIcon().hashCode())) * 31) + (getTaskType() == null ? 0 : getTaskType().hashCode())) * 31) + (getTaskBelong() == null ? 0 : getTaskBelong().hashCode())) * 31) + (getParam() == null ? 0 : getParam().hashCode())) * 31) + (getPrizeVoList() == null ? 0 : getPrizeVoList().hashCode())) * 31) + (getTaskStatus() == null ? 0 : getTaskStatus().hashCode())) * 31) + (getTaskId() == null ? 0 : getTaskId().hashCode())) * 31) + (getCheckMode() == null ? 0 : getCheckMode().hashCode())) * 31) + (getLangDesc() == null ? 0 : getLangDesc().hashCode())) * 31) + (getProgresNum() == null ? 0 : getProgresNum().hashCode())) * 31;
        Long l10 = this.activityId;
        int hashCode2 = (hashCode + (l10 == null ? 0 : l10.hashCode())) * 31;
        Integer num = this.activityFlag;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.startTime;
        int hashCode4 = (hashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.activityName;
        int hashCode5 = (hashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.endTime;
        int hashCode6 = (hashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num2 = this.loopType;
        int hashCode7 = (hashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.loopUnit;
        int hashCode8 = (hashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.loopNum;
        int hashCode9 = (hashCode8 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str4 = this.activityData;
        return hashCode9 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setActivityData(@Nullable String str) {
        this.activityData = str;
    }

    public final void setActivityFlag(@Nullable Integer num) {
        this.activityFlag = num;
    }

    public final void setActivityId(@Nullable Long l10) {
        this.activityId = l10;
    }

    public final void setActivityName(@Nullable String str) {
        this.activityName = str;
    }

    public void setCheckMode(@Nullable String str) {
        this.checkMode = str;
    }

    public final void setEndTime(@Nullable String str) {
        this.endTime = str;
    }

    public void setLangDesc(@Nullable String str) {
        this.langDesc = str;
    }

    public final void setLoopNum(@Nullable Integer num) {
        this.loopNum = num;
    }

    public final void setLoopType(@Nullable Integer num) {
        this.loopType = num;
    }

    public final void setLoopUnit(@Nullable Integer num) {
        this.loopUnit = num;
    }

    public void setParam(@Nullable Integer num) {
        this.param = num;
    }

    public void setPrizeVoList(@Nullable List<RewardList> list) {
        this.prizeVoList = list;
    }

    public void setProgresNum(@Nullable Integer num) {
        this.progresNum = num;
    }

    public final void setStartTime(@Nullable String str) {
        this.startTime = str;
    }

    public void setTaskBelong(@Nullable String str) {
        this.taskBelong = str;
    }

    public void setTaskIcon(@Nullable String str) {
        this.taskIcon = str;
    }

    public void setTaskId(@Nullable Integer num) {
        this.taskId = num;
    }

    public void setTaskName(@Nullable String str) {
        this.taskName = str;
    }

    public void setTaskStatus(@Nullable Integer num) {
        this.taskStatus = num;
    }

    public void setTaskType(@Nullable Integer num) {
        this.taskType = num;
    }

    @NotNull
    public String toString() {
        return "GrowTaskBean(taskName=" + getTaskName() + ", taskIcon=" + getTaskIcon() + ", taskType=" + getTaskType() + ", taskBelong=" + getTaskBelong() + ", param=" + getParam() + ", prizeVoList=" + getPrizeVoList() + ", taskStatus=" + getTaskStatus() + ", taskId=" + getTaskId() + ", checkMode=" + getCheckMode() + ", langDesc=" + getLangDesc() + ", progresNum=" + getProgresNum() + ", activityId=" + this.activityId + ", activityFlag=" + this.activityFlag + ", startTime=" + this.startTime + ", activityName=" + this.activityName + ", endTime=" + this.endTime + ", loopType=" + this.loopType + ", loopUnit=" + this.loopUnit + ", loopNum=" + this.loopNum + ", activityData=" + this.activityData + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i9) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(getTaskName());
        parcel.writeString(getTaskIcon());
        parcel.writeValue(getTaskType());
        parcel.writeString(getTaskBelong());
        parcel.writeValue(getParam());
        parcel.writeValue(getTaskStatus());
        parcel.writeValue(getTaskId());
        parcel.writeString(getCheckMode());
        parcel.writeString(getLangDesc());
        parcel.writeValue(getProgresNum());
        parcel.writeValue(this.activityId);
        parcel.writeValue(this.activityFlag);
        parcel.writeString(this.startTime);
        parcel.writeString(this.activityName);
        parcel.writeString(this.endTime);
        parcel.writeValue(this.loopType);
        parcel.writeValue(this.loopUnit);
        parcel.writeValue(this.loopNum);
        parcel.writeString(this.activityData);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GrowTaskBean(@org.jetbrains.annotations.NotNull android.os.Parcel r25) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.signin.bean.GrowTaskBean.<init>(android.os.Parcel):void");
    }
}
