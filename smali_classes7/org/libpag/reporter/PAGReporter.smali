.class public Lorg/libpag/reporter/PAGReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libpag/reporter/PAGReporter$PAGReporterListener;
    }
.end annotation


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "0DOU0WKP4I47KH3I"

.field private static final REPORT_EVET:Ljava/lang/String; = "pag_monitor"

.field private static mListener:Lorg/libpag/reporter/PAGReporter$PAGReporterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OnReportData(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lorg/libpag/reporter/PAGReporter;->mListener:Lorg/libpag/reporter/PAGReporter$PAGReporterListener;

    const-string v1, "0DOU0WKP4I47KH3I"

    const-string v2, "pag_monitor"

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, v2, v1, p0}, Lorg/libpag/reporter/PAGReporter$PAGReporterListener;->onReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lorg/libpag/reporter/AVReportCenter;->getInstance()Lorg/libpag/reporter/AVReportCenter;

    move-result-object v0

    invoke-virtual {v0, v2, v1, p0}, Lorg/libpag/reporter/AVReportCenter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static SetReportListener(Lorg/libpag/reporter/PAGReporter$PAGReporterListener;)V
    .locals 0

    sput-object p0, Lorg/libpag/reporter/PAGReporter;->mListener:Lorg/libpag/reporter/PAGReporter$PAGReporterListener;

    return-void
.end method
