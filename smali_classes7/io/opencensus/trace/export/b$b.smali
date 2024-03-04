.class final Lio/opencensus/trace/export/b$b;
.super Lio/opencensus/trace/export/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/export/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/opencensus/trace/export/SampledSpanStore;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/export/b;-><init>()V

    .line 2
    invoke-static {}, Lio/opencensus/trace/export/SampledSpanStore;->a()Lio/opencensus/trace/export/SampledSpanStore;

    move-result-object v0

    iput-object v0, p0, Lio/opencensus/trace/export/b$b;->a:Lio/opencensus/trace/export/SampledSpanStore;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/export/b$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/opencensus/trace/export/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/opencensus/trace/export/SampledSpanStore;
    .locals 1

    iget-object v0, p0, Lio/opencensus/trace/export/b$b;->a:Lio/opencensus/trace/export/SampledSpanStore;

    return-object v0
.end method
