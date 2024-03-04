.class final Lio/opencensus/trace/g$b;
.super Lio/opencensus/trace/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/opencensus/trace/export/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/opencensus/trace/g;-><init>()V

    .line 3
    invoke-static {}, Lio/opencensus/trace/export/b;->b()Lio/opencensus/trace/export/b;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/g$b;->a:Lio/opencensus/trace/export/b;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/opencensus/trace/export/b;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/g$b;->a:Lio/opencensus/trace/export/b;

    return-object v0
.end method

.method public b()Lio/opencensus/trace/h;
    .locals 1

    invoke-static {}, Lio/opencensus/trace/h;->a()Lio/opencensus/trace/h;

    move-result-object v0

    return-object v0
.end method
