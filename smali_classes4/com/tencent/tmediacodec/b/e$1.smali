.class final Lcom/tencent/tmediacodec/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmediacodec/hook/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmediacodec/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tmediacodec/b/e;


# direct methods
.method constructor <init>(Lcom/tencent/tmediacodec/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e$1;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e$1;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v0}, Lcom/tencent/tmediacodec/b/e;->a(Lcom/tencent/tmediacodec/b/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e$1;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v0}, Lcom/tencent/tmediacodec/b/e;->b(Lcom/tencent/tmediacodec/b/e;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e$1;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v0}, Lcom/tencent/tmediacodec/b/e;->c(Lcom/tencent/tmediacodec/b/e;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/tmediacodec/b/e$1;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "      surfaceDestroyed ... surfaceTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "     mStoreToRelease.size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/tencent/tmediacodec/b/e$1;->a:Lcom/tencent/tmediacodec/b/e;

    .line 4
    invoke-static {p1}, Lcom/tencent/tmediacodec/b/e;->b(Lcom/tencent/tmediacodec/b/e;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
