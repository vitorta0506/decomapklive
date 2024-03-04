.class public final Lcom/tencent/tmediacodec/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tencent/tmediacodec/c/b;

.field public final b:Lcom/tencent/tmediacodec/c/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/tmediacodec/c/b;

    const/4 v1, 0x2

    const-string v2, "keep"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmediacodec/c/b;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tmediacodec/c/a;->a:Lcom/tencent/tmediacodec/c/b;

    .line 3
    new-instance v1, Lcom/tencent/tmediacodec/c/b;

    const v2, 0x7fffffff

    const-string v3, "running"

    invoke-direct {v1, v2, v3}, Lcom/tencent/tmediacodec/c/b;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/tmediacodec/c/a;->b:Lcom/tencent/tmediacodec/c/b;

    .line 4
    new-instance v1, Lcom/tencent/tmediacodec/c/a$2;

    invoke-direct {v1, p0}, Lcom/tencent/tmediacodec/c/a$2;-><init>(Lcom/tencent/tmediacodec/c/a;)V

    .line 5
    iput-object v1, v0, Lcom/tencent/tmediacodec/c/b;->a:Lcom/tencent/tmediacodec/c/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runningPool:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmediacodec/c/a;->b:Lcom/tencent/tmediacodec/c/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " keepPool:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tmediacodec/c/a;->a:Lcom/tencent/tmediacodec/c/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
