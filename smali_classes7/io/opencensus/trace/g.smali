.class public abstract Lio/opencensus/trace/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/g$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lio/opencensus/trace/g;
    .locals 2

    new-instance v0, Lio/opencensus/trace/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/g$b;-><init>(Lio/opencensus/trace/g$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lio/opencensus/trace/export/b;
.end method

.method public abstract b()Lio/opencensus/trace/h;
.end method
