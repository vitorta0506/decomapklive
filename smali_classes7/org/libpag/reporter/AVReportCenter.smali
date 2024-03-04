.class public Lorg/libpag/reporter/AVReportCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static beaconEnable:Z

.field private static final ourInstance:Lorg/libpag/reporter/AVReportCenter;


# instance fields
.field private enable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVReportCenter-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/libpag/reporter/AVReportCenter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/libpag/reporter/AVReportCenter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lorg/libpag/reporter/AVReportCenter;->beaconEnable:Z

    .line 3
    new-instance v0, Lorg/libpag/reporter/AVReportCenter;

    invoke-direct {v0}, Lorg/libpag/reporter/AVReportCenter;-><init>()V

    sput-object v0, Lorg/libpag/reporter/AVReportCenter;->ourInstance:Lorg/libpag/reporter/AVReportCenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/libpag/reporter/AVReportCenter;->enable:Z

    .line 3
    invoke-virtual {p0}, Lorg/libpag/reporter/AVReportCenter;->init()V

    return-void
.end method

.method public static getInstance()Lorg/libpag/reporter/AVReportCenter;
    .locals 1

    sget-object v0, Lorg/libpag/reporter/AVReportCenter;->ourInstance:Lorg/libpag/reporter/AVReportCenter;

    return-object v0
.end method


# virtual methods
.method public commit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lorg/libpag/reporter/AVReportCenter;->beaconEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/libpag/reporter/AVReportCenter;->enable:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconEvent;->builder()Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withAppKey(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withCode(Ljava/lang/String;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->withParams(Ljava/util/Map;)Lcom/tencent/beacon/event/open/BeaconEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/beacon/event/open/BeaconEvent;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/tencent/beacon/event/open/BeaconReport;->getInstance()Lcom/tencent/beacon/event/open/BeaconReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/beacon/event/open/BeaconReport;->report(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/tencent/beacon/event/open/EventResult;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    sget-object p2, Lorg/libpag/reporter/AVReportCenter;->TAG:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/beacon/event/open/EventResult;->errMsg:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 6
    sput-boolean p2, Lorg/libpag/reporter/AVReportCenter;->beaconEnable:Z

    .line 7
    sget-object p2, Lorg/libpag/reporter/AVReportCenter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "report: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/extra/tools/LibraryLoadUtils;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.tencent.beacon.event.open.BeaconReport"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lorg/libpag/reporter/AVReportCenter;->beaconEnable:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lorg/libpag/reporter/AVReportCenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/libpag/reporter/AVReportCenter;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/libpag/reporter/AVReportCenter;->enable:Z

    return-void
.end method
