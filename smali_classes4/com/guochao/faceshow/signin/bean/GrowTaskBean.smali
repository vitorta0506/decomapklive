.class public final Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/bean/GrowTaskBean$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008S\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 q2\u00020\u0001:\u0001qB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u00d3\u0001\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u001eJ\u000b\u0010Q\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010S\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u0010\u0010T\u001a\u0004\u0018\u00010\u0015H\u00c6\u0003\u00a2\u0006\u0002\u0010)J\u0010\u0010U\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u000b\u0010V\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010Y\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u0010\u0010Z\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u0010\u0010[\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010^\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u000b\u0010_\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u0011\u0010a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u00c6\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u0010\u0010c\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010$J\u000b\u0010d\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0084\u0002\u0010e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010fJ\u0008\u0010g\u001a\u00020\tH\u0016J\u0013\u0010h\u001a\u00020i2\u0008\u0010j\u001a\u0004\u0018\u00010kH\u00d6\u0003J\t\u0010l\u001a\u00020\tH\u00d6\u0001J\t\u0010m\u001a\u00020\u0006H\u00d6\u0001J\u0018\u0010n\u001a\u00020o2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010p\u001a\u00020\tH\u0016R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010,\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010 \"\u0004\u0008.\u0010\"R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010 \"\u0004\u00080\u0010\"R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010 \"\u0004\u00082\u0010\"R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010 \"\u0004\u00084\u0010\"R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u00085\u0010$\"\u0004\u00086\u0010&R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u00087\u0010$\"\u0004\u00088\u0010&R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u00089\u0010$\"\u0004\u0008:\u0010&R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u0008;\u0010$\"\u0004\u0008<\u0010&R\"\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\tX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u0008A\u0010$\"\u0004\u0008B\u0010&R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010 \"\u0004\u0008D\u0010\"R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010 \"\u0004\u0008F\u0010\"R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010 \"\u0004\u0008H\u0010\"R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u0008I\u0010$\"\u0004\u0008J\u0010&R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010 \"\u0004\u0008L\u0010\"R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u0008M\u0010$\"\u0004\u0008N\u0010&R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0096\u000e\u00a2\u0006\u0010\n\u0002\u0010\'\u001a\u0004\u0008O\u0010$\"\u0004\u0008P\u0010&\u00a8\u0006r"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "taskName",
        "",
        "taskIcon",
        "taskType",
        "",
        "taskBelong",
        "param",
        "prizeVoList",
        "",
        "Lcom/guochao/faceshow/signin/bean/RewardList;",
        "taskStatus",
        "taskId",
        "checkMode",
        "langDesc",
        "progresNum",
        "activityId",
        "",
        "activityFlag",
        "startTime",
        "activityName",
        "endTime",
        "loopType",
        "loopUnit",
        "loopNum",
        "activityData",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V",
        "getActivityData",
        "()Ljava/lang/String;",
        "setActivityData",
        "(Ljava/lang/String;)V",
        "getActivityFlag",
        "()Ljava/lang/Integer;",
        "setActivityFlag",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getActivityId",
        "()Ljava/lang/Long;",
        "setActivityId",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getActivityName",
        "setActivityName",
        "getCheckMode",
        "setCheckMode",
        "getEndTime",
        "setEndTime",
        "getLangDesc",
        "setLangDesc",
        "getLoopNum",
        "setLoopNum",
        "getLoopType",
        "setLoopType",
        "getLoopUnit",
        "setLoopUnit",
        "getParam",
        "setParam",
        "getPrizeVoList",
        "()Ljava/util/List;",
        "setPrizeVoList",
        "(Ljava/util/List;)V",
        "getProgresNum",
        "setProgresNum",
        "getStartTime",
        "setStartTime",
        "getTaskBelong",
        "setTaskBelong",
        "getTaskIcon",
        "setTaskIcon",
        "getTaskId",
        "setTaskId",
        "getTaskName",
        "setTaskName",
        "getTaskStatus",
        "setTaskStatus",
        "getTaskType",
        "setTaskType",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "lib_sign_in_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/guochao/faceshow/signin/bean/GrowTaskBean$CREATOR;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private activityData:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private activityFlag:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private activityId:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private activityName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private checkMode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private endTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private langDesc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loopNum:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loopType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loopUnit:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private param:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prizeVoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private progresNum:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taskBelong:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taskIcon:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taskId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taskName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taskStatus:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private taskType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->CREATOR:Lcom/guochao/faceshow/signin/bean/GrowTaskBean$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 24
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 24
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    check-cast v2, Ljava/lang/Integer;

    move-object v5, v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 25
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/Integer;

    if-eqz v8, :cond_1

    check-cast v2, Ljava/lang/Integer;

    move-object v8, v2

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 27
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v10, v2, Ljava/lang/Integer;

    if-eqz v10, :cond_2

    check-cast v2, Ljava/lang/Integer;

    move-object v10, v2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 29
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v11, v2, Ljava/lang/Integer;

    if-eqz v11, :cond_3

    check-cast v2, Ljava/lang/Integer;

    move-object v11, v2

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 30
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v14, v2, Ljava/lang/Integer;

    if-eqz v14, :cond_4

    check-cast v2, Ljava/lang/Integer;

    move-object v14, v2

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 33
    :goto_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v15, v2, Ljava/lang/Long;

    if-eqz v15, :cond_5

    check-cast v2, Ljava/lang/Long;

    move-object v15, v2

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 34
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v17, v2

    goto :goto_6

    :cond_6
    const/16 v17, 0x0

    .line 35
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v21, v2

    goto :goto_7

    :cond_7
    const/16 v21, 0x0

    .line 39
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_8

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 v23, v2

    goto :goto_8

    :cond_8
    const/16 v23, 0x0

    .line 40
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    check-cast v1, Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    .line 41
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v2, p0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v1

    .line 42
    invoke-direct/range {v2 .. v22}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskName:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskIcon:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskType:Ljava/lang/Integer;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskBelong:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->param:Ljava/lang/Integer;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->prizeVoList:Ljava/util/List;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskStatus:Ljava/lang/Integer;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskId:Ljava/lang/Integer;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->checkMode:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->langDesc:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->progresNum:Ljava/lang/Integer;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskIcon()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskType()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getLangDesc()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getProgresNum()Ljava/lang/Integer;

    move-result-object v12

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p19, v15

    move-object/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getLangDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getProgresNum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    return-object v0
.end method

.method public final component13()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component18()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component19()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskType()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
    .locals 22
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    new-instance v21, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v21
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskIcon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskType()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getLangDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getLangDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getProgresNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getProgresNum()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getActivityData()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    return-object v0
.end method

.method public final getActivityFlag()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getActivityId()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getActivityName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckMode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->checkMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLangDesc()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->langDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoopNum()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLoopType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLoopUnit()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getParam()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->param:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrizeVoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->prizeVoList:Ljava/util/List;

    return-object v0
.end method

.method public getProgresNum()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->progresNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskBelong()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskBelong:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskStatus()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTaskType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskType:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskIcon()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskType()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getLangDesc()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getLangDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getProgresNum()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getProgresNum()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    if-nez v2, :cond_13

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method

.method public final setActivityData(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    return-void
.end method

.method public final setActivityFlag(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    return-void
.end method

.method public final setActivityId(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    return-void
.end method

.method public final setActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setCheckMode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->checkMode:Ljava/lang/String;

    return-void
.end method

.method public final setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setLangDesc(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->langDesc:Ljava/lang/String;

    return-void
.end method

.method public final setLoopNum(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    return-void
.end method

.method public final setLoopType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    return-void
.end method

.method public final setLoopUnit(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    return-void
.end method

.method public setParam(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->param:Ljava/lang/Integer;

    return-void
.end method

.method public setPrizeVoList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->prizeVoList:Ljava/util/List;

    return-void
.end method

.method public setProgresNum(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->progresNum:Ljava/lang/Integer;

    return-void
.end method

.method public final setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTaskBelong(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskBelong:Ljava/lang/String;

    return-void
.end method

.method public setTaskIcon(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskIcon:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskId:Ljava/lang/Integer;

    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskName:Ljava/lang/String;

    return-void
.end method

.method public setTaskStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskStatus:Ljava/lang/Integer;

    return-void
.end method

.method public setTaskType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->taskType:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrowTaskBean(taskName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", taskType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskBelong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prizeVoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getPrizeVoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", langDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getLangDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progresNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getProgresNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loopType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loopUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loopNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskIcon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskBelong()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getParam()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskStatus()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getTaskId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getCheckMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getLangDesc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->getProgresNum()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityId:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityFlag:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->startTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->endTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopType:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopUnit:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->loopNum:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;->activityData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
