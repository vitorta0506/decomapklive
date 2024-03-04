.class public final Lcom/tencent/tmediacodec/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmediacodec/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tmediacodec/b;


# direct methods
.method public constructor <init>(Lcom/tencent/tmediacodec/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmediacodec/b$1;->a:Lcom/tencent/tmediacodec/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/tmediacodec/b$1;->a:Lcom/tencent/tmediacodec/b;

    .line 2
    iget-object v1, v0, Lcom/tencent/tmediacodec/b;->c:Lcom/tencent/tmediacodec/b/b;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/tencent/tmediacodec/b;->d:Lcom/tencent/tmediacodec/a/a;

    .line 4
    invoke-interface {v1, v0}, Lcom/tencent/tmediacodec/b/b;->a(Lcom/tencent/tmediacodec/a/a;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmediacodec/b$1;->a:Lcom/tencent/tmediacodec/b;

    .line 6
    iget-object v1, v0, Lcom/tencent/tmediacodec/b;->d:Lcom/tencent/tmediacodec/a/a;

    if-eqz v1, :cond_1

    .line 7
    iget-boolean v0, v0, Lcom/tencent/tmediacodec/b;->b:Z

    :cond_1
    return-void
.end method
