.class final Lmh/d$b;
.super Lmh/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmh/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Lio/opencensus/trace/Status;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmh/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lmh/i;
    .locals 4

    .line 1
    iget-object v0, p0, Lmh/d$b;->a:Ljava/lang/Boolean;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sampleToLocalSpanStore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lmh/d;

    iget-object v1, p0, Lmh/d$b;->a:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lmh/d$b;->b:Lio/opencensus/trace/Status;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmh/d;-><init>(ZLio/opencensus/trace/Status;Lmh/d$a;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lio/opencensus/trace/Status;)Lmh/i$a;
    .locals 0

    iput-object p1, p0, Lmh/d$b;->b:Lio/opencensus/trace/Status;

    return-object p0
.end method

.method public c(Z)Lmh/i$a;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lmh/d$b;->a:Ljava/lang/Boolean;

    return-object p0
.end method
