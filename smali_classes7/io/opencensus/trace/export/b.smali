.class public abstract Lio/opencensus/trace/export/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/export/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lio/opencensus/trace/export/b;
    .locals 2

    new-instance v0, Lio/opencensus/trace/export/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/export/b$b;-><init>(Lio/opencensus/trace/export/b$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lio/opencensus/trace/export/SampledSpanStore;
.end method
