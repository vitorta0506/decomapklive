.class public final synthetic Lcom/chad/library/adapter/base/diff/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/b;->a:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    iput-object p2, p0, Lcom/chad/library/adapter/base/diff/b;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/chad/library/adapter/base/diff/b;->c:Ljava/util/List;

    iput p4, p0, Lcom/chad/library/adapter/base/diff/b;->d:I

    iput-object p5, p0, Lcom/chad/library/adapter/base/diff/b;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/b;->a:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/b;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/b;->c:Ljava/util/List;

    iget v3, p0, Lcom/chad/library/adapter/base/diff/b;->d:I

    iget-object v4, p0, Lcom/chad/library/adapter/base/diff/b;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->b(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    return-void
.end method
